import 'package:flutter/material.dart';
import 'package:flutter_devfest/speakers/speaker_page.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeFront extends StatelessWidget {
  List<Widget> devFestTexts(context) => [
        Text(
          Devfest.welcomeText,
          style: Theme.of(context).textTheme.headline,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Devfest.descText,
          style: Theme.of(context).textTheme.caption,
          textAlign: TextAlign.center,
        ),
      ];

  Widget actions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 10.0,
        children: <Widget>[
          RaisedButton(
            child: Text("Agenda"),
            shape: StadiumBorder(),
            color: Colors.red,
            colorBrightness: Brightness.dark,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("Speakers"),
            shape: StadiumBorder(),
            color: Colors.green,
            colorBrightness: Brightness.dark,
            onPressed: () {
              Navigator.pushNamed(context, SpeakerPage.routeName);
            },
          ),
          RaisedButton(
            child: Text("Sponsors"),
            shape: StadiumBorder(),
            color: Colors.orange,
            colorBrightness: Brightness.dark,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("Team"),
            shape: StadiumBorder(),
            color: Colors.purple,
            colorBrightness: Brightness.dark,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("FAQ"),
            shape: StadiumBorder(),
            color: Colors.brown,
            colorBrightness: Brightness.dark,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("Find a DevFest"),
            shape: StadiumBorder(),
            color: Colors.blue,
            colorBrightness: Brightness.dark,
            onPressed: () {},
          ),
        ],
      );

  Widget socialActions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 20.0,
        children: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.facebookF),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.twitter),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.linkedinIn),
            onPressed: () {},
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(
              img: Devfest.home_img,
            ),
            SizedBox(
              height: 20,
            ),
            ...devFestTexts(context),
            SizedBox(
              height: 20,
            ),
            actions(context),
            SizedBox(
              height: 20,
            ),
            socialActions(context)
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String img;

  const ImageCard({Key key, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      padding: const EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
    );
  }
}
