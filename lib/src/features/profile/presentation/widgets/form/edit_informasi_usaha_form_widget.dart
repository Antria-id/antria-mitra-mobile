import 'dart:io';
import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_usaha_request.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/update_informasi_usaha/update_usaha_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/informasi_usaha/informasi_usaha_bloc.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_button_widget.dart';
import 'package:antria_mitra_mobile/src/shared/empty_data_widget.dart';
import 'package:antria_mitra_mobile/src/shared/select_image.dart';
import 'package:antria_mitra_mobile/src/shared/textfield_widget.dart';
import 'package:antria_mitra_mobile/src/shared/validator.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditInformasiUsahaFormWidget extends StatefulWidget {
  const EditInformasiUsahaFormWidget({super.key});

  @override
  State<EditInformasiUsahaFormWidget> createState() =>
      _EditInformasiUsahaFormWidgetState();
}

class _EditInformasiUsahaFormWidgetState
    extends State<EditInformasiUsahaFormWidget> {
  final formKey = GlobalKey<FormState>();
  File? selectedImage;
  String namaToko = '';
  String deskripsiToko = '';
  String alamatToko = '';
  // String linkMaps = '';
  ValidatorForm validatorForm = ValidatorForm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'Informasi Usaha',
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: BlocBuilder<InformasiUsahaBloc, InformasiUsahaState>(
        builder: (context, state) {
          if (state is InformasiUsahaStateErrorState) {
            return const Center(
              child: EmptyDataWidget(),
            );
          } else if (state is InformasiUsahaStateLoadedState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  (selectedImage == null &&
                          state.responseModel.gambarToko.isNotEmpty)
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            '${APIUrl.baseUrl}${APIUrl.imagePath}${state.responseModel.gambarToko}',
                            width: 240,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        )
                      : (selectedImage != null)
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                selectedImage!,
                                width: 240,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Container(
                              width: 240,
                              height: 130,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(
                                  0xffD9D9D9,
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    backgroundColor: AppColor.whiteColor,
                                    context: context,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10),
                                      ),
                                    ),
                                    builder: (context) {
                                      return FractionallySizedBox(
                                        heightFactor: 0.34,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () async {
                                                  final path =
                                                      await selectImageFromGallery();
                                                  if (path != null) {
                                                    setState(() {
                                                      selectedImage =
                                                          File(path);
                                                      Navigator.pop(context);
                                                    });
                                                  }
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 12,
                                                      horizontal: 20),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        AppColor.greyColor[300],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: const Row(
                                                    children: [
                                                      Icon(Icons.photo_library),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        'Pilih dari Galeri',
                                                        style: AppTextStyle
                                                            .mediumBlack,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 20),
                                              GestureDetector(
                                                onTap: () async {
                                                  final path =
                                                      await selectImageFromCamera();
                                                  if (path != null) {
                                                    setState(() {
                                                      selectedImage =
                                                          File(path);
                                                      Navigator.pop(context);
                                                    });
                                                  }
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 12,
                                                    horizontal: 20,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        AppColor.greyColor[300],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: const Row(
                                                    children: [
                                                      Icon(Icons.camera_alt),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        'Ambil Foto',
                                                        style: AppTextStyle
                                                            .mediumBlack,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/upload.png',
                                    width: 100,
                                    height: 77,
                                  ),
                                ),
                              ),
                            ),
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama Toko',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldWidget(
                            initialValue: state.responseModel.namaToko,
                            onChanged: (value) {
                              namaToko = value.trim();
                            },
                            hintText: 'Nama Toko',
                            validator: validatorForm.validateNameToko,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Deskripsi Toko',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldWidget(
                            initialValue: state.responseModel.deskripsiToko,
                            onChanged: (value) {
                              deskripsiToko = value.trim();
                            },
                            hintText: 'Deskripsi Toko',
                            validator: validatorForm.validateDeskripsiToko,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Alamat Toko',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldWidget(
                            initialValue: state.responseModel.alamat,
                            onChanged: (value) {
                              alamatToko = value.trim();
                            },
                            hintText: 'Alamat Toko',
                            validator: validatorForm.validateAlamatToko,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // Text(
                          //   'Link Google Maps',
                          //   style: AppTextStyle.mediumBlack.copyWith(
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 8,
                          // ),
                          // TextFieldWidget(
                          //   onChanged: (value) {
                          //     linkMaps = value.trim();
                          //   },
                          //   hintText: 'Link Google Maps',
                          //   // validator: validatorForm.validateLink,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<InformasiUsahaBloc, InformasiUsahaState>(
        builder: (context, state) {
          if (state is InformasiUsahaStateErrorState) {
            return const SizedBox.shrink();
          } else {
            return BlocConsumer<UpdateUsahaBloc, UpdateUsahaState>(
              listener: (context, state) {
                if (state is UpdateUsahaLoadingState) {
                  const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
              builder: (context, state) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: CustomButtonWidget(
                    circularButton: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColor.primaryColor,
                    size: const Size(double.infinity, 46),
                    child: const Text(
                      'Simpan Perubahan',
                      style: AppTextStyle.largeWhite,
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        final currentState =
                            context.read<InformasiUsahaBloc>().state;
                        if (currentState is InformasiUsahaStateLoadedState) {
                          final existingModel = currentState.responseModel;
                          bool isImageUpdated = selectedImage != null;
                          bool isTextFieldsUpdated = namaToko.isNotEmpty ||
                              deskripsiToko.isNotEmpty ||
                              alamatToko.isNotEmpty;

                          if (isImageUpdated && !isTextFieldsUpdated) {
                            final updateEvent = UpdateUsahaEvent.onUpdateTapped(
                              requestUser: UpdateUsahaRequestModel(
                                gambarToko: selectedImage!.path,
                                namaToko: existingModel.namaToko,
                                deskripsiToko: existingModel.deskripsiToko,
                                alamat: existingModel.alamat,
                              ),
                            );
                            context.read<UpdateUsahaBloc>().add(updateEvent);
                          } else if (!isImageUpdated && isTextFieldsUpdated) {
                            final updateEvent = UpdateUsahaEvent.onUpdateTapped(
                              requestUser: UpdateUsahaRequestModel(
                                namaToko: namaToko.isNotEmpty
                                    ? namaToko
                                    : existingModel.namaToko,
                                deskripsiToko: deskripsiToko.isNotEmpty
                                    ? deskripsiToko
                                    : existingModel.deskripsiToko,
                                alamat: alamatToko.isNotEmpty
                                    ? alamatToko
                                    : existingModel.alamat,
                              ),
                            );
                            context.read<UpdateUsahaBloc>().add(updateEvent);
                          } else if (isImageUpdated && isTextFieldsUpdated) {
                            final updateEvent = UpdateUsahaEvent.onUpdateTapped(
                              requestUser: UpdateUsahaRequestModel(
                                gambarToko: selectedImage!.path,
                                namaToko: namaToko.isNotEmpty
                                    ? namaToko
                                    : existingModel.namaToko,
                                deskripsiToko: deskripsiToko.isNotEmpty
                                    ? deskripsiToko
                                    : existingModel.deskripsiToko,
                                alamat: alamatToko.isNotEmpty
                                    ? alamatToko
                                    : existingModel.alamat,
                              ),
                            );
                            context.read<UpdateUsahaBloc>().add(updateEvent);
                          }
                        }
                      }
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
