import 'package:injectable/injectable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

@module
abstract class ConnectivityModule {
  @injectable
  Connectivity get connectivity => Connectivity();
}
