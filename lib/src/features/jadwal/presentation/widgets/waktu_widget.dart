import 'package:antria_mitra_mobile/src/features/jadwal/data/models/response/mitra_model.dart';
import 'package:flutter/material.dart';

class WaktuWidget extends StatefulWidget {
  final MitraModel mitraModel;
  final Function(TimeOfDay?, TimeOfDay?)? onTimeSelected;
  const WaktuWidget(
      {super.key, required this.mitraModel, required this.onTimeSelected});

  @override
  State<WaktuWidget> createState() => _WaktuWidgetState();
}

class _WaktuWidgetState extends State<WaktuWidget> {
  TimeOfDay? selectedTimeTutup;
  TimeOfDay? selectedTimeBuka;

  String formatTimeOfDay(TimeOfDay? time) {
    if (time == null) {
      return '';
    }
    final hours = time.hour;
    final minutes = time.minute;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
  }

  void selectTimeBuka(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (pickedTime != null) {
      setState(() {
        selectedTimeBuka = pickedTime;
      });
      widget.onTimeSelected?.call(selectedTimeBuka, selectedTimeTutup);
    }
  }

  Future<void> selectTimeClose(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (pickedTime != null) {
      setState(() {
        selectedTimeTutup = pickedTime;
      });
      widget.onTimeSelected?.call(selectedTimeBuka, selectedTimeTutup);
    }
  }

  String? validateTime(String? value) {
    if (value == null || value.isEmpty) {
      return 'Waktu tidak boleh kosong';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Jam Buka',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            selectTimeBuka(context);
          },
          child: InputDecorator(
            decoration: InputDecoration(
              fillColor: Colors.grey[300],
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 12.0,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              errorText: validateTime(
                selectedTimeBuka != null
                    ? selectedTimeBuka!.format(context)
                    : widget.mitraModel.jamBuka!,
              ),
            ),
            child: Text(
              formatTimeOfDay(selectedTimeBuka) != ''
                  ? formatTimeOfDay(selectedTimeBuka)
                  : widget.mitraModel.jamBuka!,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Jam Tutup',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            selectTimeClose(context);
          },
          child: InputDecorator(
            decoration: InputDecoration(
              fillColor: Colors.grey[300],
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 12.0,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              errorText: validateTime(
                selectedTimeTutup != null
                    ? selectedTimeTutup!.format(context)
                    : widget.mitraModel.jamTutup!,
              ),
              hintText: 'Jam Tutup',
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            child: Text(
              formatTimeOfDay(selectedTimeTutup) != ''
                  ? formatTimeOfDay(selectedTimeTutup)
                  : widget.mitraModel.jamTutup!,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
