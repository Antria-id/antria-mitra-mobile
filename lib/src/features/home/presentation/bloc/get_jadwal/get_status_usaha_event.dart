part of 'get_status_usaha_bloc.dart';

sealed class GetStatusUsahaEvent extends Equatable {
  const GetStatusUsahaEvent();

  @override
  List<Object> get props => [];
}

final class GetStatusFetchData extends GetStatusUsahaEvent {}
