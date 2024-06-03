part of 'daily_income_bloc.dart';

sealed class DailyIncomeState extends Equatable {
  const DailyIncomeState();

  @override
  List<Object> get props => [];
}

final class DailyIncomeInitial extends DailyIncomeState {}

final class DailyIncomeLoading extends DailyIncomeState {}

final class DailyIncomeLoaded extends DailyIncomeState {
  final List<DailyIncome> dailyIncome;

  const DailyIncomeLoaded({required this.dailyIncome});
}

final class DailyIncomeError extends DailyIncomeState {
  final String? message;

  const DailyIncomeError({required this.message});
}
