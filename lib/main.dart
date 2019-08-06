import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:flutter_devfest/utils/simple_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/config_page.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // ? Get Shared Preference Instance for whole app
  Devfest.prefs = await SharedPreferences.getInstance();

  //* To check the app is running in debug and set some variables for that
  Devfest.checkDebug();

  //* Time travel debugging to check app states
  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(ConfigPage());
}
