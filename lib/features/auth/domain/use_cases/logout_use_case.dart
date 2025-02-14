import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_scheduler_app/core/error/failures.dart';
import 'package:personal_scheduler_app/features/auth/domain/repository/auth_repo.dart';

@injectable
class LogoutUseCase {
  final AuthRepo repository;
  LogoutUseCase(this.repository);

  Future<Either<Failures, void>> call() {
    return repository.logoutUser();
  }
}
