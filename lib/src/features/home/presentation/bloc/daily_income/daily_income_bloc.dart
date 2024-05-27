import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/daily_income/daily_income_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_daily_income_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_income_event.dart';
part 'daily_income_state.dart';
part 'daily_income_bloc.freezed.dart';

class DailyIncomeBloc extends Bloc<DailyIncomeEvent, DailyIncomeState> {
  DailyIncomeBloc() : super(const DailyIncomeInitialState()) {
    on<DailyIncomeEvent>((event, emit) async {
      var result =
          await serviceLocator<GetDailyIncomeUsecase>().getDailyIncome();
      result.fold(
        (failure) {
          emit(DailyIncomeState.error(failure.message));
        },
        (data) {
          emit(DailyIncomeState.loadedState(
            dailyIncome: data,
          ));
        },
      );
    });
  }
}
