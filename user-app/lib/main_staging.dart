import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yellow_squash/app/app.dart';
import 'package:yellow_squash/bootstrap.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized(); //<----FIX THE PROBLEM
  // Initialize SharedPrefs instance.
  await StorageManager.init();
// Configures dependency injection to init modules and singletons.
  await configureDependencyInjection();
  await bootstrap(App.new);
}


// mongodb+srv://YELLOWSQUASH:AxD6TsfiR37uB7Un@cluster0.fb9mufh.mongodb.net/YSDB