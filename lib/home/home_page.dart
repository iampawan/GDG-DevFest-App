import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/home/speaker.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'home_widgets/home_sliding_panel.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return DevScaffold(
      body: SlidingUpPanel(
        parallaxEnabled: true,

        // borderRadius: radius,
        maxHeight: MediaQuery.of(context).size.height * 0.6,
        color: ConfigBloc().darkModeOn ? Colors.black : Colors.white,
        panel: HomeSlidingPanel(),
        collapsed: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          decoration: BoxDecoration(
            color: ConfigBloc().darkModeOn ? Colors.black : Colors.white,
            // borderRadius: radius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 5.0,
                width: MediaQuery.of(context).size.width * 0.08,
                decoration: BoxDecoration(
                  color:
                      ConfigBloc().darkModeOn ? Colors.white : Colors.grey[300],
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CircleAvatar(
                    radius: 15,
                    backgroundImage:
                        CachedNetworkImageProvider(speakers[0].speakerImage),
                  ),
                  Text(
                    "Explore DevFest",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.title,
                  ),
                  InkWell(
                    onTap: () => Share.share("Sharing DevFest App"),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              Offstage()
            ],
          ),
        ),
        body: HomeScreen(homeBloc: _homeBloc),
      ),
      title: "Home",
    );
  }
}
