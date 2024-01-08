import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/modules/di.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencyInjection({
  Environment environment = prod,
}) async =>
    getIt.init(environment: environment.name);
