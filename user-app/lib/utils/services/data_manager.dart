import 'package:yellow_squash/models/switch_profile_response.dart';

class DataManager {
  factory DataManager() => _singleton;
  DataManager._internal();
  static final DataManager _singleton = DataManager._internal();
  static DataManager get shared => _singleton;

  List<String> programIdsList = [];

  List<SwitchProfileData> SwitchData = [];
  
}
