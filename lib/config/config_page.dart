import 'package:flutter/material.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/home/home_page.dart';
import 'package:flutter_devfest/utils/devfest.dart';

class ConfigPage extends StatefulWidget {
  static const String routeName = "/";
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  ConfigBloc configBloc;

  @override
  void initState() {
    super.initState();
    setupApp();
  }

  setupApp() {
    configBloc = ConfigBloc();
    configBloc.darkModeOn =
        Devfest.prefs.getBool(Devfest.darkModePref) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Devfest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //* Custom Google Font
        fontFamily: Devfest.google_sans_family,
        primarySwatch: Colors.blue,
        brightness: configBloc.darkModeOn ? Brightness.dark : Brightness.light,
      ),
      home: HomePage(),
    );
  }
}
