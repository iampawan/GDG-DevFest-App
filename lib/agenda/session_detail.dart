import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/index.dart';
import 'package:flutter_devfest/home/session.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/tools.dart';

class SessionDetail extends StatelessWidget {
  static const String routeName = "/session_detail";
  final Session session;

  const SessionDetail({Key key, this.session}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
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
                      fontSize: 12,
                      color: Tools.multiColors[Random().nextInt(3)],
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
                '''The async/await feature allows you to write the asynchronous code in a straightforward way, 
                without a long list of callbacks. Used in C# for quite a while already, it has proven to be extremely useful.
                 In Kotlin you have async and await as library functions implemented using coroutines.
                  A coroutine is a light-weight thread that can be suspended and resumed later. 
                  Very precise definition, but might be confusing at first. What 'light-weight thread' means? 
                  How does suspension work? This talk uncovers the magic. We'll discuss the concept of coroutines, 
                  the power of async/await, and how you can benefit from defining your asynchronous computations using suspend function.
                  The content of this video was not produced or created by Google.''',
                textAlign: TextAlign.center,
                style:
                    Theme.of(context).textTheme.caption.copyWith(fontSize: 13),
              ),
            ],
          ),
        ),
      ),
      title: session.speakerName,
    );
  }
}
