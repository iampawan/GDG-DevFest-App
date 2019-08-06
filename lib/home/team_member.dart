class TeamMember {
  String name;
  String desc;
  String image;
  String info;
  String id;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;

  TeamMember(
      {this.name,
      this.desc,
      this.image,
      this.info,
      this.id,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl});
}

List<TeamMember> members = [
  TeamMember(
    image:
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    name: "Pawan Kumar",
    desc: "Google Developer Expert, Flutter",
    fbUrl: "https://facebook.com/imthepk",
    githubUrl: "https://github.com/iampawan",
    linkedinUrl: "https://linkedin.com/in/imthepk",
    twitterUrl: "https://twitter.com/imthepk",
  )
];
