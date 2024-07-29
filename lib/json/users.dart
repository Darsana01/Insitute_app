import 'dart:convert';

AuthModal authModalFromJson(String str) => AuthModal.fromJson(json.decode(str));

String authModalToJson(AuthModal data) => json.encode(data.toJson());

class AuthModal {
  int? usrId;
  String username;
  String password;
  String email;
  String phone;

  AuthModal({this.usrId, required this.username, required this.password,required this.email,required this.phone});

  factory AuthModal.fromJson(Map<String, dynamic> json) {
    return AuthModal(
        usrId: json['usrId'],
        username: json['username'],
        password: json['password'],
        email: json['email'],
        phone: json['phone']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'usrId': usrId,
      'username': username,
      'password': password,
      'email':email,
      'phone':phone
    };
  }
}