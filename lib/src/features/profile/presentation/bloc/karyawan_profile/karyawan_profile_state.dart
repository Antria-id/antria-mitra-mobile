part of 'karyawan_profile_bloc.dart';

sealed class KaryawanProfileState extends Equatable {
  const KaryawanProfileState();

  @override
  List<Object> get props => [];
}

final class KaryawanProfileInitial extends KaryawanProfileState {}

final class KaryawanProfileLoading extends KaryawanProfileState {}

final class KaryawanProfileLoaded extends KaryawanProfileState {
  final KaryawanModel karyawanModel;

  const KaryawanProfileLoaded({required this.karyawanModel});
}

final class KaryawanProfileError extends KaryawanProfileState {
  final String? message;

  const KaryawanProfileError({required this.message});
}
