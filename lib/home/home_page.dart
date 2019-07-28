import 'package:flutter/material.dart';
import 'package:flutter_devfest/config/config_bloc.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        top: false,
        bottom: true,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  ConfigBloc().darkModeOn
                      ? FontAwesomeIcons.lightbulb
                      : FontAwesomeIcons.solidLightbulb,
                  size: 18,
                ),
                onPressed: () {
                  ConfigBloc()
                      .dispatch(DarkModeEvent(!ConfigBloc().darkModeOn));
                },
              )
            ],
          ),
          body: HomeScreen(homeBloc: _homeBloc),
          // drawer: Drawer(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            label: Text("Find a DevFest"),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
