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
  String id;
  String firstName;
  String lastName;
  String urlPhoto;
  String job;
  String tags;
  String githubUrl;
  String twitterUrl;
  String linkedinUrl;

  Speaker(
      {this.id,
      this.firstName,
      this.lastName,
      this.urlPhoto,
      this.job,
      this.tags,
      this.githubUrl,
      this.twitterUrl,
      this.linkedinUrl
      });

  Speaker.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    urlPhoto = json['url_photo'];
    job = json['job'];
    tags = json['tags'];
    githubUrl = json['github_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['url_photo'] = this.urlPhoto;
    data['job'] = this.job;
    data['tags'] = this.tags;
    data['github_url'] = this.githubUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    return data;
  }
}

List<Speaker> speakers = [
  Speaker(
    urlPhoto:"",
    firstName: "",
    job: "",
    githubUrl: "",
    linkedinUrl: "",
    twitterUrl: "",
  ),
  
];
