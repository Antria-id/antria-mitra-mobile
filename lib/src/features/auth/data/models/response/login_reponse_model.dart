import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable {
  final String? accessToken;

  const LoginResponse({
    this.accessToken,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
      };

  @override
  List<Object?> get props => [accessToken];
}
