import 'package:equatable/equatable.dart';

class StatusUsahaRequest extends Equatable {
  final String? statusToko;

  StatusUsahaRequest({
    this.statusToko,
  });

  factory StatusUsahaRequest.fromJson(Map<String, dynamic> json) =>
      StatusUsahaRequest(
        statusToko: json["status_toko"],
      );

  Map<String, dynamic> toJson() => {
        "status_toko": statusToko,
      };

  @override
  List<Object?> get props => [statusToko];
}
