import 'package:antria_mitra_mobile/src/features/chat/presentation/widgets/pelanggan_chat_widget.dart';
import 'package:antria_mitra_mobile/src/features/chat/presentation/widgets/text_chat_widget.dart';
import 'package:antria_mitra_mobile/src/features/chat/presentation/widgets/user_chat_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 28,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: IconButton(
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
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: AppColor.primaryColor,
              backgroundImage: AssetImage(
                'assets/icons/user-empty.png',
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer#1234',
                  style: AppTextStyle.largeWhite.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                const Text('08666666666', style: AppTextStyle.mediumWhite),
                const SizedBox(
                  height: 4,
                ),
              ],
            )
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppColor.gradientTopColor,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            PelangganChatWidget(
              name: 'Customer#1234',
              text: 'Halo apakah pesanan saya sudah siap?',
              time: '29m',
            ),
            UserChatWidget(
              name: 'Anda',
              text: 'Halo, ditunggu sebentar lagi ya kak',
              time: '29m',
            ),
            PelangganChatWidget(
              name: 'Customer#1234',
              text: 'Oke kalau begitu',
              time: '29m',
            ),
            UserChatWidget(
              name: 'Anda',
              text: 'Baik terimakasih atas pengertiannya',
              time: '29m',
            ),
          ],
        ),
      ),
      bottomNavigationBar: const TextChatWidget(),
    );
  }
}
