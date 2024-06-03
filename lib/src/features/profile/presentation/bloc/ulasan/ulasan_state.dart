part of 'ulasan_bloc.dart';

sealed class UlasanState extends Equatable {
  const UlasanState();

  @override
  List<Object> get props => [];
}

final class UlasanInitial extends UlasanState {}

final class UlasanLoading extends UlasanState {}

final class UlasanLoaded extends UlasanState {
  final List<UlasanResponse> ulasan;

  const UlasanLoaded({required this.ulasan});
}

final class UlasanError extends UlasanState {
  final String? message;

  const UlasanError({required this.message});
}
