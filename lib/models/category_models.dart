class CategoryModel {
  late int id;
  late String slug;
  late String title;
  late String icon;
  late List<int> subcategory;

  CategoryModel(
      {required this.id,
      required this.slug,
      required this.title,
      required this.icon,
      required this.subcategory});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    title = json['title'];
    icon = json['icon'];
    subcategory = json['subcategory'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['subcategory'] = this.subcategory;
    return data;
  }
}
