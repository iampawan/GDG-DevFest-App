import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Devfest {
  static const String app_name = "Devfest";
  static const String app_version = "Version: 1.0.0";
  static const int app_version_code = 1;
  static const String app_color = "#ffd7167";
  static Color primaryAppColor = Colors.white;
  static Color secondaryAppColor = Colors.black;
  static const String google_sans_family = "GoogleSans";

  //* Preferences
  static SharedPreferences prefs;
  static const String loggedInPref = "loggedInPref1";
  static const String displayNamePref = "displayNamePref";
  static const String emailPref = "emailPref";
  static const String phonePref = "phonePref";
  static const String photoPref = "photoPref";
  static const String isAdminPref = "isAdminPref";
  static const String darkModePref = "darkModePref";
}
