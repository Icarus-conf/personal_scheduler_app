import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserModel>> login(String email, String password);
  Future<Either<Failures, UserModel>> register(
    String email,
    String password,
    String name,
    File? imageFile,
  );
  Future<Either<Failures, void>> resetPassword(String email);
}
