import 'package:antria_mitra_mobile/src/features/antrian/data/models/response/antrian_list_response_model.dart';
import 'package:test/test.dart';

void main() {
  group('AntrianListModel', () {
    final antrian = AntrianListModel(
      id: 1,
      estimasi: 10,
      orderstatus: 'pending',
      pesananId: '1234',
      createdAt: DateTime.parse("2023-07-22T14:53:00"),
      updatedAt: DateTime.parse("2023-07-22T14:53:00"),
    );

    test('fromJson should create a valid model', () {
      final json = {
        "id": 1,
        "estimasi": 10,
        "orderstatus": 'pending',
        "pesananId": '1234',
        "created_at": "2023-07-22T14:53:00",
        "updated_at": "2023-07-22T14:53:00",
      };

      final model = AntrianListModel.fromJson(json);

      expect(model.id, 1);
      expect(model.estimasi, 10);
      expect(model.orderstatus, 'pending');
      expect(model.pesananId, '1234');
      expect(model.createdAt, DateTime.parse("2023-07-22T14:53:00"));
      expect(model.updatedAt, DateTime.parse("2023-07-22T14:53:00"));
    });

    test('toJson should create a valid map', () {
      final json = antrian.toJson();

      expect(json['id'], 1);
      expect(json['estimasi'], 10);
      expect(json['orderstatus'], 'pending');
      expect(json['pesananId'], '1234');
      expect(json['created_at'], "2023-07-22T14:53:00.000");
      expect(json['updated_at'], "2023-07-22T14:53:00.000");
    });

    test('copyWith should copy model with new values', () {
      final updatedAntrian = antrian.copyWith(orderstatus: 'completed');

      expect(updatedAntrian.id, 1);
      expect(updatedAntrian.estimasi, 10);
      expect(updatedAntrian.orderstatus, 'completed');
      expect(updatedAntrian.pesananId, '1234');
      expect(updatedAntrian.createdAt, DateTime.parse("2023-07-22T14:53:00"));
      expect(updatedAntrian.updatedAt, DateTime.parse("2023-07-22T14:53:00"));
    });

    test('antrianListModelFromJson should create a list of models', () {
      final jsonString =
          '[{"id": 1, "estimasi": 10, "orderstatus": "pending", "pesananId": "1234", "created_at": "2023-07-22T14:53:00", "updated_at": "2023-07-22T14:53:00"}]';
      final list = antrianListModelFromJson(jsonString);

      expect(list.length, 1);
      expect(list[0].id, 1);
      expect(list[0].estimasi, 10);
      expect(list[0].orderstatus, 'pending');
      expect(list[0].pesananId, '1234');
      expect(list[0].createdAt, DateTime.parse("2023-07-22T14:53:00"));
      expect(list[0].updatedAt, DateTime.parse("2023-07-22T14:53:00"));
    });

    test('antrianListModelToJson should create a valid JSON string', () {
      final list = [antrian];
      final jsonString = antrianListModelToJson(list);

      expect(jsonString,
          '[{"id":1,"estimasi":10,"orderstatus":"pending","pesananId":"1234","created_at":"2023-07-22T14:53:00.000","updated_at":"2023-07-22T14:53:00.000"}]');
    });
  });
}
