import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/home/data/models/daily_income/daily_income_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_daily_income_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'daily_income_event.dart';
part 'daily_income_state.dart';

class DailyIncomeBloc extends Bloc<DailyIncomeEvent, DailyIncomeState> {
  DailyIncomeBloc() : super(DailyIncomeInitial()) {
    on<DailyIncomeEvent>((event, emit) async {
      if (event is DailyIncomeFetchData) {
        emit(DailyIncomeLoading());
        var result =
            await serviceLocator<GetDailyIncomeUsecase>().getDailyIncome();
        result.fold(
          (failure) {
            emit(DailyIncomeError(message: failure.message));
          },
          (data) {
            emit(DailyIncomeLoaded(
              dailyIncome: data,
            ));
          },
        );
      }
    });
  }
}
