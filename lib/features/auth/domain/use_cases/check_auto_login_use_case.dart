import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/auth/data/models/user_model.dart';
import 'package:personal_scheduler_app/features/auth/domain/repository/auth_repo.dart';

@injectable
class CheckAutoLoginUseCase {
  final AuthRepo repository;
  CheckAutoLoginUseCase(this.repository);

  Future<Either<Failures, UserModel?>> call() {
    return repository.checkAutoLogin();
  }
}
