part of 'karyawan_profile_bloc.dart';

sealed class KaryawanProfileEvent extends Equatable {
  const KaryawanProfileEvent();

  @override
  List<Object> get props => [];
}

final class KaryawanProfileFetchData extends KaryawanProfileEvent {}
