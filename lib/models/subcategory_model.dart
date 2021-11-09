class SubcategoryModel {
  late int id;
  late String subTitle;
  late String subImg;

  SubcategoryModel({required this.id, required this.subTitle, required this.subImg});

  SubcategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subTitle = json['sub_title'];
    subImg = json['sub_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sub_title'] = this.subTitle;
    data['sub_img'] = this.subImg;
    return data;
  }
}