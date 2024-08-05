part of 'informasi_usaha_bloc.dart';

sealed class InformasiUsahaEvent extends Equatable {
  const InformasiUsahaEvent();

  @override
  List<Object> get props => [];
}

final class InformasiUsahaFetchData extends InformasiUsahaEvent {}
