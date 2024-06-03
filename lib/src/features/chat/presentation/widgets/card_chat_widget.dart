import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class CardChatWidget extends StatelessWidget {
  final String nama;
  final String message;
  final String image;
  final String countChat;
  final VoidCallback? onTap;
  const CardChatWidget({
    super.key,
    required this.nama,
    required this.message,
    required this.image,
    required this.countChat,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: AppColor.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            30,
                          ),
                        ),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                          width: 60,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              'assets/icons/user-empty.png',
                              fit: BoxFit.cover,
                              width: 30,
                              color: AppColor.primaryColor,
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nama,
                            style: AppTextStyle.smallBlack,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            message,
                            style: AppTextStyle.xSmallGrey.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              backgroundColor: const Color(0xff88FFA9),
              radius: 14,
              child: Text(
                countChat.toString(),
                style: AppTextStyle.xSmallBlack.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
