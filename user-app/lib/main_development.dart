// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yellow_squash/app/app.dart';
import 'package:yellow_squash/bootstrap.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/fav_provider.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized(); //<----FIX THE PROBLEM

  // Initialize SharedPrefs instance.
  await StorageManager.init();

// Configures dependency injection to init modules and singletons.
  await configureDependencyInjection();
  await bootstrap(
    () => DevicePreview(
      enabled: false,
      builder: (context) => ChangeNotifierProvider(
        create: (context) => FavoritesProvider(),
        child: App(),
      ), // Wrap your app
    ),
  );
}
