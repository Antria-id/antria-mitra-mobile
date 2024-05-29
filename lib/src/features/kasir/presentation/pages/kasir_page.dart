import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/product/product_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/cart_widget.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/product/product_list_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KasirPage extends StatefulWidget {
  const KasirPage({super.key});

  @override
  State<KasirPage> createState() => _KasirPageState();
}

class _KasirPageState extends State<KasirPage> {
  bool showCart = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc()
        ..add(
          const ProductFetchDataEvent(),
        ),
      child: Scaffold(
        appBar: CustomAppBarWidget(
          title: 'Kasir',
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: AppColor.backgroundColor,
        body: Stack(
          children: [
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductErrorState) {
                  return const Center(
                    child: EmptyDataWidget(),
                  );
                } else if (state is ProductLoadedState) {
                  return ProductListWidget(
                    productList: state.product,
                    onBuyButtonPressed: () {
                      setState(() {
                        showCart = true;
                      });
                    },
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            if (showCart)
              const Align(
                alignment: Alignment.bottomCenter,
                child: CartWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
