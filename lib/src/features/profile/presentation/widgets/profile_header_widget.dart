import 'package:antria_mitra_mobile/src/core/utils/constant.dart';
import 'package:antria_mitra_mobile/src/features/home/presentation/bloc/user/user_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/bloc/update_profile/update_profile_bloc.dart';
import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/button/web_management_button_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(26),
              bottomRight: Radius.circular(26),
            ),
            gradient: AppColor.gradientTopColor,
          ),
          child: SafeArea(
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is UserError) {
                  return Center(
                    child: Text('Failed Fetch Data'),
                  );
                } else if (state is UserLoaded) {
                  final profileData = state.user;
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Profile',
                              style: AppTextStyle.xlargeWhite.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      profileData.profilePicture.isNotEmpty
                                          ? NetworkImage(
                                              '${APIUrl.baseUrl}${APIUrl.imagePath}${profileData.profilePicture}',
                                            )
                                          : const NetworkImage(
                                              'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg',
                                            ),
                                ),
                                InkWell(
                                  onTap: () => Navigator.pushNamed(
                                    context,
                                    '/edit-profile',
                                  ),
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
                              height: 12,
                            ),
                            Text(
                              profileData.username,
                              style: AppTextStyle.largeWhite.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              profileData.email,
                              style: AppTextStyle.largeWhite,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else if (state is UserLocalLoaded) {
                  final profileData = state.user;
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 14,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Profile',
                              style: AppTextStyle.xlargeWhite.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      profileData.picture!.isNotEmpty
                                          ? NetworkImage(
                                              '${APIUrl.baseUrl}${APIUrl.imagePath}${profileData.picture}',
                                            )
                                          : const NetworkImage(
                                              'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg',
                                            ),
                                ),
                                InkWell(
                                  onTap: () => Navigator.pushNamed(
                                    context,
                                    '/edit-profile',
                                  ),
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
                              height: 12,
                            ),
                            Text(
                              profileData.username!,
                              style: AppTextStyle.largeWhite.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              profileData.email!,
                              style: AppTextStyle.largeWhite,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ),
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
                  return const DashboardManagementWidget();
                }
              }
              return const SizedBox();
            },
          ),
        ),
      ],
    );
  }
}
