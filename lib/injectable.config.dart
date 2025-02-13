// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'features/auth/data/datasources/auth_data_source.dart' as _i703;
import 'features/auth/data/datasources/auth_data_source_impl.dart' as _i786;
import 'features/auth/data/models/firebase_model.dart' as _i231;
import 'features/auth/data/repository/auth_repo_impl.dart' as _i674;
import 'features/auth/domain/repository/auth_repo.dart' as _i38;
import 'features/auth/domain/use_cases/login_use_case.dart' as _i352;
import 'features/auth/domain/use_cases/register_use_case.dart' as _i87;
import 'features/auth/domain/use_cases/reset_password_use_case.dart' as _i276;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;

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
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i457.FirebaseStorage>(() => firebaseModule.storage);
    gh.factory<_i703.AuthDataSource>(() => _i786.AuthDataSourceImpl(
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
          gh<_i457.FirebaseStorage>(),
        ));
    gh.factory<_i38.AuthRepo>(
        () => _i674.AuthRepoImpl(gh<_i703.AuthDataSource>()));
    gh.factory<_i87.RegisterUseCase>(
        () => _i87.RegisterUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i352.LoginUseCase>(
        () => _i352.LoginUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i276.ResetPasswordUseCase>(
        () => _i276.ResetPasswordUseCase(gh<_i38.AuthRepo>()));
    gh.factory<_i363.AuthBloc>(() => _i363.AuthBloc(
          gh<_i352.LoginUseCase>(),
          gh<_i87.RegisterUseCase>(),
          gh<_i276.ResetPasswordUseCase>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i231.FirebaseModule {}
