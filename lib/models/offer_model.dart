class OfferModel {
  late int id;
  late String offerTitle;
  late String image;
  late int category;
  late int user;
  late int click;

  OfferModel(
      {required this.id,
      required this.offerTitle,
      required this.image,
      required this.category,
      required this.user,
      required this.click});

  OfferModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    offerTitle = json['offer_title'];
    image = json['image'];
    category = json['category'];
    user = json['user'];
    click = json['click'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['offer_title'] = this.offerTitle;
    data['image'] = this.image;
    data['category'] = this.category;
    data['user'] = this.user;
    data['click'] = this.click;
    return data;
  }
}
