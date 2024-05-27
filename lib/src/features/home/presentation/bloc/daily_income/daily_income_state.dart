part of 'daily_income_bloc.dart';

@freezed
class DailyIncomeState with _$DailyIncomeState {
  const factory DailyIncomeState.initial() = DailyIncomeInitialState;
  const factory DailyIncomeState.loading() = DailyIncomeLoadingState;
  const factory DailyIncomeState.error(String message) = DailyIncomeErrorState;
  const factory DailyIncomeState.loadedState({
    required List<DailyIncome> dailyIncome,
  }) = DailyIncomeLoadedState;
}
