import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/kasir/data/models/product_model.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/product/card_product_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:flutter/material.dart';

class ProductListWidget extends StatelessWidget {
  final List<ProductModel> productList;
  final VoidCallback onBuyButtonPressed;

  const ProductListWidget({
    super.key,
    required this.productList,
    required this.onBuyButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Adjust crossAxisCount based on screen width
    int crossAxisCount = 2;
    if (screenWidth > 1200) {
      crossAxisCount = 4; // More columns for larger screens
    } else if (screenWidth > 800) {
      crossAxisCount = 3; // Medium screens
    }

    // Adjust childAspectRatio based on screen width
    double childAspectRatio = 0.75;
    if (screenWidth > 1200) {
      childAspectRatio = 0.7; // More compact on larger screens
    }

    if (productList.isEmpty) {
      return const Center(
        child: EmptyDataWidget(
          text: 'Data tidak ditemukan',
        ),
      );
    }

    return SizedBox(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        addAutomaticKeepAlives: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 14.0,
          mainAxisSpacing: 20,
          childAspectRatio: childAspectRatio,
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
