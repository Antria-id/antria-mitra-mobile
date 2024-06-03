part of 'pesanan_berlangsung_bloc.dart';

sealed class PesananBerlangsungEvent extends Equatable {
  const PesananBerlangsungEvent();

  @override
  List<Object> get props => [];
}

final class PesananBerlangsungFetchData extends PesananBerlangsungEvent {}
