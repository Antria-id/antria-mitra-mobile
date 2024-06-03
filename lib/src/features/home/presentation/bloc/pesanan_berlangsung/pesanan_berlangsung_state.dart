part of 'pesanan_berlangsung_bloc.dart';

sealed class PesananBerlangsungState extends Equatable {
  const PesananBerlangsungState();

  @override
  List<Object> get props => [];
}

final class PesananBerlangsungInitial extends PesananBerlangsungState {}

final class PesananBerlangsungLoading extends PesananBerlangsungState {}

final class PesananBerlangsungLoaded extends PesananBerlangsungState {
  final List<PesananBerlangsungModel> pesananList;

  const PesananBerlangsungLoaded({required this.pesananList});
}

final class PesananBerlangsungError extends PesananBerlangsungState {
  final String? message;

  const PesananBerlangsungError({required this.message});
}
