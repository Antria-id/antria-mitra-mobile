import 'package:antria_mitra_mobile/src/features/auth/data/models/request/register/register_request_model.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/bloc/register/register_bloc.dart';
import 'package:antria_mitra_mobile/src/features/auth/presentation/widgets/password_textfield_widget.dart';
import 'package:antria_mitra_mobile/src/shared/textfield_widget.dart';
import 'package:antria_mitra_mobile/src/shared/toast.dart';
import 'package:antria_mitra_mobile/src/shared/validator.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController namaTokoController = TextEditingController();
  final TextEditingController deskripsiTokoController = TextEditingController();
  final TextEditingController alamatTokoController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController nomorHpController = TextEditingController();
  late String namaToko;
  late String deskripsiToko;
  late String alamatToko;
  late String email;
  late String name;
  late String password;
  late String username;
  late String nomorHp;
  late String alamat;
  ValidatorForm validatorForm = ValidatorForm();
  bool isVisible = true;
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          isVisible = false;
        });
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          isVisible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          leadingWidth: 24,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColor.whiteColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
            iconSize: 20,
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: AppColor.gradientTopColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
            ),
          ),
          title: Text(
            'Pendaftaran Mitra',
            style: AppTextStyle.xlargeWhite.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daftarkan usaha serta kepemilikan usaha anda dengan mengisi data dibawah ini untuk pendaftaran Antria Mitra.',
                    style: AppTextStyle.xSmallWhite.copyWith(
                      height: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: AppColor.whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 14,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Data Usaha',
                              style: AppTextStyle.largeBlack.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                TextFieldWidget(
                                  onChanged: (value) {
                                    namaToko = value.trim();
                                  },
                                  hintText: 'Masukan nama toko',
                                  validator: validatorForm.validateNameToko,
                                  controller: namaTokoController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFieldWidget(
                                  onChanged: (value) {
                                    deskripsiToko = value.trim();
                                  },
                                  hintText: 'Masukan deskripsi toko',
                                  validator:
                                      validatorForm.validateDeskripsiToko,
                                  controller: deskripsiTokoController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFieldWidget(
                                  onChanged: (value) {
                                    alamatToko = value.trim();
                                  },
                                  hintText: 'Masukan alamat toko',
                                  validator: validatorForm.validateAlamatToko,
                                  controller: alamatTokoController,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: AppColor.whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 14,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Data Kepemilikan',
                              style: AppTextStyle.largeBlack.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                TextFieldWidget(
                                  onChanged: (value) {
                                    email = value.trim();
                                  },
                                  hintText: 'Masukan Email',
                                  validator: validatorForm.validateEmail,
                                  controller: emailController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFieldWidget(
                                  onChanged: (value) {
                                    username = value.trim();
                                  },
                                  hintText: 'Masukan Username',
                                  validator: validatorForm.validateUsername,
                                  controller: usernameController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFieldWidget(
                                  onChanged: (value) {
                                    name = value.trim();
                                  },
                                  hintText: 'Masukan Nama',
                                  validator: validatorForm.validateName,
                                  controller: nameController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFieldWidget(
                                  onChanged: (value) {
                                    nomorHp = value.trim();
                                  },
                                  hintText: 'Masukan Nomor Handphone',
                                  type: TextInputType.phone,
                                  validator: validatorForm.validatePhone,
                                  controller: nomorHpController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFieldWidget(
                                  onChanged: (value) {
                                    alamat = value.trim();
                                  },
                                  hintText: 'Masukan Alamat',
                                  validator: validatorForm.validateAlamat,
                                  controller: alamatController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                PasswordFieldWidget(
                                  onChanged: (value) {
                                    password = value.trim();
                                  },
                                  hintText: 'Masukkan Password',
                                  validator: validatorForm.validatePassword,
                                  controller: passwordController,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: isVisible ? 80.0 : 0.0,
          child: isVisible
              ? Material(
                  elevation: 5.0,
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                    ),
                    child: BlocConsumer<RegisterBloc, RegisterState>(
                      listener: (context, state) {
                        if (state is RegisterSuccess) {
                          showToastSuccessMessage('Register Berhasil');
                          Navigator.pushNamed(context, '/login');
                        }
                        if (state is RegisterFailed) {
                          showToastFailedMessage('Register Gagal');
                        }
                      },
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 16,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                context.read<RegisterBloc>().add(
                                      RegisterButtonTapped(
                                        request: RegisterRequest(
                                          mitraData: MitraData(
                                            namaToko: namaTokoController.text,
                                            deskripsiToko:
                                                deskripsiTokoController.text,
                                            alamat: alamatTokoController.text,
                                            jamBuka: '',
                                            jamTutup: '',
                                            hariBuka: '',
                                          ),
                                          karyawanData: KaryawanData(
                                            email: emailController.text,
                                            username: usernameController.text,
                                            nama: nameController.text,
                                            password: passwordController.text,
                                            handphone: nomorHpController.text,
                                            alamat: alamatController.text,
                                            profilePicture: '',
                                            isOwner: true,
                                            profilePicture: '',
                                          ),
                                        ),
                                      ),
                                    );
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 47,
                              decoration: BoxDecoration(
                                gradient: AppColor.gradientTopColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Daftar',
                                style: AppTextStyle.largeWhite,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
