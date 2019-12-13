import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/speaker.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/tools.dart';


class SpeakerDetail extends StatelessWidget {
  static const String routeName = "speaker_detil";
  final Speaker speaker;

  const SpeakerDetail({Key key,@required this.speaker}) : super(key: key);

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
                  tag: speaker.urlPhoto,
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: CachedNetworkImageProvider(
                      speaker.urlPhoto,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${speaker.tags}",
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
                "${speaker.firstName}" + " " + "${speaker.lastName}",
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
                speaker.job,
                textAlign: TextAlign.center,
                style:
                    Theme.of(context).textTheme.caption.copyWith(fontSize: 13),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      title: speaker.firstName + " " +speaker.lastName,
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Second Route"),
  //     ),
  //     body: Center(
  //       child: RaisedButton(
  //         onPressed: () {
  //           Navigator.pop(context);
  //         },
  //         child: Text('Go back!'),
  //       ),
  //     ),
  //   );
  // }
}