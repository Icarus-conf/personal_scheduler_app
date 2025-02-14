// import 'package:injectable/injectable.dart';
// import 'package:personal_scheduler_app/features/auth/domain/use_cases/login_use_case.dart';
// import 'package:personal_scheduler_app/features/auth/domain/use_cases/register_use_case.dart';
// import 'package:personal_scheduler_app/features/auth/domain/use_cases/reset_password_use_case.dart';
// import 'package:personal_scheduler_app/features/auth/presentation/bloc/auth_bloc.dart';
// import 'package:personal_scheduler_app/injectable.dart';

// @module
// abstract class AuthBlocModule {
//   @preResolve
//   @lazySingleton
//   Future<AuthBloc> get authBloc async {
//     final loginUseCase = await getIt.getAsync<LoginUseCase>();
//     final registerUseCase = await getIt.getAsync<RegisterUseCase>();
//     final resetPasswordUseCase = await getIt.getAsync<ResetPasswordUseCase>();

//     return AuthBloc(
//       loginUseCase: loginUseCase,
//       registerUseCase: registerUseCase,
//       resetPasswordUseCase: resetPasswordUseCase,
//     );
//   }
// }
