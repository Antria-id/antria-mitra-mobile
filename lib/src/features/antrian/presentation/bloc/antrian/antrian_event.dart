part of 'antrian_bloc.dart';

sealed class AntrianEvent extends Equatable {
  const AntrianEvent();

  @override
  List<Object> get props => [];
}

final class AntrianFetchData extends AntrianEvent {}
