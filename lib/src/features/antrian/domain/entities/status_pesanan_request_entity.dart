import 'package:equatable/equatable.dart';

class StatusPesananRequestEntity extends Equatable {
  final String? orderstatus;

  const StatusPesananRequestEntity({this.orderstatus});

  @override
  List<Object?> get props => [orderstatus];
}
