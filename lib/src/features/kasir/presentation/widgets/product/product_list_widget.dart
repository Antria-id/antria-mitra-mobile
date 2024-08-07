import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/product/card_product_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:flutter/material.dart';

class ProductListWidget extends StatelessWidget {
  final List<ProductModel> productList;
  final VoidCallback onBuyButtonPressed;
  const ProductListWidget(
      {super.key, required this.productList, required this.onBuyButtonPressed});

  @override
  Widget build(BuildContext context) {
    if (productList.isEmpty) {
      return const Center(
        child: EmptyDataWidget(
          text: 'Data tidak ditemukan',
        ),
      );
    }
    return SizedBox(
      child: GridView.builder(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 80,
          top: 20,
        ),
        addAutomaticKeepAlives: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              (MediaQuery.of(context).orientation == Orientation.landscape)
                  ? 4
                  : 2,
          crossAxisSpacing: 14.0,
          mainAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final product = productList[index];
          return CardProductWidget(
            image: '${APIUrl.baseUrl}${APIUrl.imagePath}${product.gambar}',
            productName: product.namaProduk ?? '',
            productPrice: product.harga ?? 0,
            onPressed: onBuyButtonPressed,
            stock: product.kuantitas ?? 0,
            productId: product.id!,
            productDesc: product.deskripsiProduk!,
          );
        },
      ),
    );
  }
}
