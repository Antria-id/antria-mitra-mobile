import 'package:antria_mitra_mobile/src/features/chat/presentation/widgets/card_chat_widget.dart';
import 'package:flutter/material.dart';

class ChatListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> chatList = [
    {
      'nama': 'Zengzeng',
      'image': 'https://i.postimg.cc/nLq2tk6y/IMG-2585-1.png',
      'message': 'Halo apakah pesanan saya sudah siap?',
      'count_chat': '1',
    },
  ];

  ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        bottom: 70,
      ),
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chat = chatList[index];
        return CardChatWidget(
          nama: chat['nama'],
          message: chat['message'],
          image: chat['image'],
          countChat: chat['count_chat'],
          onTap: () {
            Navigator.pushNamed(context, '/chat');
          },
        );
      },
    );
  }
}
