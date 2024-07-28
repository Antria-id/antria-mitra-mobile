part of 'get_status_usaha_bloc.dart';

sealed class GetStatusUsahaState extends Equatable {
  const GetStatusUsahaState();

  @override
  List<Object> get props => [];
}

final class GetStatusInitial extends GetStatusUsahaState {}

final class GetStatusLoading extends GetStatusUsahaState {}

final class GetStatusLoaded extends GetStatusUsahaState {
  final StatusUsahaModel statusUsahaModel;

  GetStatusLoaded({required this.statusUsahaModel});
}

final class GetStatusError extends GetStatusUsahaState {
  final String? message;

  GetStatusError({required this.message});
}
