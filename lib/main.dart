import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/config_page.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ),
  );

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // ? Get Shared Preference Instance for whole app
  Devfest.prefs = await SharedPreferences.getInstance();

  runApp(ConfigPage());
}
