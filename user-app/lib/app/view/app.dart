import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yellow_squash/app/app_router.dart';

import 'package:yellow_squash/modules/di.dart';

import 'package:yellow_squash/utils/common_widgets/theme_notifier.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(),
        child: Builder(
          builder: (context) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerDelegate: AutoRouterDelegate(
                appRouter,
                navigatorObservers: () => [AutoRouteObserver()],
              ),
              routeInformationParser: appRouter.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }
}
