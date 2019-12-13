import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_devfest/agenda/IA_pages.dart';
import 'package:flutter_devfest/agenda/cloud_screen.dart';
import 'package:flutter_devfest/agenda/digital_page.dart';
import 'package:flutter_devfest/agenda/diversidad_page.dart';
import 'package:flutter_devfest/agenda/emprendimiento_page.dart';
import 'package:flutter_devfest/agenda/mobile_screen.dart';
import 'package:flutter_devfest/agenda/product_page.dart';
import 'package:flutter_devfest/agenda/web_screen.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgendaPage extends StatelessWidget {
  static const String routeName = "/agenda";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return DefaultTabController(
      length: 8,
      child: DevScaffold(
        title: "Agenda",
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Tools.multiColors[Random().nextInt(4)],
          labelStyle: TextStyle(
            fontSize: 10,
          ),
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              child: Text("Producto"),
              icon: Icon(
                FontAwesomeIcons.productHunt,
                size: 15,
              ),
            ),
            Tab(
              child: Text("Cloud"),
              icon: Icon(
                FontAwesomeIcons.cloud,
                size: 15,
              ),
            ),
            Tab(
              child: Text("Web"),
              icon: Icon(
                FontAwesomeIcons.chrome,
                size: 15,
              ),
            ),
            Tab(
              child: Text("Móvil"),
              icon: Icon(
                FontAwesomeIcons.android,
                size: 15,
              ),
            ),
            Tab(
              child: Text("Digital"),
              icon: Icon(
                FontAwesomeIcons.mobile,
                size: 15,
              ),
            ),
            Tab(
              child: Text("Emprendimiento"),
              icon: Icon(
                FontAwesomeIcons.businessTime,
                size: 15,
              ),
            ),
            Tab(
              child: Text("Diversidad"),
              icon: Icon(
                FontAwesomeIcons.battleNet,
                size: 15,
              ),
            ),
            Tab(
              child: Text("AI"),
              icon: Icon(
                FontAwesomeIcons.chessKing,
                size: 15,
              ),
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
             ProductScreen(
              homeBloc: _homeBloc,
            ),
             CloudScreen(
              homeBloc: _homeBloc,
            ),
             WebScreen(
              homeBloc: _homeBloc,
            ),  
             MobileScreen(
              homeBloc: _homeBloc,
            ),
            DigitalScreen(
              homeBloc: _homeBloc,
            ),
            EmprendimientoScreen(
              homeBloc: _homeBloc,
            ),
             DiversidadScreen(
              homeBloc: _homeBloc,
            ),
            IaScreen(
              homeBloc: _homeBloc,
            ),
          ],
        ),
      ),
    );
  }
}
