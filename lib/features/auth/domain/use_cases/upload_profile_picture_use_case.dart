import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/auth/domain/repository/auth_repo.dart';
import 'package:personal_scheduler_app/features/auth/data/models/user_model.dart';

@injectable
class UploadProfileImageUseCase {
  final AuthRepo authRepo;

  UploadProfileImageUseCase(this.authRepo);

  Future<Either<Failures, UserModel>> call(String uid, File imageFile) {
    return authRepo.uploadProfileImage(uid, imageFile);
  }
}
