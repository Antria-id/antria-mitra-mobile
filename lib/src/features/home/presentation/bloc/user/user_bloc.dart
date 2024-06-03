import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_local_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<UserEvent>((event, emit) async {
      emit(const UserLoadingState());
      var result =
          await serviceLocator<GetUserLocalUsecase>().getUserFromLocalStorage();
      result.fold(
        (failure) {
          emit(UserState.error(failure.message));
        },
        (data) {
          emit(
            UserState.loadedState(
              user: result.getOrElse(
                () => UserModel(),
              ),
            ),
          );
        },
      );
    });
  }
}
