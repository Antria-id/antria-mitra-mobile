// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:antria_mitra_mobile/src/core/services/services_locator.dart';
import 'package:antria_mitra_mobile/src/core/utils/request.dart';
import 'package:antria_mitra_mobile/src/features/auth/data/models/response/user_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: non_constant_identifier_names
String USER_CACHE_KEY = dotenv.get('USERCACHEKEY');
// ignore: non_constant_identifier_names
String TOKEN_KEY = dotenv.get('TOKENKEY');

class UserCacheService {
  UserModel? _user;
  UserModel? get user => _user;
  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

  Future<void> saveAccessToken(String accessTokenResponse) async {
    try {
      if (accessTokenResponse.isEmpty) {
        print("Access token response is empty");
        return;
      }

      List<String> tokenParts = accessTokenResponse.split(".");
      if (tokenParts.length != 3) {
        print("Invalid access token format");
        return;
      }

      String payloadBase64 = tokenParts[1];
      while (payloadBase64.length % 4 != 0) {
        payloadBase64 += "=";
      }

      String payloadString = utf8.decode(base64Url.decode(payloadBase64));
      Map<String, dynamic> payload = jsonDecode(payloadString);

      UserModel user = UserModel(
        sub: payload['sub'],
        username: payload['username'],
        role: payload['role'],
        mitraId: payload['mitraId'],
        isOwner: payload['isOwner'],
        picture: payload['picture'],
        email: payload['email'],
      );

      await saveUser(user);
    } catch (e, stackTrace) {
      throw ('Error saving access token to cache: $e\nStack trace: $stackTrace');
    }
  }

  Future<void> setToken(String accessToken) async {
    final preferances = await SharedPreferences.getInstance();
    await preferances.setString(TOKEN_KEY, accessToken);
  }

  Future<String?> getToken() async {
    final preferances = await SharedPreferences.getInstance();
    return preferances.getString(TOKEN_KEY);
  }

  Future<bool> saveUser(UserModel user) async {
    try {
      var map = user.toJson();
      bool saved = await sharedPrefs.setString(USER_CACHE_KEY, jsonEncode(map));
      if (saved) {
        _user = user;
      }
      return saved;
    } catch (e, stackTrace) {
      print('Error saving user to cache: $e\nStack trace: $stackTrace');
      return false;
    }
  }

  Future<UserModel?> getUser() async {
    var userMap = sharedPrefs.getString(USER_CACHE_KEY);
    if (userMap == null) {
      return null;
    }
    try {
      _user = UserModel.fromJson(jsonDecode(userMap));
      return _user;
    } catch (e, stackTrace) {
      print('Error decoding user from cache: $e\nStack trace: $stackTrace');
      return null;
    }
  }

  Future<bool> deleteUser() async {
    try {
      Request().clearAuthorization();
      _user = null;
      bool removed = await sharedPrefs.remove(USER_CACHE_KEY);
      return removed;
    } catch (e, stackTrace) {
      print('Error deleting user from cache: $e\nStack trace: $stackTrace');
      return false;
    }
  }

  Future<void> updateUser(UserModel updatedUser) async {
    if (_user != null) {
      _user = updatedUser;
      await saveUser(updatedUser);
    }
  }
}
