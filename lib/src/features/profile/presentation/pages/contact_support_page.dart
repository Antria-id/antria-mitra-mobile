import 'package:antria_mitra_mobile/src/features/profile/presentation/widgets/card/card_contact_support_widget.dart';
import 'package:antria_mitra_mobile/src/shared/custom_appbar_widget.dart';
import 'package:antria_mitra_mobile/src/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSupportPage extends StatelessWidget {
  const ContactSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        title: 'Contact Support',
        leading: IconButton(
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
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            CardContactSupportWidget(
                icon: 'assets/icons/whatsapp.png',
                label: 'Whatsapp',
                link: 'https://wa.me/+6281328724655',
                onTap: () async {
                  final uri = Uri.parse('https://wa.me/+6281328724655');
                  await launchUrl(uri);
                }),
            const SizedBox(
              height: 20,
            ),
            CardContactSupportWidget(
              icon: 'assets/icons/gmail.png',
              label: 'Gmail',
              link: 'halo@antria.id',
              onTap: () async {
                final uri = Uri.parse('mailto:antria.id@gmail.com');
                await launchUrl(uri);
              },
            )
          ],
        ),
      ),
    );
  }
}
