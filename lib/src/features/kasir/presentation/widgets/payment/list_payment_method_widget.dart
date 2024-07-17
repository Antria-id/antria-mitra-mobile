import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/payment/card_payment_widget.dart';
import 'package:flutter/material.dart';

class ListPaymentMethodWidget extends StatefulWidget {
  final ValueChanged<Map<String, String>> onPaymentMethodChanged;

  const ListPaymentMethodWidget(
      {Key? key, required this.onPaymentMethodChanged})
      : super(key: key);

  @override
  ListPaymentMethodWidgetState createState() => ListPaymentMethodWidgetState();
}

class ListPaymentMethodWidgetState extends State<ListPaymentMethodWidget> {
  final List<Map<String, dynamic>> paymentList = [
    {
      'label': 'E-Wallet',
      'value': 'EWALLET',
      'icon': 'assets/icons/ewallet.png'
    },
    {
      'label': 'Cash',
      'value': 'CASH',
      'icon': 'assets/icons/rupiah.png',
    },
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final payment = paymentList[index];
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            widget.onPaymentMethodChanged({
              'label': payment['label'],
              'value': payment['value'],
            });
          },
          child: CardPaymentWidget(
            label: payment['label'],
            icon: payment['icon'],
            selectedIndex: selectedIndex,
            index: index,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
      itemCount: paymentList.length,
    );
  }
}
