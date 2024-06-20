import 'dart:convert';
import 'package:equatable/equatable.dart';

StatusPesananRequestModel pesananInvoiceResponseModelFromJson(String str) =>
    StatusPesananRequestModel.fromJson(json.decode(str));

String pesananInvoiceResponseModelToJson(StatusPesananRequestModel data) =>
    json.encode(data.toJson());

class StatusPesananRequestModel extends Equatable {
  final String? orderstatus;

  const StatusPesananRequestModel({
    this.orderstatus,
  });

  factory StatusPesananRequestModel.fromJson(Map<String, dynamic> json) =>
      StatusPesananRequestModel(
        orderstatus: json["orderstatus"],
      );

  Map<String, dynamic> toJson() => {
        "orderstatus": orderstatus,
      };

  @override
  List<Object?> get props => [orderstatus];
}
