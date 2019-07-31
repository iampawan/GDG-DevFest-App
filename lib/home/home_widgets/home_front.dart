import 'package:flutter/material.dart';
import 'package:flutter_devfest/agenda/agenda_page.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/faq/faq_page.dart';
import 'package:flutter_devfest/find_devfest/find_devfest_page.dart';
import 'package:flutter_devfest/speakers/speaker_page.dart';
import 'package:flutter_devfest/sponsors/sponsor_page.dart';
import 'package:flutter_devfest/team/team_page.dart';
import 'package:flutter_devfest/universal/image_card.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget actions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 10.0,
        children: <Widget>[
          RaisedButton(
            child: Text("Agenda"),
            shape: StadiumBorder(),
            color: Colors.red,
            colorBrightness: Brightness.dark,
            onPressed: () => Navigator.pushNamed(context, AgendaPage.routeName),
          ),
          RaisedButton(
            child: Text("Speakers"),
            shape: StadiumBorder(),
            color: Colors.green,
            colorBrightness: Brightness.dark,
            onPressed: () =>
                Navigator.pushNamed(context, SpeakerPage.routeName),
          ),
          RaisedButton(
            child: Text("Sponsors"),
            shape: StadiumBorder(),
            color: Colors.orange,
            colorBrightness: Brightness.dark,
            onPressed: () =>
                Navigator.pushNamed(context, SponsorPage.routeName),
          ),
          RaisedButton(
            child: Text("Team"),
            shape: StadiumBorder(),
            color: Colors.purple,
            colorBrightness: Brightness.dark,
            onPressed: () => Navigator.pushNamed(context, TeamPage.routeName),
          ),
          RaisedButton(
            child: Text("FAQ"),
            shape: StadiumBorder(),
            color: Colors.brown,
            colorBrightness: Brightness.dark,
            onPressed: () => Navigator.pushNamed(context, FaqPage.routeName),
          ),
          RaisedButton(
            child: Text("Find a DevFest"),
            shape: StadiumBorder(),
            color: Colors.blue,
            colorBrightness: Brightness.dark,
            onPressed: () =>
                Navigator.pushNamed(context, FindDevFestPage.routeName),
          ),
        ],
      );

  Widget socialActions(context) => Wrap(
        alignment: WrapAlignment.center,
        spacing: 10.0,
        children: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.facebookF),
            onPressed: () async {
              await _launchURL("https://facebook.com/imthepk");
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.twitter),
            onPressed: () async {
              await _launchURL("https://twitter.com/imthepk");
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.linkedinIn),
            onPressed: () async {
              _launchURL("https://linkedin.com/in/imthepk");
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.youtube),
            onPressed: () async {
              await _launchURL("https://youtube.com/mtechviral");
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.meetup),
            onPressed: () async {
              await _launchURL("https://meetup.com/");
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.envelope),
            onPressed: () async {
              var emailUrl =
                  '''mailto:mtechviral@gmail.com?subject=Support Needed For DevFest App&body={Name: Pawan Kumar},Email: pawan221b@gmail.com}''';
              var out = Uri.encodeFull(emailUrl);
              await _launchURL(out);
            },
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
              img: ConfigBloc().darkModeOn
                  ? Devfest.banner_dark
                  : Devfest.banner_light,
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
