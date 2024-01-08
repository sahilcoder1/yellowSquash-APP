import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yellow_squash/app/app.dart';
import 'package:yellow_squash/bootstrap.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized(); 
  await StorageManager.init();
  await configureDependencyInjection();
  await bootstrap(
    App.new,
  );
}
