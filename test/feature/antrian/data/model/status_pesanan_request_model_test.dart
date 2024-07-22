import 'dart:convert';
import 'package:antria_mitra_mobile/src/features/antrian/data/models/request/status_pesanan_request.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:equatable/equatable.dart';

void main() {
  const tOrderstatus = 'completed';

  final tStatusPesananRequestModel = StatusPesananRequestModel(
    orderstatus: tOrderstatus,
  );

  final Map<String, dynamic> tStatusPesananRequestModelJson = {
    "orderstatus": tOrderstatus,
  };

  group('StatusPesananRequestModel', () {
    test('should be a subclass of Equatable', () {
      expect(tStatusPesananRequestModel, isA<Equatable>());
    });

    test('fromJson should return a valid model from JSON', () {
      final Map<String, dynamic> jsonMap =
          json.decode(json.encode(tStatusPesananRequestModelJson));

      final result = StatusPesananRequestModel.fromJson(jsonMap);

      expect(result, equals(tStatusPesananRequestModel));
    });

    test('toJson should return a JSON map containing the proper data', () {
      final result = tStatusPesananRequestModel.toJson();

      expect(result, equals(tStatusPesananRequestModelJson));
    });

    test(
        'pesananInvoiceResponseModelFromJson should return a valid model from JSON string',
        () {
      final jsonString = json.encode(tStatusPesananRequestModelJson);

      final result = pesananInvoiceResponseModelFromJson(jsonString);

      expect(result, equals(tStatusPesananRequestModel));
    });

    test(
        'pesananInvoiceResponseModelToJson should return a JSON string containing the proper data',
        () {
      final result =
          pesananInvoiceResponseModelToJson(tStatusPesananRequestModel);

      expect(result, json.encode(tStatusPesananRequestModelJson));
    });

    test('props should return a list of all fields', () {
      final result = tStatusPesananRequestModel.props;

      expect(result, [tOrderstatus]);
    });
  });
}
