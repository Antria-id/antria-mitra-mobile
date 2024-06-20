import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_local_usecase.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<UserEvent>((event, emit) async {
      if (event is UserFetchData) {
        emit(UserLoading());
        var result = await serviceLocator<GetUserLocalUsecase>()
            .getUserFromLocalStorage();
        result.fold(
          (failure) {
            emit(UserError(message: failure.message));
          },
          (data) {
            emit(
              UserLoaded(
                user: result.getOrElse(
                  () => const UserModel(),
                ),
              ),
            );
          },
        );
      }
    });
  }
}
