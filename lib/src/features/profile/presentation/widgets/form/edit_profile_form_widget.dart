import 'dart:io';

import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/request/update_karyawan_request_model.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/karyawan_profile/karyawan_profile_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/update_profile/update_profile_bloc.dart';
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

class EditProfileFormWidget extends StatefulWidget {
  const EditProfileFormWidget({super.key});

  @override
  State<EditProfileFormWidget> createState() => _EditProfileFormWidgetState();
}

class _EditProfileFormWidgetState extends State<EditProfileFormWidget> {
  final formKey = GlobalKey<FormState>();
  File? selectedImage;
  String email = '';
  String username = '';
  String name = '';
  String phone = '';
  String address = '';
  ValidatorForm validatorForm = ValidatorForm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'Edit Profile',
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
      body: BlocBuilder<KaryawanProfileBloc, KaryawanProfileState>(
        builder: (context, state) {
          if (state is KaryawanProfileError) {
            return const Center(
              child: EmptyDataWidget(
                text: 'Data tidak ditemukan',
              ),
            );
          } else if (state is KaryawanProfileLoaded) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: AppColor.primaryColor,
                        backgroundImage: (selectedImage == null &&
                                state.karyawanModel.profilePicture.isNotEmpty)
                            ? NetworkImage(
                                '${APIUrl.baseUrl}${APIUrl.imagePath}${state.karyawanModel.profilePicture}',
                              )
                            : (selectedImage != null)
                                ? FileImage(selectedImage!)
                                : const AssetImage(
                                    'assets/icons/user-empty.png',
                                  ) as ImageProvider,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: AppColor.whiteColor,
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (context) {
                              return FractionallySizedBox(
                                heightFactor: 0.38,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      GestureDetector(
                                        onTap: () async {
                                          final path =
                                              await selectImageFromGallery();
                                          if (path != null) {
                                            setState(() {
                                              selectedImage = File(path);
                                              Navigator.pop(context);
                                            });
                                          }
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 20),
                                          decoration: BoxDecoration(
                                            color: AppColor.dividerColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: const Row(
                                            children: [
                                              Icon(Icons.photo_library),
                                              SizedBox(width: 10),
                                              Text(
                                                'Pilih dari Galeri',
                                                style: AppTextStyle.mediumBlack,
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
                                              selectedImage = File(path);
                                              Navigator.pop(context);
                                            });
                                          }
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 12,
                                            horizontal: 20,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColor.dividerColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: const Row(
                                            children: [
                                              Icon(Icons.camera_alt),
                                              SizedBox(width: 10),
                                              Text(
                                                'Ambil Foto',
                                                style: AppTextStyle.mediumBlack,
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
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColor.whiteColor,
                          child: Icon(
                            Icons.edit,
                            color: AppColor.blackColor,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${state.karyawanModel.username}',
                    style: AppTextStyle.xlargeBlack.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '${state.karyawanModel.email}',
                    style: AppTextStyle.smallGrey,
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
                            'Email',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldWidget(
                            initialValue: state.karyawanModel.email,
                            onChanged: (value) {
                              email = value.trim();
                            },
                            hintText: 'Email',
                            validator: validatorForm.validateEmail,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Username',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldWidget(
                            onChanged: (value) {
                              username = value.trim();
                            },
                            initialValue: state.karyawanModel.username,
                            hintText: 'Username',
                            validator: validatorForm.validateUsername,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Nama Lengkap',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldWidget(
                            onChanged: (value) {
                              name = value.trim();
                            },
                            initialValue: state.karyawanModel.nama,
                            hintText: 'Nama',
                            validator: validatorForm.validateName,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Nomor Handphone',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldWidget(
                            initialValue: state.karyawanModel.handphone,
                            onChanged: (value) {
                              phone = value.trim();
                            },
                            type: TextInputType.phone,
                            hintText: 'Nomor Telepon',
                            validator: validatorForm.validatePhone,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Alamat',
                            style: AppTextStyle.mediumBlack.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldWidget(
                            initialValue: state.karyawanModel.alamat,
                            onChanged: (value) {
                              address = value.trim();
                            },
                            hintText: 'Alamat',
                            validator: validatorForm.validateAlamat,
                          ),
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
      bottomNavigationBar:
          BlocBuilder<KaryawanProfileBloc, KaryawanProfileState>(
        builder: (context, state) {
          if (state is KaryawanProfileError) {
            return const SizedBox.shrink();
          } else {
            return BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
              listener: (context, state) {
                if (state is UpdateProfileLoading) {
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
                            context.read<KaryawanProfileBloc>().state;
                        if (currentState is KaryawanProfileLoaded) {
                          final existingModel = currentState.karyawanModel;
                          bool isImageUpdated = selectedImage != null;
                          bool isTextFieldsUpdated = email.isNotEmpty ||
                              username.isNotEmpty ||
                              name.isNotEmpty ||
                              phone.isNotEmpty ||
                              address.isNotEmpty;

                          if (isImageUpdated && !isTextFieldsUpdated) {
                            final updateEvent = UpdateProfileTapped(
                              requestUser: UpdateKaryawanRequestModel(
                                profilePicture: selectedImage!.path,
                                email: existingModel.email,
                                username: existingModel.username,
                                nama: existingModel.nama,
                                handphone: existingModel.handphone,
                                alamat: existingModel.alamat,
                              ),
                            );
                            context.read<UpdateProfileBloc>().add(updateEvent);
                          } else if (!isImageUpdated && isTextFieldsUpdated) {
                            final updateEvent = UpdateProfileTapped(
                              requestUser: UpdateKaryawanRequestModel(
                                email: email.isNotEmpty
                                    ? email
                                    : existingModel.email,
                                username: username.isNotEmpty
                                    ? username
                                    : existingModel.username,
                                nama:
                                    name.isNotEmpty ? name : existingModel.nama,
                                handphone: phone.isNotEmpty
                                    ? phone
                                    : existingModel.handphone,
                                alamat: address.isNotEmpty
                                    ? address
                                    : existingModel.alamat,
                              ),
                            );
                            context.read<UpdateProfileBloc>().add(updateEvent);
                          } else if (isImageUpdated && isTextFieldsUpdated) {
                            final updateEvent = UpdateProfileTapped(
                              requestUser: UpdateKaryawanRequestModel(
                                profilePicture: selectedImage!.path,
                                email: email.isNotEmpty
                                    ? email
                                    : existingModel.email,
                                username: username.isNotEmpty
                                    ? username
                                    : existingModel.username,
                                nama:
                                    name.isNotEmpty ? name : existingModel.nama,
                                handphone: phone.isNotEmpty
                                    ? phone
                                    : existingModel.handphone,
                                alamat: address.isNotEmpty
                                    ? address
                                    : existingModel.alamat,
                              ),
                            );
                            context.read<UpdateProfileBloc>().add(updateEvent);
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
