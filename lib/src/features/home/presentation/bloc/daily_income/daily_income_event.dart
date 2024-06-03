part of 'daily_income_bloc.dart';

sealed class DailyIncomeEvent extends Equatable {
  const DailyIncomeEvent();

  @override
  List<Object> get props => [];
}

final class DailyIncomeFetchData extends DailyIncomeEvent {}
