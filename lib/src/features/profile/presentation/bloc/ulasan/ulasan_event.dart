part of 'ulasan_bloc.dart';

sealed class UlasanEvent extends Equatable {
  const UlasanEvent();

  @override
  List<Object> get props => [];
}

final class UlasanFetchData extends UlasanEvent {}
