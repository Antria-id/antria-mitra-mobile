part of 'pesanan_mitra_bloc.dart';

sealed class PesananMitraState extends Equatable {
  const PesananMitraState();

  @override
  List<Object> get props => [];
}

final class PesananMitraInitial extends PesananMitraState {}

final class PesananMitraLoading extends PesananMitraState {}

final class PesananMitraLoaded extends PesananMitraState {
  final List<PesananModel> pesananList;

  const PesananMitraLoaded({required this.pesananList});
}

final class PesananMitraError extends PesananMitraState {
  final String? message;

  const PesananMitraError({required this.message});
}
