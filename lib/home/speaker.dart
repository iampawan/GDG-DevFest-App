import 'dart:convert';

import 'package:http/http.dart' as http;

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerSession;
  String sessionId;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.speakerSession,
      this.sessionId});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    speakerSession = json['speaker_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['speaker_session'] = this.speakerSession;
    data['session_id'] = this.sessionId;
    return data;
  }
}

Future<Stream<Speaker>> getSpeakers() async {
  var url = "https://storage.googleapis.com/gdg-devfest/speaker-kol.json";

  http.Client client = http.Client();
  http.StreamedResponse streamedResponse =
      await client.send(http.Request('get', Uri.parse(url)));

  return streamedResponse.stream
      .transform(Utf8Decoder())
      .transform(JsonDecoder())
      .expand((jsonBody) => (jsonBody as Map)['speakers'])
      .map((jsonBody) => Speaker.fromJson(jsonBody));
}

/*
 {
  "speakers" : [
    {
      "speaker_image":
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
      "speaker_name": "Pawan Kumar",
      "speaker_desc": "Google Developer Expert, Flutter",
      "speaker_session": "Talk: Getting Started With Flutter For Web",
      "fb_url": "https://facebook.com/imthepk",
      "github_url": "https://github.com/iampawan",
      "linkedin_url": "https://linkedin.com/in/imthepk",
      "twitter_url": "https://twitter.com/imthepk"
    },
    {
      "speaker_image":
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9DRktRcllTZDN1T2VINnhiUC11M2pVUFZFLVI0dVh5czF6d2lKNGRwanJjVjJhWm1zSUJZelVkZzBRaG9uRkNJZmhVZEg3ZGpVV0RhRmpQWXFYeHU0Y1ZDRmROb3FQYnVBQ2VKMWdOSFRHS3B0YWxRLk8xa3k2cVpFOG15UFAyRnk",
      "speaker_name": "Laura Morinigo",
      "speaker_desc": "Software Developer, DMod Labs",
      "speaker_session": "How I Became a Mobile Developer with Firebase and Flutter",
      "fb_url": "https://facebook.com/imthepk",
      "github_url": "https://github.com/iampawan",
      "linkedin_url": "https://linkedin.com/in/imthepk",
      "twitter_url": "https://twitter.com/imthepk"
    },
    {
      "speaker_image":
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
      "speaker_name": "Jimenez Raul",
      "speaker_desc": "Software Engineer, Byte Default",
      "speaker_session": "Angular Elements",
      "fb_url": "https://facebook.com/imthepk",
      "github_url": "https://github.com/iampawan",
      "linkedin_url": "https://linkedin.com/in/imthepk",
      "twitter_url": "https://twitter.com/imthepk"
    },
    {
      "speaker_image":
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
      "speaker_name": "Sathish V J",
      "speaker_desc": "Tech Architect, Investor, Tutor",
      "speaker_session": "Machine Learning and AutoML on GCP",
      "fb_url": "https://facebook.com/imthepk",
      "github_url": "https://github.com/iampawan",
      "linkedin_url": "https://linkedin.com/in/imthepk",
      "twitter_url": "https://twitter.com/imthepk"
    },
    {
      "speaker_image":
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
      "speaker_name": "Timothy Jordan",
      "speaker_desc": "Sr. Staff Developer Advocate, Google",
      "speaker_session": "Top 5 from Firebase Summit '18",
      "fb_url": "https://facebook.com/imthepk",
      "github_url": "https://github.com/iampawan",
      "linkedin_url": "https://linkedin.com/in/imthepk",
      "twitter_url": "https://twitter.com/imthepk"
    },
    {
      "speaker_image":
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
      "speaker_name": "Tanay Pant",
      "speaker_desc": "Web Developer Advocate, Mozilla Foundation",
      "speaker_session": "Multiplayer Games with WebXR",
      "fb_url": "https://facebook.com/imthepk",
      "github_url": "https://github.com/iampawan",
      "linkedin_url": "https://linkedin.com/in/imthepk",
      "twitter_url": "https://twitter.com/imthepk"
    },
    {
      "speaker_image":
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
      "speaker_name": "Eric Maxwell",
      "speaker_desc": "Software Developer, Big Nerd Ranch",
      "speaker_session": "Mobile Database Persistence",
      "fb_url": "https://facebook.com/imthepk",
      "github_url": "https://github.com/iampawan",
      "linkedin_url": "https://linkedin.com/in/imthepk",
      "twitter_url": "https://twitter.com/imthepk"
    },
    {
      "speaker_image":
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
      "speaker_name": "Yohan Totting",
      "speaker_desc": "Web Developer Advocate, Google",
      "speaker_session": "Progressive Experience Web Development",
      "fb_url": "https://facebook.com/imthepk",
      "github_url": "https://github.com/iampawan",
      "linkedin_url": "https://linkedin.com/in/imthepk",
      "twitter_url": "https://twitter.com/imthepk"
    }
  ]
}
 */
