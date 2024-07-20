import 'package:antria_mitra_mobile/src/core/network/network_checker.dart';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_remote_usecase.dart';
import 'package:antria_mitra_mobile/src/features/home/domain/usecases/get_user_local_usecase.dart';
import 'package:antria_mitra_mobile/src/features/profile/data/models/response/karyawan_model.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final NetworkChecker networkChecker;

  UserBloc()
      : networkChecker = serviceLocator<NetworkChecker>(),
        super(UserInitial()) {
    on<UserEvent>((event, emit) async {
      if (event is UserFetchData) {
        emit(UserLoading());
        bool isConnected = await networkChecker.isConnected;
        if (isConnected) {
          var result = await serviceLocator<GetUserRemoteUsecase>().getUser();
          result.fold(
            (failure) {
              emit(UserError(message: failure.message));
            },
            (data) {
              emit(UserLoaded(user: data));
            },
          );
        } else if (isConnected == false) {
          var result = await serviceLocator<GetUserLocalUsecase>()
              .getUserFromLocalStorage();
          result.fold(
            (failure) {
              emit(UserError(message: failure.message));
            },
            (data) {
              emit(
                UserLocalLoaded(
                  user: result.getOrElse(
                    () => const UserModel(),
                  ),
                ),
              );
            },
          );
        }
      }
    });
  }
}
