import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/home_widgets/home_front.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'package:flutter_devfest/utils/devfest.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          SponsorImage(
            img: Devfest.sponsor_google,
            websiteUrl: "http://google.com",
          ),
          SponsorImage(
            img: Devfest.sponsor_rockbite_games,
            websiteUrl: "http://rockbitegames.com",
          ),
          ActionCard(
            icon: FontAwesomeIcons.dollarSign,
            color: Colors.purple,
            title: "Become a sponsor for 2020 GDG events",
            onPressed: () async {
              var emailUrl =
                  '''mailto:gdg.yerevan@gmail.com?subject=Request for Sponsorship 2020''';
              var out = Uri.encodeFull(emailUrl);
              await _launchURL(out);
            },
          ),
        ],
      ),
      title: "Sponsors",
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class SponsorImage extends StatelessWidget {
  final String img;
  final String websiteUrl;

  const SponsorImage({Key key, this.img, this.websiteUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchURL(websiteUrl);
      },
      child: Card(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(img,
              height: 200.0, width: 200.0, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
