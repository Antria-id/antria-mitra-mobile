import 'package:flutter/material.dart';
import 'package:antria_mitra_mobile/src/features/kasir/presentation/widgets/card_pemesanan_type_widget.dart';

class ListPemesananTypeWidget extends StatefulWidget {
  final ValueChanged<Map<String, bool>> onPemesananType;
  final int initialSelectedIndex; // Add this line

  const ListPemesananTypeWidget({
    Key? key,
    required this.onPemesananType,
    required this.initialSelectedIndex, // Add this line
  }) : super(key: key);

  @override
  ListPemesananTypeWidgetState createState() => ListPemesananTypeWidgetState();
}

class ListPemesananTypeWidgetState extends State<ListPemesananTypeWidget> {
  final List<Map<String, dynamic>> pemesananTypeList = [
    {
      'label': 'Dine In',
      'icon': 'assets/icons/dinein.png',
      'isDineIn': true,
      'isTakeAway': false,
    },
    {
      'label': 'Take Away',
      'icon': 'assets/icons/takeaway.png',
      'isDineIn': false,
      'isTakeAway': true,
    },
  ];

  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: List.generate(
            pemesananTypeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  widget.onPemesananType({
                    'isDineIn': pemesananTypeList[index]['isDineIn'],
                    'isTakeAway': pemesananTypeList[index]['isTakeAway'],
                  });
                  Navigator.pop(context);
                },
                child: CardPemesananTypeWidget(
                  label: pemesananTypeList[index]['label'],
                  icon: pemesananTypeList[index]['icon'],
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
