// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final String? email;
  final bool isEmailVerify;
  const AuthUser({
    required this.email,
    required this.isEmailVerify,
  });

  factory AuthUser.fromFirebase(User user) => AuthUser(
        isEmailVerify: user.emailVerified,
        email: user.email,
      ); 
}

void testing() {
  AuthUser(isEmailVerify: true, email: '');
}
