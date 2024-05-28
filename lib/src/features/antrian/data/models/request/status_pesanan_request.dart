// To parse this JSON data, do
//
//     final pesananInvoiceResponseModel = pesananInvoiceResponseModelFromJson(jsonString);

import 'dart:convert';

StatusPesananRequestModel pesananInvoiceResponseModelFromJson(String str) =>
    StatusPesananRequestModel.fromJson(json.decode(str));

String pesananInvoiceResponseModelToJson(StatusPesananRequestModel data) =>
    json.encode(data.toJson());

class StatusPesananRequestModel {
  final String? orderstatus;

  StatusPesananRequestModel({
    this.orderstatus,
  });

  factory StatusPesananRequestModel.fromJson(Map<String, dynamic> json) =>
      StatusPesananRequestModel(
        orderstatus: json["orderstatus"],
      );

  Map<String, dynamic> toJson() => {
        "orderstatus": orderstatus,
      };
}
