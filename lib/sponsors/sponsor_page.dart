import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child: CachedNetworkImage(
              imageUrl:
                  "https://devfest.gdgkolkata.org/assets/img/logos/gd.png",
              height: 200.0,
              width: 200.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 0.0,
            child: CachedNetworkImage(
              imageUrl:
                  "https://devfest.gdgkolkata.org/assets/img/jetbrains.png",
              height: 200.0,
              width: 200.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 0.0,
            child: CachedNetworkImage(
              fit: BoxFit.contain,
              imageUrl:
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Kotlin-logo.svg/220px-Kotlin-logo.svg.png",
              height: 200.0,
              width: 200.0,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            elevation: 0.0,
            child: CachedNetworkImage(
              imageUrl:
                  "https://images.g2crowd.com/uploads/product/image/large_detail/large_detail_0016c93c710cf35990b999cba3a59bae/firebase.png",
              height: 200.0,
              width: 200.0,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      title: "Sponsors",
    );
  }
}
