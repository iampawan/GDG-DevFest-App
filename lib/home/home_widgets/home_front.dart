import 'package:flutter/material.dart';
import 'package:flutter_devfest/utils/devfest.dart';

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
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10.0,
              children: <Widget>[
                RaisedButton(
                  child: Text("Schedule"),
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
                  onPressed: () {},
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
              ],
            ),
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
