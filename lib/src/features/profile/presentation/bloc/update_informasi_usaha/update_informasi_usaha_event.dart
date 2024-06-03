part of 'update_informasi_usaha_bloc.dart';

sealed class UpdateInformasiUsahaEvent extends Equatable {
  const UpdateInformasiUsahaEvent();

  @override
  List<Object> get props => [];
}

final class UpdateInformasiUsahaTapped extends UpdateInformasiUsahaEvent {
  final UpdateUsahaRequestModel requestUser;

  const UpdateInformasiUsahaTapped({required this.requestUser});

  @override
  List<Object> get props => [requestUser];
}
