import 'dart:io';

import 'package:personal_scheduler_app/features/auth/data/models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(
      String email, String password, String name, File? imageFile);
  Future<void> resetPassword(String email);
}
