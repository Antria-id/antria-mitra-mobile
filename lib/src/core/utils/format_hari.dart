String formatHariBuka(dynamic hariBuka) {
  const List<String> hari = [
    'SENIN',
    'SELASA',
    'RABU',
    'KAMIS',
    'JUMAT',
    'SABTU',
    'MINGGU'
  ];

  if (hariBuka.isEmpty) {
    return 'Jadwal Kosong';
  }

  if (hariBuka is String) {
    hariBuka = hariBuka.split(',').map((day) => day.trim()).toList();
  }

  List<String> hariBukaList = List<String>.from(hariBuka);

  if (hariBukaList.isEmpty) return '';

  List<String> upperHariBuka =
      hariBukaList.map((day) => day.toUpperCase()).toList();

  upperHariBuka.sort((a, b) => hari.indexOf(a).compareTo(hari.indexOf(b)));

  List<int> hariIndexes =
      upperHariBuka.map((day) => hari.indexOf(day)).toList();
  bool isConsecutive = true;

  for (int i = 0; i < hariIndexes.length - 1; i++) {
    if (hariIndexes[i + 1] != hariIndexes[i] + 1) {
      isConsecutive = false;
      break;
    }
  }

  if (isConsecutive) {
    if (hariIndexes.length == 1) {
      return hari[hariIndexes.first][0] +
          hari[hariIndexes.first].substring(1).toLowerCase();
    }
    return '${hari[hariIndexes.first][0] + hari[hariIndexes.first].substring(1).toLowerCase()} - ${hari[hariIndexes.last][0] + hari[hariIndexes.last].substring(1).toLowerCase()}';
  }

  return upperHariBuka
      .map((day) => day[0] + day.substring(1).toLowerCase())
      .join(', ');
}
