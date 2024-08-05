import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/services/user_cache_services.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

abstract class CheckUserLoginStatus {
  Future<bool> checkIfUserLoggedIn();
}

class CheckUserLoginStatusImpl extends CheckUserLoginStatus {
  @override
  Future<bool> checkIfUserLoggedIn() async {
    final user = await serviceLocator<UserCacheService>().getUser();
    final authToken = await serviceLocator<UserCacheService>().getToken();

    if (user != null && authToken != null && authToken.isNotEmpty) {
      return !JwtDecoder.isExpired(authToken);
    }

    return false;
  }
}
