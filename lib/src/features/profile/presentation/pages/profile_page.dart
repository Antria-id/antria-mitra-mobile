import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/user/user_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/update_profile/update_profile_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/button/logout_button_widget.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/button/profile_button_widget.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/profile_header_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()
        ..add(
          UserFetchData(),
        ),
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileHeaderWidget(),
              BlocListener<UpdateProfileBloc, UpdateProfileState>(
                listener: (context, state) {
                  if (state is UpdateProfileSuccess) {
                    context.read<UserBloc>().add(
                          UserFetchData(),
                        );
                  }
                },
                child: BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    if (state is UserLoaded) {
                      final owner = state.user.isOwner;
                      if (owner == false) {
                        return Container();
                      } else if (owner == true) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 26,
                            ),
                            ProfileButtonWidget(
                              icon: 'assets/icons/restoran.png',
                              text: 'Informasi Usaha',
                              onTap: () => Navigator.pushNamed(
                                context,
                                '/edit-informasi-usaha',
                              ),
                            ),
                          ],
                        );
                      }
                    }
                    return const SizedBox();
                  },
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              ProfileButtonWidget(
                icon: 'assets/icons/star.png',
                text: 'Rating & Ulasan',
                onTap: () => Navigator.pushNamed(context, '/ulasan'),
              ),
              const SizedBox(
                height: 26,
              ),
              ProfileButtonWidget(
                icon: 'assets/icons/support.png',
                text: 'Contact Support',
                onTap: () => Navigator.pushNamed(
                  context,
                  '/contact-support',
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const LogoutButtonWidget(),
              const SizedBox(
                height: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
