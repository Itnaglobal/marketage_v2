class ServiceModel {
  late int id;
  late String slug;
  late String title;
  late String subTitle;
  late String img;

  ServiceModel(
      {required this.id,
      required this.slug,
      required this.title,
      required this.subTitle,
      required this.img});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    title = json['title'];
    subTitle = json['sub_title'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['title'] = this.title;
    data['sub_title'] = this.subTitle;
    data['img'] = this.img;
    return data;
  }
}
