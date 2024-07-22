import 'package:antria_mitra_mobile/src/features/profile/data/models/response/ulasan_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixture/fixture.dart';

void main() {
  final List<UlasanResponse> ulasanModels = [
    UlasanResponse(
      komentar: "Makanan enak",
      rating: 45,
      mitraId: 1,
      pelangganId: 1,
      createdAt: DateTime.parse("2024-05-21T16:12:50.587Z"),
      updatedAt: DateTime.parse("2024-05-21T16:12:50.587Z"),
      reviewer: Reviewer(
        id: 1,
        username: "hibikisoviena",
        email: "hibiki@verni.yt",
        emailVerified: false,
        password:
            "\$2b\$10\$B6DsN48I0AVEzoLFYd2Kc.SX89dn6S1ox3Qd8Y2pTwEVjYK6Xr2ia",
        profilePicture: "05370079-67dc-4c3f-8c50-5b6d440b2acd.jpg",
        nama: "hibiki veriny",
        handphone: "",
        alamat: "",
        wallet: 0,
        createdAt: DateTime.parse("2024-05-01T07:27:04.132Z"),
        updatedAt: DateTime.parse("2024-05-15T07:48:14.613Z"),
      ),
    ),
    UlasanResponse(
      komentar: "Makanan enak",
      rating: 43,
      mitraId: 1,
      pelangganId: 2,
      createdAt: DateTime.parse("2024-05-21T16:35:57.033Z"),
      updatedAt: DateTime.parse("2024-05-21T16:35:57.033Z"),
      reviewer: Reviewer(
        id: 2,
        username: "rovino",
        email: "rovino@verni.yt",
        emailVerified: false,
        password:
            "\$2b\$10\$Z022U4PS5NksQXTkiVX.VOjtDbBtVUGqI3vWK0LpebezqgoQL0/si",
        profilePicture: "fea86402-094c-42c2-b791-149ae02cf5c9.jpg",
        nama: "rovinos",
        handphone: "",
        alamat: "",
        wallet: 2025000,
        createdAt: DateTime.parse("2024-05-01T10:35:07.243Z"),
        updatedAt: DateTime.parse("2024-05-01T10:35:07.243Z"),
      ),
    ),
  ];

  group(
    'json serialization ',
    () {
      test(
        'fromJson should return a list of PesananModel objects ',
        () {
          // arrange
          final jsonData = fixture('ulasan_response.json');
          final List<UlasanResponse> ulasanJsonList =
              ulasanResponseFromJson(jsonData);
          // assert
          expect(ulasanModels, ulasanJsonList);
        },
      );

      test(
        'toJson should return a list of json strings ',
        () {
          // act
          final List<Map<String, dynamic>> jsonDataList =
              ulasanModels.map((model) => model.toJson()).toList();

          // assert
          final List<Map<String, dynamic>> expectedResponse = [
            {
              "komentar": "Makanan enak",
              "rating": 45,
              "mitraId": 1,
              "pelangganId": 1,
              "created_at": "2024-05-21T16:12:50.587Z",
              "updated_at": "2024-05-21T16:12:50.587Z",
              "reviewer": {
                "id": 1,
                "username": "hibikisoviena",
                "password":
                    "\$2b\$10\$B6DsN48I0AVEzoLFYd2Kc.SX89dn6S1ox3Qd8Y2pTwEVjYK6Xr2ia",
                "email": "hibiki@verni.yt",
                "emailVerified": false,
                "profile_picture": "05370079-67dc-4c3f-8c50-5b6d440b2acd.jpg",
                "nama": "hibiki veriny",
                "handphone": "",
                "alamat": "",
                "wallet": 0,
                "created_at": "2024-05-01T07:27:04.132Z",
                "updated_at": "2024-05-15T07:48:14.613Z"
              }
            },
            {
              "komentar": "Makanan enak",
              "rating": 43,
              "mitraId": 1,
              "pelangganId": 2,
              "created_at": "2024-05-21T16:35:57.033Z",
              "updated_at": "2024-05-21T16:35:57.033Z",
              "reviewer": {
                "id": 2,
                "username": "rovino",
                "password":
                    "\$2b\$10\$Z022U4PS5NksQXTkiVX.VOjtDbBtVUGqI3vWK0LpebezqgoQL0/si",
                "email": "rovino@verni.yt",
                "emailVerified": false,
                "profile_picture": "fea86402-094c-42c2-b791-149ae02cf5c9.jpg",
                "nama": "rovinos",
                "handphone": "",
                "alamat": "",
                "wallet": 2025000,
                "created_at": "2024-05-01T10:35:07.243Z",
                "updated_at": "2024-05-01T10:35:07.243Z"
              }
            }
          ];

          expect(jsonDataList, expectedResponse);
        },
      );
    },
  );
}
