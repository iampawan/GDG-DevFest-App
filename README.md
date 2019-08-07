# GDG DEVFEST APP [![Codemagic build status](https://api.codemagic.io/apps/5d4af19b36524a001caa407a/5d4af19b36524a001caa4079/status_badge.svg)](https://codemagic.io/apps/5d4af19b36524a001caa407a/5d4af19b36524a001caa4079/latest_build) [![Build Status](https://travis-ci.org/iampawan/GDG-DevFest-App.svg?branch=master)](https://travis-ci.org/iampawan/GDG-DevFest-App)

<p align="center">
<img width="800px"  src="https://i.imgur.com/P21Hk0u.png">
</p>
<p align="center">
<a target="_blank" href='http://bit.ly/2GDr18N'><img alt='Get it on Google Play' src='https://goldtonemusicgroup.com/img/goldtone/main-page/news/playstore-badge.png' height='48px'/></a>
<a target="_blank" href='https://apple.co/2YC0Zgb'><img alt='Get it on the App Store' src='https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Download_on_the_App_Store_Badge.svg/1280px-Download_on_the_App_Store_Badge.svg.png' height='48px'/></a>

</p>
<p align="center"><a href="#getting-started">:rocket: Get Started</a></p>

## 📸 ScreenShots

|             Light Theme              |              Dark Theme              |
| :----------------------------------: | :----------------------------------: |
| ![](https://i.imgur.com/ipUdGyk.png) | ![](https://i.imgur.com/u1rCsZ8.png) |
| ![](https://i.imgur.com/rujH2xz.png) | ![](https://i.imgur.com/gOx5T8H.png) |
| ![](https://i.imgur.com/RubqN3Z.png) | ![](https://i.imgur.com/D2Ucb2t.png) |

### Show some :heart: and star the repo to support the project

## Overview

DevFest Mobile application is for all the GDG Devfests around the world. You can see the agenda in the app as well as the speakers and other updates regarding the devfest.

## Technology Stack

- Flutter
- Flutter Bloc
- Firebase (Upcoming)

## Getting Started

1. [Fork repository](https://github.com/iampawan/GDG-DevFest-App/fork) and clone your fork locally
1. Install [Flutter 1.7.8](https://flutter.dev/docs/get-started/install)
1. Install [Android Studio / IntelliJ / VSCode](https://flutter.dev/docs/development/tools/android-studio)
1. [Preparing Release for Android](https://flutter.dev/docs/deployment/android)
1. [Preparing Release for iOS](https://flutter.dev/docs/deployment/ios)

## Building the project

### Missing Key.Properties file

If you try to build the project straight away, you'll get an error complaining that a `key.properties` file is missing and Exit code 1 from: /GDG-DevFest-App-master/android/gradlew app:properties:. To resolve that,

1.  Open [GDG-DevFest-App-master\android\app\build.gradle](https://github.com/iampawan/GDG-DevFest-App/blob/master/android/app/build.gradle) file and comment following lines-

    ```
    //keystoreProperties.load(new FileInputStream(keystorePropertiesFile))

    signingConfigs {
    // release {
    // keyAlias keystoreProperties['keyAlias']
    // keyPassword keystoreProperties['keyPassword']
    // storeFile file(keystoreProperties['storeFile'])
    // storePassword keystoreProperties['storePassword']
    // }
    }
    buildTypes {
    // release {
    // signingConfig signingConfigs.release
    // }
    }
    ```

1.  Open [GDG-DevFest-App-master\lib\utils\devfest.dart](https://github.com/iampawan/GDG-DevFest-App/blob/master/lib/utils/devfest.dart) file and customise the texts according to your needs. Eg-

    ```
        static const String app_name = “Devfest”;
        static const String app_version = “Version 1.0.4”;
        static const int app_version_code = 1;

        //*  Texts
        static const String welcomeText = “Welcome to GDG DevFest”;
        static const String descText =
            ‘’’DevFests are community-led, developer events hosted by GDG chapters around the globe focused on community building & learning about Google’s technologies. Each DevFest is inspired by and uniquely tailored to the needs of the developer community and region that hosts it.’’’;

        //* ActionTexts
        static const String agenda_text = “Agenda”;
        static const String speakers_text = “Speakers”;
        static const String team_text = “Team”;
        static const String sponsor_text = “Sponsors”;
        static const String faq_text = “FAQ”;
        static const String map_text = “Locate Us”;
    ```

1.  Open [GDG-DevFest-App-master\lib\home\session.dart](https://github.com/iampawan/GDG-DevFest-App/blob/master/lib/home/session.dart) file and customise the sessions according to your needs. Eg-

    ```
        List<Session> sessions = [
            Session(
                sessionId: “1”,
                sessionStartTime: “9:00 AM”,
                sessionTotalTime: “30 Mins”,
                sessionTitle: “DevByte: From Zero to ML on Google Cloud Platform”,
                speakerImage:
                    “https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4”,
                speakerName: “Max Saltonstall”,
                speakerDesc: “Cloud Developer Advocate, Google DevByte speaker”,
                track: "cloud"
            ),
        ]
    ```

1.  Open [GDG-DevFest-App-master\lib\home\speaker.dart](https://github.com/iampawan/GDG-DevFest-App/blob/master/lib/home/speaker.dart) file and customise the speakers according to your needs. Eg-

    ```
        List<Speaker> speakers = [
            Speaker(
                speakerImage:
                    “https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4”,
                speakerName: “Pawan Kumar”,
                speakerDesc: “Google Developer Expert, Flutter”,
                speakerSession: “Talk: Getting Started With Flutter For Web”,
                fbUrl: “https://facebook.com/imthepk”,
                githubUrl: “https://github.com/iampawan”,
                linkedinUrl: “https://linkedin.com/in/imthepk”,
                twitterUrl: “https://twitter.com/imthepk”,
            ),
        ]
    ```

1.  Open [GDG-DevFest-App-master\lib\home\team.dart](https://github.com/iampawan/GDG-DevFest-App/blob/master/lib/home/team.dart) file and customise the teams according to your needs. Eg-

    ```
        List<Team> teams = [
            Team(
                name: “Sundar Pichai”,
                desc: “Organizer”,
                contribution: “Google CEO”,
                image:
                    “https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg”,
            ),
        ]
    ```

1.  Open [GDG-DevFest-App-master\lib\map\map_page.dart](https://github.com/iampawan/GDG-DevFest-App/blob/master/lib/map/map_page.dart) file and customise the lat long according to your needs. Eg-

    ```
       static final LatLng myLocation = LatLng(37.42796133580664,       -122.085749655962);
    ```

1.  Open [GDG-DevFest-App-master\lib\sponsors\sponsor_page.dart](https://github.com/iampawan/GDG-DevFest-App/blob/master/lib/sponsors/sponsor_page.dart) file and customise the sponsors data according to your needs. Eg-

    ```
       SponsorImage(
            imgUrl: “https://devfest.gdgkolkata.org/assets/img/logos/gd.png”,
        )
    ```

## Contributing

Awesome! Contributions of all kinds are greatly appreciated. To help smoothen the process we have a few non-exhaustive guidelines to follow which should get you going in no time.

### Using GitHub Issues

- Feel free to use GitHub issues for questions, bug reports, and feature requests
- Use the search feature to check for an existing issue
- Include as much information as possible and provide any relevant resources (Eg. screenshots)
- For bug reports ensure you have a reproducible test case
  - A pull request with a breaking test would be super preferable here but isn't required

### Submitting a Pull Request

- Squash commits
- Lint your code with eslint (config provided)
- Include relevant test updates/additions

## Contributors

**Maintainer:** [Pawan Kumar](https://github.com/iampawan)

## License

Project is published under the [MIT license](/LICENSE.md).
Feel free to clone and modify repo as you want, but don't forget to add reference to authors :)

_GDG DevFest App is not endorsed and/or supported by Google, the corporation._
