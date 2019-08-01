<p align="center">
<img width="800px"  src="https://i.imgur.com/P21Hk0u.png">
</p>
<p align="center">
<a href='http://bit.ly/2GDr18N'><img alt='Get it on Google Play' src='https://goldtonemusicgroup.com/img/goldtone/main-page/news/playstore-badge.png' height='48px'/></a>
<a href='https://apple.co/2YC0Zgb'><img alt='Get it on the App Store' src='https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Download_on_the_App_Store_Badge.svg/1280px-Download_on_the_App_Store_Badge.svg.png' height='48px'/></a>

</p>
<p><a href="#getting-started">:rocket: Get Started</a></p>

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

## Building the project

### Missing Key.Properties file

If you try to build the project straight away, you'll get an error complaining that a `key.properties` file is missing and Exit code 1 from: /GDG-DevFest-App-master/android/gradlew app:properties:. To resolve that,

1.  Open r\GDG-DevFest-App-master\android\app\build.gradle file and comment following lines-

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
