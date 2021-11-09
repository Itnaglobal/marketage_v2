class ChildSubcategoryModel {
  late int id;
  late String childSlug;
  late String childTitle;
  late String childImage;

  ChildSubcategoryModel(
      {required this.id, required this.childSlug, required this.childTitle, required this.childImage});

  ChildSubcategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    childSlug = json['child_slug'];
    childTitle = json['child_title'];
    childImage = json['child_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['child_slug'] = this.childSlug;
    data['child_title'] = this.childTitle;
    data['child_image'] = this.childImage;
    return data;
  }
}
