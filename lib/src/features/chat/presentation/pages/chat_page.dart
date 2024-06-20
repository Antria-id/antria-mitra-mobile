import 'package:antria_mitra_mobile/src/features/chat/presentation/widgets/pelanggan_chat_widget.dart';
import 'package:antria_mitra_mobile/src/features/chat/presentation/widgets/text_chat_widget.dart';
import 'package:antria_mitra_mobile/src/features/chat/presentation/widgets/user_chat_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

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
              backgroundImage: NetworkImage(
                'https://i.postimg.cc/nLq2tk6y/IMG-2585-1.png',
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Zengzeng',
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
              name: 'Zengzeng',
              text: 'Halo apakah pesanan saya sudah siap?',
              time: '29m',
            ),
            UserChatWidget(
              name: 'Anda',
              text: 'Halo, ditunggu sebentar lagi ya kak',
              time: '29m',
            ),
            PelangganChatWidget(
              name: 'Zengzeng',
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
