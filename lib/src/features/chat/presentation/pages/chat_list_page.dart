import 'package:antria_mitra_mobile/src/features/chat/presentation/widgets/chat_list_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Chat',
      ),
      backgroundColor: AppColor.backgroundColor,
      body: ChatListWidget(),
    );
  }
}
