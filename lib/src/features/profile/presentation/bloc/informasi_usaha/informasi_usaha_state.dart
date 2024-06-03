part of 'informasi_usaha_bloc.dart';

sealed class InformasiUsahaState extends Equatable {
  const InformasiUsahaState();

  @override
  List<Object> get props => [];
}

final class InformasiUsahaInitial extends InformasiUsahaState {}

final class InformasiUsahaLoading extends InformasiUsahaState {}

final class InformasiUsahaLoaded extends InformasiUsahaState {
  final UsahaResponseModel responseModel;

  const InformasiUsahaLoaded({required this.responseModel});
}

final class InformasiUsahaError extends InformasiUsahaState {
  final String? message;

  const InformasiUsahaError({required this.message});
}
