import 'dart:io';
import 'package:antria_mitra_mobile/src/shared/select_image.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';

class TextChatWidget extends StatefulWidget {
  const TextChatWidget({super.key});

  @override
  State<TextChatWidget> createState() => _TextChatWidgetState();
}

class _TextChatWidgetState extends State<TextChatWidget> {
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Transform.translate(
      offset: Offset(
        0.0,
        -1 * mediaQueryData.viewInsets.bottom,
      ),
      child: BottomAppBar(
        color: AppColor.primaryColor,
        child: Row(
          children: [
            Container(
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.whiteColor,
              ),
              child: IconButton(
                onPressed: () async {
                  final path = await selectImageFromGallery();
                  if (path != null) {
                    setState(() {
                      selectedImage = File(path);
                      Navigator.pop(context);
                    });
                  }
                },
                icon: const Icon(
                  Icons.image_rounded,
                  color: AppColor.blackColor,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'Ketuk untuk menulis...',
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 12.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fillColor: const Color(0xffF6F6F6),
                  filled: true,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.send_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
