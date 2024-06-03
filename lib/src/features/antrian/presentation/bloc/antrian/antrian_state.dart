part of 'antrian_bloc.dart';

sealed class AntrianState extends Equatable {
  const AntrianState();

  @override
  List<Object> get props => [];
}

final class AntrianInitial extends AntrianState {}

final class AntrianLoading extends AntrianState {}

final class AntrianLoaded extends AntrianState {
  final List<PesananResponseModel> pesananList;

  const AntrianLoaded({required this.pesananList});
}

final class AntrianError extends AntrianState {
  final String? message;

  const AntrianError({required this.message});
}
