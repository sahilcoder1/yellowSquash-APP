import 'package:flutter/foundation.dart';

import 'package:yellow_squash/models/expert_response.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/models/health_pediavideo_response.dart';
import 'package:yellow_squash/models/programs_response.dart';
import 'package:yellow_squash/models/webinar_response/webinar_data.dart';
import 'package:yellow_squash/models/webinars_description.dart';

class FavoritesProvider extends ChangeNotifier {
  FavoritesProvider();
  // Define fields to store favorite items like programs, experts, etc.
  List<ProgramData> favoritePrograms = [];
  List<ExpertData> favoriteExperts = [];
  List<HealthPediaData> favoriteHealthPedia = [];
  List<HealthPediaVideoData> favoriteHealthPediaVideo = [];
  List<WebinarData> favoriteWebinars = [];
    List<WebinarDescriptionData> favoriteWebinarDescriptions = [];
  // List<ExpertWebinarData> favoriteWebinarDescriptions = [];

  // Add methods to add and remove items from favorites
  void addToFavorites(ProgramData program) {
    favoritePrograms.add(program);
    notifyListeners();
  }

  void removeFromFavorites(ProgramData program) {
    favoritePrograms.remove(program);
    notifyListeners();
  }

  void addToExpertFavorites(ExpertData expert) {
    favoriteExperts.add(expert);
    notifyListeners();
  }

  void removeExpertFromFavorites(ExpertData expert) {
    favoriteExperts.remove(expert);
    notifyListeners();
  }

  void addToHealthPediaDataFavorites(HealthPediaData healthPediaData) {
    favoriteHealthPedia.add(healthPediaData);
    notifyListeners();
  }

  void removeToHealthPediaDataFavorites(HealthPediaData healthPediaData) {
    favoriteHealthPedia.remove(healthPediaData);
    notifyListeners();
  }

  void addToHealthPediaVideoDataFavorites(
      HealthPediaVideoData healthPediaVideoData) {
    favoriteHealthPediaVideo.add(healthPediaVideoData);
    notifyListeners();
  }

  void removeFromHealthPediaVideoDataFavorites(
      HealthPediaVideoData healthPediaVideoData) {
    favoriteHealthPediaVideo.remove(healthPediaVideoData);
    notifyListeners();
  }

  void addToWebinarDataFavorites(WebinarData webinarData) {
    favoriteWebinars.add(webinarData);
    notifyListeners();
  }

  void removeFromWebinarDataFavorites(WebinarData webinarData) {
    favoriteWebinars.remove(webinarData);
    notifyListeners();
  }
}
