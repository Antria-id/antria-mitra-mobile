import 'package:antria_mitra_mobile/src/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class UserChatWidget extends StatelessWidget {
  final String name;
  final String text;
  final String time;
  final bool isRead;

  const UserChatWidget({
    Key? key,
    required this.name,
    required this.text,
    required this.time,
    this.isRead = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            name,
            style: AppTextStyle.smallBlack,
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Color(0xff0E854C),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Text(
                      text,
                      style: AppTextStyle.smallWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (isRead)
                const Icon(
                  Icons.done_all_rounded,
                  color: Colors.blue,
                  size: 18,
                )
              else
                const Icon(
                  Icons.done,
                  color: Colors.grey,
                  size: 18,
                ),
              const SizedBox(width: 4),
              Text(
                time,
                style: AppTextStyle.smallGrey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
