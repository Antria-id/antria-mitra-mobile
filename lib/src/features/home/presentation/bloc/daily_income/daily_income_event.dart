part of 'daily_income_bloc.dart';

@freezed
class DailyIncomeEvent with _$DailyIncomeEvent {
  const factory DailyIncomeEvent.onDailyIncome() = GetDailyFetchDataEvent;
}
