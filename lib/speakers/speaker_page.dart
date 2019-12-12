import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/home/speaker.dart';
import 'package:flutter_devfest/speakers/speaker_detail.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/tools.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';



class SpeakerPage extends StatelessWidget {
  final List<Speaker> allSpeaker;
  static const String routeName = "/speakers";

  const SpeakerPage({Key key, @required this.allSpeaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    var state = _homeBloc.currentState as InHomeState;
    var speakers = state.speakersData.speakers;
    return DevScaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (c, i) {
          return Card(
            elevation: 0.0,
            child: Padding(
             
                padding: const EdgeInsets.all(12.0),
                child:GestureDetector(
                  child: Row(                 
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ConstrainedBox(
                        constraints: BoxConstraints.expand(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: speakers[i].urlPhoto,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  speakers[i].firstName + " " + speakers[i].lastName,
                                  style: Theme.of(context).textTheme.title,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  width: MediaQuery.of(context).size.width * 0.2,
                                  height: 5,
                                  color: Tools.multiColors[Random().nextInt(4)],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              speakers[i].tags,
                              style: Theme.of(context).textTheme.subtitle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  onTap: (){
                     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SpeakerDetail(
                    speaker: speakers[i],
                  ) 
                  // SessionDetail(),
                ),
              );
                  },
                ),
            ),
          );
        },
        itemCount: speakers.length,
      ),
      title: "Speakers",
    );
  }
}
