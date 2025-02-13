import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/auth/data/datasources/auth_data_source.dart';
import 'package:personal_scheduler_app/features/auth/data/models/user_model.dart';
import 'package:personal_scheduler_app/features/auth/domain/repository/auth_repo.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthDataSource remoteDataSource;

  AuthRepoImpl(this.remoteDataSource);

  @override
  Future<Either<Failures, UserModel>> login(
      String email, String password) async {
    try {
      final user = await remoteDataSource.login(email, password);
      return Right(user);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, UserModel>> register(
    String email,
    String password,
    String name,
    File? imageFile,
  ) async {
    try {
      final user =
          await remoteDataSource.register(email, password, name, imageFile);
      return Right(user);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> resetPassword(String email) async {
    try {
      await remoteDataSource.resetPassword(email);
      return const Right(null);
    } catch (e) {
      return Left(RemoteFailures(e.toString()));
    }
  }
}
