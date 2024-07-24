import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/user/user_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/list_pemesanan_type_widget.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/pesanan/list_pesanan_widget.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/sucess_payment_dialog.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/informasi_usaha/informasi_usaha_bloc.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class PemesananPage extends StatefulWidget {
  const PemesananPage({super.key});

  @override
  State<PemesananPage> createState() => _PemesananPageState();
}

class _PemesananPageState extends State<PemesananPage> {
  int biayaLayanan = 1000;
  bool isSelectedDineIn = true;
  bool isSelectedTakeaway = false;
  String pemesananType = 'Dine In';

  void showBottomSheet() {
    int initialSelectedIndex = isSelectedDineIn ? 0 : 1;

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.44,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 30,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppColor.dividerColor,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  'Pilih Tipe Pemesanan',
                  style: AppTextStyle.largeBlack.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListPemesananTypeWidget(
                onPemesananType: (selectedType) {
                  setState(() {
                    isSelectedDineIn = selectedType['isDineIn']!;
                    isSelectedTakeaway = selectedType['isTakeAway']!;
                    pemesananType =
                        selectedType['isDineIn']! ? 'Dine In' : 'Take Away';
                  });
                },
                initialSelectedIndex: initialSelectedIndex,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
        title: Text(
          'Pesanan',
          style: AppTextStyle.xxxlargeBlack.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) =>
              OrderListBloc()..add(GetProductsInOrderListEvent()),
          child: Column(
            children: [
              const ListPesananWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: BlocBuilder<OrderListBloc, OrderListState>(
                  builder: (context, state) {
                    if (state is OrderListLoading) {
                      return Container();
                    } else if (state is OrderListLoaded) {
                      int totalitemPrice = 0;
                      final products = state.products;

                      for (var product in products) {
                        int quantity = product['quantity'] ?? 0;
                        int harga = product['harga'] ?? 0;

                        totalitemPrice += quantity * harga;
                      }
                      String formattedPrice = NumberFormat.currency(
                        locale: 'id_ID',
                        symbol: 'Rp ',
                        decimalDigits: 0,
                      ).format(totalitemPrice);

                      int totalBiaya = totalitemPrice + biayaLayanan;
                      String formattedTotalBiaya = NumberFormat.currency(
                        locale: 'id_ID',
                        symbol: 'Rp ',
                        decimalDigits: 0,
                      ).format(totalBiaya);

                      String formattedBiayaLayanan = NumberFormat.currency(
                        locale: 'id_ID',
                        symbol: 'Rp ',
                        decimalDigits: 0,
                      ).format(biayaLayanan);

                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Harga Item',
                                style: AppTextStyle.mediumBlack,
                              ),
                              Text(
                                formattedPrice,
                                style: AppTextStyle.mediumBlack.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Biaya Layanan',
                                style: AppTextStyle.mediumBlack,
                              ),
                              Text(
                                formattedBiayaLayanan,
                                style: AppTextStyle.mediumBlack.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            thickness: 0.5,
                            color: AppColor.dividerColor,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Harga total',
                                style: AppTextStyle.xxlargeBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                formattedTotalBiaya,
                                style: AppTextStyle.xxlargeBlack.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border: Border.all(
                                width: 1,
                                color: AppColor.greyColor,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 24,
                                    child: Image.asset(
                                      isSelectedDineIn
                                          ? 'assets/icons/dinein.png'
                                          : 'assets/icons/takeaway.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Text(
                                    pemesananType,
                                    style: AppTextStyle.largeBlack.copyWith(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: showBottomSheet,
                                    child: Text(
                                      'Ubah',
                                      style: AppTextStyle.largeWhite.copyWith(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UserBloc()..add(UserFetchData()),
          ),
          BlocProvider(
            create: (context) =>
                InformasiUsahaBloc()..add(InformasiUsahaFetchData()),
          ),
        ],
        child: BlocListener<OrderListBloc, OrderListState>(
          listener: (context, state) {
            if (state is AddPesanan) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SuccessPayment(
                    invoice: state.invoice,
                  );
                },
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: BlocBuilder<InformasiUsahaBloc, InformasiUsahaState>(
              builder: (context, state) {
                if (state is InformasiUsahaLoaded) {
                  final namaToko = state.responseModel.namaToko!
                      .substring(0, 2)
                      .toUpperCase();
                  return BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      if (state is UserLoaded) {
                        final mitraId = state.user.mitraId;
                        return CustomButtonWidget(
                          backgroundColor: AppColor.primaryColor,
                          circularButton: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          size: const Size(double.infinity, 50),
                          child: Text(
                            'Bayar',
                            style: AppTextStyle.mediumWhite.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            String pemesanan = isSelectedDineIn ? 'DI0' : 'TA0';
                            int timestamp =
                                DateTime.now().millisecondsSinceEpoch ~/ 1000;

                            String invoice =
                                'INVC$namaToko$mitraId$pemesanan$timestamp';

                            context.read<OrderListBloc>().add(
                                  AddPesananEvent(
                                    invoice: invoice,
                                    payment: 'CASH',
                                    pemesanan: 'OFFLINE',
                                    takeaway: isSelectedTakeaway,
                                    mitraId: mitraId,
                                  ),
                                );
                          },
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
