import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_response_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tAntrianResponseModel = AntrianResponseModel(
    id: 1,
    estimasi: 30,
    orderstatus: 'pending',
    pesananId: '12345',
    createdAt: DateTime.parse("2024-07-22T10:00:00Z"),
    updatedAt: DateTime.parse("2024-07-22T10:30:00Z"),
  );

  final tAntrianResponseModelJson = {
    "id": 1,
    "estimasi": 30,
    "orderstatus": "pending",
    "pesananId": "12345",
    "created_at": "2024-07-22T10:00:00.000Z",
    "updated_at": "2024-07-22T10:30:00.000Z",
  };

  group('AntrianResponseModel', () {
    test('should be a subclass of Equatable', () {
      expect(tAntrianResponseModel, isA<Equatable>());
    });

    test('fromJson should return a valid model from JSON', () {
      final Map<String, dynamic> jsonMap = tAntrianResponseModelJson;

      final result = AntrianResponseModel.fromJson(jsonMap);

      expect(result, equals(tAntrianResponseModel));
    });

    test('toJson should return a JSON map containing the proper data', () {
      final result = tAntrianResponseModel.toJson();

      expect(result, equals(tAntrianResponseModelJson));
    });

    test('props should return a list of all fields', () {
      final result = tAntrianResponseModel.props;

      expect(result, [
        tAntrianResponseModel.id,
        tAntrianResponseModel.estimasi,
        tAntrianResponseModel.orderstatus,
        tAntrianResponseModel.pesananId,
        tAntrianResponseModel.createdAt,
        tAntrianResponseModel.updatedAt,
      ]);
    });
  });
}
