import 'package:json_annotation/json_annotation.dart';
part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  bool? status;
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;

  RegisterResponse({
    this.status,
    this.message,
    this.userData,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? image;
  String? token;

  UserData({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.image,
    this.token,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
