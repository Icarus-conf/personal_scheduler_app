// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;

import 'core/modules/connectivity_module.dart' as _i544;
import 'core/modules/firebase_module.dart' as _i912;
import 'core/modules/task_module.dart' as _i978;
import 'features/auth/data/datasources/auth_data_source.dart' as _i703;
import 'features/auth/data/datasources/auth_data_source_impl.dart' as _i786;
import 'features/auth/data/repository/auth_repo_impl.dart' as _i674;
import 'features/auth/domain/repository/auth_repo.dart' as _i38;
import 'features/auth/domain/use_cases/check_auto_login_use_case.dart' as _i973;
import 'features/auth/domain/use_cases/login_use_case.dart' as _i352;
import 'features/auth/domain/use_cases/logout_use_case.dart' as _i958;
import 'features/auth/domain/use_cases/register_use_case.dart' as _i87;
import 'features/auth/domain/use_cases/reset_password_use_case.dart' as _i276;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;
import 'features/task/data/datasource/local/task_local_data_source.dart'
    as _i570;
import 'features/task/data/datasource/local/task_local_data_source_impl.dart'
    as _i940;
import 'features/task/data/datasource/remote/task_remote_data_source.dart'
    as _i34;
import 'features/task/data/datasource/remote/task_remote_data_source_impl.dart'
    as _i317;
import 'features/task/data/models/task_model.dart' as _i1056;
import 'features/task/data/repository/task_repo_impl.dart' as _i812;
import 'features/task/domain/repository/task_repo.dart' as _i338;
import 'features/task/domain/use_cases/create_task_use_case.dart' as _i375;
import 'features/task/domain/use_cases/delete_task_use_case.dart' as _i816;
import 'features/task/domain/use_cases/read_tasks_use_case.dart' as _i344;
import 'features/task/domain/use_cases/update_task_use_case.dart' as _i304;
import 'features/task/presentation/bloc/task_bloc.dart' as _i719;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final connectivityModule = _$ConnectivityModule();
    final hiveModule = _$HiveModule();
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i895.Connectivity>(() => connectivityModule.connectivity);
    gh.lazySingleton<_i979.Box<_i1056.TaskModel>>(() => hiveModule.taskBox);
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i457.FirebaseStorage>(() => firebaseModule.storage);
    gh.factory<_i34.TaskRemoteDataSource>(
        () => _i317.TaskRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i703.AuthDataSource>(() => _i786.AuthDataSourceImpl(
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
          gh<_i457.FirebaseStorage>(),
        ));
    gh.factory<_i38.AuthRepo>(
        () => _i674.AuthRepoImpl(gh<_i703.AuthDataSource>()));
    gh.factory<_i570.TaskLocalDataSource>(
        () => _i940.TaskLocalDataSourceImpl(gh<_i979.Box<_i1056.TaskModel>>()));
    gh.factory<_i958.LogoutUseCase>(
        () => _i958.LogoutUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i87.RegisterUseCase>(
        () => _i87.RegisterUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i352.LoginUseCase>(
        () => _i352.LoginUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i276.ResetPasswordUseCase>(
        () => _i276.ResetPasswordUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i973.CheckAutoLoginUseCase>(
        () => _i973.CheckAutoLoginUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i338.TaskRepository>(() => _i812.TaskRepositoryImpl(
          remoteDataSource: gh<_i34.TaskRemoteDataSource>(),
          localDataSource: gh<_i570.TaskLocalDataSource>(),
          connectivity: gh<_i895.Connectivity>(),
        ));
    gh.factory<_i304.UpdateTaskUseCase>(
        () => _i304.UpdateTaskUseCase(gh<_i338.TaskRepository>()));
    gh.factory<_i344.ReadTasksUseCase>(
        () => _i344.ReadTasksUseCase(gh<_i338.TaskRepository>()));
    gh.factory<_i816.DeleteTaskUseCase>(
        () => _i816.DeleteTaskUseCase(gh<_i338.TaskRepository>()));
    gh.factory<_i375.CreateTaskUseCase>(
        () => _i375.CreateTaskUseCase(gh<_i338.TaskRepository>()));
    gh.factory<_i363.AuthBloc>(() => _i363.AuthBloc(
          loginUseCase: gh<_i352.LoginUseCase>(),
          registerUseCase: gh<_i87.RegisterUseCase>(),
          resetPasswordUseCase: gh<_i276.ResetPasswordUseCase>(),
          checkAutoLoginUseCase: gh<_i973.CheckAutoLoginUseCase>(),
          logoutUseCase: gh<_i958.LogoutUseCase>(),
        ));
    gh.factory<_i719.TaskBloc>(() => _i719.TaskBloc(
          createTaskUseCase: gh<_i375.CreateTaskUseCase>(),
          updateTaskUseCase: gh<_i304.UpdateTaskUseCase>(),
          deleteTaskUseCase: gh<_i816.DeleteTaskUseCase>(),
          readTasksUseCase: gh<_i344.ReadTasksUseCase>(),
        ));
    return this;
  }
}

class _$ConnectivityModule extends _i544.ConnectivityModule {}

class _$HiveModule extends _i978.HiveModule {}

class _$FirebaseModule extends _i912.FirebaseModule {}
