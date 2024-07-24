import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/bloc/orderlist/order_list_bloc.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/pesanan/pesanan_card_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';

class ListPesananWidget extends StatefulWidget {
  const ListPesananWidget({super.key});

  @override
  State<ListPesananWidget> createState() => _ListPesananWidgetState();
}

class _ListPesananWidgetState extends State<ListPesananWidget> {
  late TextEditingController notesController;

  @override
  void initState() {
    super.initState();
    notesController = TextEditingController();
  }

  @override
  void dispose() {
    notesController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    context.read<OrderListBloc>().add(GetProductsInOrderListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderListBloc, OrderListState>(
      builder: (context, state) {
        if (state is OrderListLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is OrderListLoaded) {
          return RefreshIndicator(
            onRefresh: _onRefresh,
            child: SizedBox(
              height: 280,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final cart = state.products[index];
                  return PesananCardWidget(
                    image:
                        '${APIUrl.baseUrl}${APIUrl.imagePath}${cart['gambar']}',
                    label: cart['nama_produk'],
                    price: cart['harga'],
                    kuantitas: cart['quantity'],
                    id: cart['id'],
                    note: cart['note'],
                    onTap: () {
                      int id = cart['id'];
                      notesController.text = cart['note'] ?? '';
                      showModalBottomSheet(
                        backgroundColor: AppColor.whiteColor,
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        builder: (BuildContext context) {
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 20,
                                      ),
                                      child: Text(
                                        'Tambah Catatan',
                                        style: AppTextStyle.largeBlack.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextFormField(
                                      controller: notesController,
                                      maxLength: 100,
                                      decoration: const InputDecoration(
                                        hintText:
                                            'Contoh: Jangan pakai lalapan ya!',
                                        hintStyle: AppTextStyle.smallGrey,
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      maxLines: 4,
                                      style: AppTextStyle.mediumBlack,
                                    ),
                                    const SizedBox(height: 20),
                                    Center(
                                      child: CustomButtonWidget(
                                        backgroundColor: AppColor.primaryColor,
                                        circularButton: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        size: const Size(370, 50),
                                        child: const Text(
                                          'Simpan',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          context.read<OrderListBloc>().add(
                                                AddNoteEvent(
                                                  id: id,
                                                  note: notesController.text
                                                      .trim(),
                                                ),
                                              );
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 20);
                },
              ),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
