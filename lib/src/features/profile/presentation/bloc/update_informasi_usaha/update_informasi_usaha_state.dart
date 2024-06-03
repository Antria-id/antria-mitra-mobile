part of 'update_informasi_usaha_bloc.dart';

sealed class UpdateInformasiUsahaState extends Equatable {
  const UpdateInformasiUsahaState();

  @override
  List<Object> get props => [];
}

final class UpdateInformasiUsahaInitial extends UpdateInformasiUsahaState {}

final class UpdateInformasiUsahaLoading extends UpdateInformasiUsahaState {}

final class UpdateInformasiUsahaSuccess extends UpdateInformasiUsahaState {
  final UpdateUsahaRequestModel requestUser;

  const UpdateInformasiUsahaSuccess({required this.requestUser});
}

final class UpdateInformasiUsahaFailed extends UpdateInformasiUsahaState {
  final String? message;

  const UpdateInformasiUsahaFailed({required this.message});
}
