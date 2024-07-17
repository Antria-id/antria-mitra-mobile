import 'package:equatable/equatable.dart';

class AntrianEntity extends Equatable {
  final int? id;
  final int? estimasi;
  final String? orderstatus;
  final String? pesananId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const AntrianEntity({
    this.id,
    this.estimasi,
    this.orderstatus,
    this.pesananId,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        estimasi,
        orderstatus,
        pesananId,
        createdAt,
        updatedAt,
      ];
}
