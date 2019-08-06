class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

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

List<Speaker> speakers = [
  Speaker(
    speakerImage:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    speakerName: "Pawan Kumar",
    speakerDesc: "Google Developer Expert, Flutter",
    speakerSession: "Talk: Getting Started With Flutter For Web",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9DRktRcllTZDN1T2VINnhiUC11M2pVUFZFLVI0dVh5czF6d2lKNGRwanJjVjJhWm1zSUJZelVkZzBRaG9uRkNJZmhVZEg3ZGpVV0RhRmpQWXFYeHU0Y1ZDRmROb3FQYnVBQ2VKMWdOSFRHS3B0YWxRLk8xa3k2cVpFOG15UFAyRnk",
    speakerName: "Laura Morinigo",
    speakerDesc: "Software Developer, DMod Labs",
    speakerSession: "How I Became a Mobile Developer with Firebase and Flutter",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "Angular Elements",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
    speakerName: "Jimenez Raul",
    speakerDesc: "Software Engineer, Byte Default",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "Machine Learning and AutoML on GCP",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
    speakerName: "Sathish V J",
    speakerDesc: "Tech Architect, Investor, Tutor",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "Top 5 from Firebase Summit '18",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
    speakerName: "Timothy Jordan",
    speakerDesc: "Sr. Staff Developer Advocate, Google",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "Multiplayer Games with WebXR",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
    speakerName: "Tanay Pant",
    speakerDesc: "Web Developer Advocate, Mozilla Foundation",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "Mobile Database Persistence",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
    speakerName: "Eric Maxwell",
    speakerDesc: "Software Developer, Big Nerd Ranch",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
  Speaker(
    speakerSession: "Progressive Experience Web Development",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
    speakerName: "Yohan Totting",
    speakerDesc: "Web Developer Advocate, Google",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  ),
];
