class Sponsor {
  String name;
  String image;
  String desc;
  String url;
  String logo;

  Sponsor({this.name, this.image, this.desc, this.url, this.logo});

  Sponsor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    desc = json['desc'];
    url = json['url'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['desc'] = this.desc;
    data['url'] = this.url;
    data['logo'] = this.logo;
    return data;
  }
}
