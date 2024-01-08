// ignore_for_file: inference_failure_on_function_return_type, type_annotate_public_apis, constant_identifier_names, unused_field, avoid_positional_boolean_parameters, join_return_with_assignment, lines_longer_than_80_chars, always_declare_return_types

import 'dart:async' show Future;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:yellow_squash/models/user_response.dart';


class StorageManager {
  
  static Future<SharedPreferences> get _instance async =>
      sharedPreferences = await SharedPreferences.getInstance();
  static SharedPreferences? sharedPreferences;


  static Future<SharedPreferences?> init() async {
    sharedPreferences = await _instance;
    return sharedPreferences;
  }

  static String getString(String key, [String? defaultValue]) {
    return sharedPreferences?.getString(key) ?? defaultValue ?? '';
  }

  static Future<bool?> setString(String key, String value) async {
    final prefs = await _instance;
    return prefs.setString(key, value);
  }


  static const String _keyIsUserLoggedIn = '_isUserLoggedIn';
  static const String _KEY_TOKEN = 'accessToken';
  static const String _KEY_SESSION_ID = 'sessionId';
  static const String _KEY_OTP = '000000';
  static const String _KEY_MOBILE_NUMBER = '000000000';
  static const String _KEY_PAGE_COUNT = '-1';
  static const String _KEY_IS_FINGERPRINT_ENABLED = 'bioMetric';
  static const String _KEY_USER_DATA = 'user_data';
  static const String _KEY_LOCATION_LAT_COORDINATE = 'LOCATION_LAT_COORDINATE';
  static const String _KEY_LOCATION_LNG_COORDINATE = 'LOCATION_LNG_COORDINATE';
  static const String _KEY_RECENT_SEARCH_LOCATION = 'RECENT_SEARCH_LOCATION';
  static const String _CART_ITEMS = 'CART_ITEMS';


  static String getToken() {
    final token = sharedPreferences?.getString(_KEY_TOKEN) ?? '';
    return token;
  }

  static setToken(String value) async {
    await sharedPreferences?.setString(_KEY_TOKEN, value);
  }


  static setMobileNumber(String value) async {
    await sharedPreferences?.setString(_KEY_MOBILE_NUMBER, value);
  }

  static String getMobileNumber() {
    final mobileNo = sharedPreferences?.getString(_KEY_MOBILE_NUMBER) ?? '';
    return mobileNo;
  }



  static Future<bool> getIsUserLoggedIn() async {
    return sharedPreferences?.getBool(_keyIsUserLoggedIn) ?? false;
  }

  static saveUserLoggedIn(bool isLoggedIn) async {
    await sharedPreferences?.setBool(_keyIsUserLoggedIn, isLoggedIn);
  }

  static saveUserData(UserData userData) async {
    await sharedPreferences?.setString(
      _KEY_USER_DATA,
      jsonEncode(userData.toJson()),
    );
  }


  static Future<int> getPageCount() async {
    final pageCount = sharedPreferences?.getInt(_KEY_PAGE_COUNT) ?? -1;
    return pageCount;
  }

  static setPageCount(int value) async {
    await sharedPreferences?.setInt(_KEY_PAGE_COUNT, value);
  }

  
  static Future<void> signOut() async {
    await sharedPreferences!.clear();
  }

  static UserData? getUserData() {
    final userDataJson = sharedPreferences?.getString(_KEY_USER_DATA);
    if (userDataJson != null) {
      final userDataMap = jsonDecode(userDataJson) as Map<String, dynamic>;
      return UserData.fromJson(userDataMap);
    }
    return null;
  }
}
