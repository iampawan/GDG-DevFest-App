class Session {
  String sessionId;
  String sessionTitle;
  String sessionDesc;
  String sessionImage;
  String sessionStartTime;
  String sessionTotalTime;
  String sessionLink;
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;

  Session(
      {this.sessionId,
      this.sessionTitle,
      this.sessionDesc,
      this.sessionImage,
      this.sessionStartTime,
      this.sessionTotalTime,
      this.sessionLink,
      this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId});

  Session.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    sessionImage = json['session_image'];
    sessionStartTime = json['session_start_time'];
    sessionTotalTime = json['session_total_time'];
    sessionLink = json['session_link'];
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['session_image'] = this.sessionImage;
    data['session_start_time'] = this.sessionStartTime;
    data['session_total_time'] = this.sessionTotalTime;
    data['session_link'] = this.sessionLink;
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    return data;
  }
}

List<Session> sessions = [
  Session(
    sessionId: "1",
    sessionStartTime: "9:00 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "DevByte: From Zero to ML on Google Cloud Platform",
    speakerImage:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    speakerName: "Max Saltonstall",
    speakerDesc: "Cloud Developer Advocate, Google DevByte speaker",
  ),
  Session(
    sessionId: "2",
    sessionStartTime: "9:30 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "How I Became a Mobile Developer with Firebase and Flutter",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9DRktRcllTZDN1T2VINnhiUC11M2pVUFZFLVI0dVh5czF6d2lKNGRwanJjVjJhWm1zSUJZelVkZzBRaG9uRkNJZmhVZEg3ZGpVV0RhRmpQWXFYeHU0Y1ZDRmROb3FQYnVBQ2VKMWdOSFRHS3B0YWxRLk8xa3k2cVpFOG15UFAyRnk",
    speakerName: "Laura Morinigo",
    speakerDesc: "Software Developer, DMod Labs",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "10:30 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Angular Elements",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
    speakerName: "Jimenez Raul",
    speakerDesc: "Software Engineer, Byte Default",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "11:00 AM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Machine Learning and AutoML on GCP",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
    speakerName: "Sathish V J",
    speakerDesc: "Tech Architect, Investor, Tutor",
  ),
  Session(
    sessionId: "5",
    sessionStartTime: "1:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Top 5 from Firebase Summit '18",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
    speakerName: "Timothy Jordan",
    speakerDesc: "Sr. Staff Developer Advocate, Google",
  ),
  Session(
    sessionId: "6",
    sessionStartTime: "2:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Multiplayer Games with WebXR",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
    speakerName: "Tanay Pant",
    speakerDesc: "Web Developer Advocate, Mozilla Foundation",
  ),
  Session(
    sessionId: "7",
    sessionStartTime: "3:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Mobile Database Persistence",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
    speakerName: "Eric Maxwell",
    speakerDesc: "Software Developer, Big Nerd Ranch",
  ),
  Session(
    sessionId: "8",
    sessionStartTime: "4:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Progressive Experience Web Development",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
    speakerName: "Yohan Totting",
    speakerDesc: "Web Developer Advocate, Google",
  ),
  Session(
    sessionId: "9",
    sessionStartTime: "5:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Kotlin Coroutines",
    speakerImage:
        "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9XdVlxYUljN0RsYm1kejJaZFpkNENVMm1aTWhxU3VhNEtTVEoza3lBYVpDdGJsei1tSFB2ajNDc2FuZEdBbmNOMGlPZGtWRkJicHR6S1R0UVYxc1V2bXk0TWlBbnItWG00a3ZZc0laZ3VmVkg4NU5vLm1jNWdnX1pEZV8yT2FDalM",
    speakerName: "Svetlana Isakova",
    speakerDesc: "Developer Advocate, Jetbrain",
  ),
];
