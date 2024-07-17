import 'dart:convert';

OfflinePesananModel orderListModelFromJson(String str) =>
    OfflinePesananModel.fromJson(json.decode(str));

String orderListModelToJson(OfflinePesananModel data) =>
    json.encode(data.toJson());

class OfflinePesananModel {
  final PesananData pesananData;
  final List<OrderList> orderLists;

  OfflinePesananModel({
    required this.pesananData,
    required this.orderLists,
  });

  OfflinePesananModel copyWith({
    PesananData? pesananData,
    List<OrderList>? orderLists,
  }) =>
      OfflinePesananModel(
        pesananData: pesananData ?? this.pesananData,
        orderLists: orderLists ?? this.orderLists,
      );

  factory OfflinePesananModel.fromJson(Map<String, dynamic> json) =>
      OfflinePesananModel(
        pesananData: PesananData.fromJson(json["pesananData"]),
        orderLists: List<OrderList>.from(
            json["orderLists"].map((x) => OrderList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pesananData": pesananData.toJson(),
        "orderLists": List<dynamic>.from(orderLists.map((x) => x.toJson())),
      };
}

class OrderList {
  final int quantity;
  final int produkId;

  OrderList({
    required this.quantity,
    required this.produkId,
  });

  OrderList copyWith({
    int? quantity,
    int? produkId,
  }) =>
      OrderList(
        quantity: quantity ?? this.quantity,
        produkId: produkId ?? this.produkId,
      );

  factory OrderList.fromJson(Map<String, dynamic> json) => OrderList(
        quantity: json["quantity"],
        produkId: json["produkId"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity,
        "produkId": produkId,
      };
}

class PesananData {
  final String payment;
  final String status;
  final String pemesanan;
  final bool takeaway;
  final int pelangganId;
  final int mitraId;

  PesananData({
    required this.payment,
    required this.status,
    required this.pemesanan,
    required this.takeaway,
    required this.pelangganId,
    required this.mitraId,
  });

  PesananData copyWith({
    String? payment,
    String? status,
    String? pemesanan,
    bool? takeaway,
    int? pelangganId,
    int? mitraId,
  }) =>
      PesananData(
        payment: payment ?? this.payment,
        status: status ?? this.status,
        pemesanan: pemesanan ?? this.pemesanan,
        takeaway: takeaway ?? this.takeaway,
        pelangganId: pelangganId ?? this.pelangganId,
        mitraId: mitraId ?? this.mitraId,
      );

  factory PesananData.fromJson(Map<String, dynamic> json) => PesananData(
        payment: json["payment"],
        status: json["status"],
        pemesanan: json["pemesanan"],
        takeaway: json["takeaway"],
        pelangganId: json["pelangganId"],
        mitraId: json["mitraId"],
      );

  Map<String, dynamic> toJson() => {
        "payment": payment,
        "status": status,
        "pemesanan": pemesanan,
        "takeaway": takeaway,
        "pelangganId": pelangganId,
        "mitraId": mitraId,
      };
}
