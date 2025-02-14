import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/auth/data/datasources/auth_data_source.dart';
import 'package:personal_scheduler_app/features/auth/data/models/user_model.dart';
import 'package:personal_scheduler_app/features/auth/domain/repository/auth_repo.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  final AuthDataSource remoteDataSource;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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

  @override
  Future<Either<RemoteFailures, UserModel?>> checkAutoLogin() async {
    try {
      final User? user = _auth.currentUser;

      if (user != null) {
        final doc = await _firestore.collection('users').doc(user.uid).get();
        if (doc.exists) {
          final userModel = UserModel.fromFirestore(doc.data()!);
          return Right(userModel);
        } else {
          log("No user data found for UID: ${user.uid}");
          return const Right(null);
        }
      } else {
        log("No user is currently logged in");
        return const Right(null);
      }
    } catch (e) {
      log("Error checking auto-login: $e");
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> logoutUser() async {
    try {
      await _auth.signOut();
      return const Right(null);
    } catch (e) {
      log("Failed to log out user: $e");
      return Left(RemoteFailures(e.toString()));
    }
  }
}
