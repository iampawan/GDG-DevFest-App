import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/session.dart';
import 'package:flutter_devfest/home/speaker.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SessionDetail extends StatelessWidget {
  static const String routeName = "/session_detail";
  final Session session;

  SessionDetail({Key key, @required this.session}) : super(key: key);

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].twitterUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].linkedinUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].githubUrl);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Hero(
                  tag: session.speakerImage,
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: CachedNetworkImageProvider(
                      session.speakerImage,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${session.speakerDesc}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                      fontSize: 14,
                      color: Tools.multiColors[Random().nextInt(4)],
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${session.sessionTitle}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.title.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                session.sessionDesc,
                textAlign: TextAlign.center,
                style:
                    Theme.of(context).textTheme.caption.copyWith(fontSize: 13),
              ),
              SizedBox(
                height: 20,
              ),
              socialActions(context),
            ],
          ),
        ),
      ),
      title: session.speakerName,
    );
  }
}
