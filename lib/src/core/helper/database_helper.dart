import 'dart:async';
import 'dart:convert';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path/path.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'antria.db');
    return await openDatabase(path,
        password: dotenv.get('PASSWORD_DB'),
        version: 1, onCreate: (Database db, int version) async {
      await db.execute('''
            CREATE TABLE product (
              id INTEGER PRIMARY KEY,
              nama_produk TEXT,
              deskripsi_produk TEXT,
              harga INTEGER,
              gambar TEXT,
              kuantitas INTEGER,
              mitraId INTEGER,
              created_at TEXT,
              updated_at TEXT
            )
          ''');
      await db.execute('''
          CREATE TABLE orderList (
            id INTEGER PRIMARY KEY,
            product_id INTEGER,
            pesanan_id STRING,
            note STRING,
            quantity INTEGER,
            created_at DATE,
            updated_at DATE
          )
      ''');
      await db.execute('''
          CREATE TABLE pesanan (
            invoice STRING PRIMARY KEY,
            payment STRING,
            pemesanan STRING,
            takeaway BOOLEAN,
            oderList STRING,
            status STRING,
            pelanggan_id INTEGER,
            mitra_id INTEGER,
            created_at DATE,
            updated_at DATE
          )
      ''');
    });
  }

  List<int> orderId = [];

  Future<List<Map<String, dynamic>>> getAllProduct() async {
    final db = await instance.database;
    return await db.query('product');
  }

  Future<void> insertProduct(ProductModel product) async {
    final db = await instance.database;
    await db.insert(
      'product',
      product.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> addOrderList(
    int productId,
    int quantity,
    DateTime createdAt,
    DateTime updatedAt,
    String note,
  ) async {
    final db = await instance.database;

    final List<Map<String, dynamic>> existingOrders = await db.query(
      'orderList',
      where: 'product_id = ?',
      whereArgs: [productId],
    );

    if (existingOrders.isNotEmpty) {
      final int existingQuantity = existingOrders.first['quantity'];
      await db.update(
        'orderList',
        {
          'quantity': existingQuantity + quantity,
          'updated_at': updatedAt.toIso8601String(),
        },
        where: 'product_id = ?',
        whereArgs: [productId],
      );
    } else {
      int id = await db.insert(
        'orderList',
        {
          'product_id': productId,
          'quantity': quantity,
          'note': note,
          'created_at': createdAt.toIso8601String(),
          'updated_at': updatedAt.toIso8601String(),
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      orderId.add(id);
    }
  }

  Future<void> incrementOrderQuantity(int productId, int quantity) async {
    final db = await instance.database;

    final List<Map<String, dynamic>> existingOrders = await db.query(
      'orderList',
      where: 'product_id = ?',
      whereArgs: [productId],
    );

    if (existingOrders.isNotEmpty) {
      final int existingQuantity = existingOrders.first['quantity'];
      await db.update(
        'orderList',
        {
          'quantity': existingQuantity + 1,
          'updated_at': DateTime.now().toIso8601String(),
        },
        where: 'product_id = ?',
        whereArgs: [productId],
      );
    }
  }

  Future<void> decrementOrderQuantity(int productId, int quantity) async {
    final db = await instance.database;

    final List<Map<String, dynamic>> existingOrders = await db.query(
      'orderList',
      where: 'product_id = ?',
      whereArgs: [productId],
    );

    if (existingOrders.isNotEmpty) {
      final int existingQuantity = existingOrders.first['quantity'];
      final int newQuantity = existingQuantity - 1;
      if (newQuantity > 0) {
        await db.update(
          'orderList',
          {
            'quantity': newQuantity,
            'updated_at': DateTime.now().toIso8601String(),
          },
          where: 'product_id = ?',
          whereArgs: [productId],
        );
      } else {
        await db.delete(
          'orderList',
          where: 'product_id = ?',
          whereArgs: [productId],
        );
      }
    }
  }

  Future<List<Map<String, dynamic>>> getOrderList() async {
    final db = await instance.database;
    return await db.query('orderList');
  }

  Future<List<Map<String, dynamic>>> getProductsInOrderList() async {
    final Database db = await instance.database;
    final List<Map<String, dynamic>> result = await db.rawQuery('''
    SELECT product.id, product.nama_produk, product.harga, product.gambar, orderList.quantity, orderList.note
    FROM orderList
    JOIN product ON orderList.product_id = product.id
  ''');
    return result;
  }

  Future<void> insertPesanan(String invoice, String payment, String pemesanan,
      bool takeaway, int mitraId) async {
    final db = await instance.database;

    for (int id in orderId) {
      await updatePesananId(invoice, id);
    }

    final List<Map<String, dynamic>> orderList = await getOrderList();
    // String orderListJson =
    //     orderList.map((order) => order.toString()).toList().toString();

    List<Map<String, dynamic>> mappedOrderList = orderList.map((order) {
      return {
        'quantity': order['quantity'],
        'note': order['note'],
        'produkId': order['product_id'],
      };
    }).toList();

    // await db.insert(
    //   'pesanan',
    //   {
    //     'invoice': invoice,
    //     'payment': payment,
    //     'pemesanan': pemesanan,
    //     'takeaway': takeaway,
    //     'oderList': orderListJson,
    //     'status': 'SUCCESS',
    //     'pelanggan_id': 0,
    //     'mitra_id': mitraId,
    //     'created_at': DateTime.now().toIso8601String(),
    //     'updated_at': DateTime.now().toIso8601String(),
    //   },
    //   conflictAlgorithm: ConflictAlgorithm.replace,
    // );

    Map<String, dynamic> payload = {
      'pesanan': {
        'invoice': invoice,
        'payment': payment,
        'status': 'SUCCESS',
        'pemesanan': pemesanan,
        'takeaway': takeaway,
        'pelangganId': 0,
        'mitraId': mitraId,
      },
      'order_lists': mappedOrderList,
    };

    String jsonPayload = json.encode(payload);

    print('Response payload $jsonPayload');

    final Request request = serviceLocator<Request>();
    try {
      final response = await request.post(
        APIUrl.insertPesanan,
        data: jsonPayload,
      );

      if (response.statusCode == 201) {
        print('Pesanan inserted successfully');
      } else {
        print(
            'Failed to insert Pesanan. Error ${response.statusCode}: ${response.data}');
      }
    } catch (e) {
      print('Error inserting Pesanan: $e');
    }

    await db.delete(
      'orderList',
    );
  }

  Future<void> updatePesananId(String pesananId, int id) async {
    final db = await instance.database;
    await db.update(
      'orderList',
      {
        'pesanan_id': pesananId,
        'updated_at': DateTime.now().toIso8601String(),
      },
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> addNote(int productId, String note) async {
    final db = await instance.database;
    await db.update(
      'orderList',
      {
        'product_id': productId,
        'note': note,
        'updated_at': DateTime.now().toIso8601String(),
      },
      where: 'product_id = ?',
      whereArgs: [productId],
    );
  }

  Future<void> deleteTable() async {
    final db = await instance.database;
    await db.delete('product');
    await db.delete('orderList');
  }
}
