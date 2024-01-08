import 'package:injectable/injectable.dart';

import 'package:yellow_squash/app/app_router.dart';

@module
abstract class RouterInjection {
  @lazySingleton
  AppRouter router() => AppRouter();
}
