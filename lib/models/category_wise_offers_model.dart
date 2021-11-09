class CategoryWiseOfferModel {
  late int id;
  late String title;
  late String icon;
  late List<String> offers;

  CategoryWiseOfferModel({required this.id, required this.title, required this.icon, required this.offers});

  CategoryWiseOfferModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    icon = json['icon'];
    offers = json['offers'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['offers'] = this.offers;
    return data;
  }
}
