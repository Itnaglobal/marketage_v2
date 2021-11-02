class OfferModel {
  late int id;
  late String slug;
  late String offerTitle;
  late String seoTitle;
  late String image;
  late Null offerVideo;
  late Null document;
  late String description;
  late bool isPopular;
  late bool popWeb;
  late bool isPro;
  late int click;
  late int impressions;
  late int orderCount;
  late int cancellation;
  late String offerStatus;
  late bool isPremium;
  late bool isBronze;
  late String bronzeCreated;
  late bool isSilver;
  late Null silverCreated;
  late bool isGold;
  late Null goldCreated;
  late bool isPending;
  late String createdAt;
  late bool hasChecked;
  late bool alreadyClicked;
  late int points;
  late int user;
  late int service;
  late int category;
  late int subCategory;
  late int childSubcategory;
  late List<int> extraImages;
  late List<int> packages;

  OfferModel(
      {required this.id,
      required this.slug,
      required this.offerTitle,
      required this.seoTitle,
      required this.image,
      this.offerVideo,
      this.document,
      required this.description,
      required this.isPopular,
      required this.popWeb,
      required this.isPro,
      required this.click,
      required this.impressions,
      required this.orderCount,
      required this.cancellation,
      required this.offerStatus,
      required this.isPremium,
      required this.isBronze,
      required this.bronzeCreated,
      required this.isSilver,
      this.silverCreated,
      required this.isGold,
      this.goldCreated,
      required this.isPending,
      required this.createdAt,
      required this.hasChecked,
      required this.alreadyClicked,
      required this.points,
      required this.user,
      required this.service,
      required this.category,
      required this.subCategory,
      required this.childSubcategory,
      required this.extraImages,
      required this.packages});

  OfferModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    offerTitle = json['offer_title'];
    seoTitle = json['seo_title'];
    image = json['image'];
    offerVideo = json['offer_video'];
    document = json['document'];
    description = json['description'];
    isPopular = json['is_popular'];
    popWeb = json['pop_web'];
    isPro = json['is_pro'];
    click = json['click'];
    impressions = json['impressions'];
    orderCount = json['order_count'];
    cancellation = json['cancellation'];
    offerStatus = json['offer_status'];
    isPremium = json['is_premium'];
    isBronze = json['is_bronze'];
    bronzeCreated = json['bronze_created'];
    isSilver = json['is_silver'];
    silverCreated = json['silver_created'];
    isGold = json['is_gold'];
    goldCreated = json['gold_created'];
    isPending = json['is_pending'];
    createdAt = json['created_at'];
    hasChecked = json['has_checked'];
    alreadyClicked = json['already_clicked'];
    points = json['points'];
    user = json['user'];
    service = json['service'];
    category = json['category'];
    subCategory = json['sub_category'];
    childSubcategory = json['child_subcategory'];
    extraImages = json['extra_images'].cast<int>();
    packages = json['packages'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['offer_title'] = this.offerTitle;
    data['seo_title'] = this.seoTitle;
    data['image'] = this.image;
    data['offer_video'] = this.offerVideo;
    data['document'] = this.document;
    data['description'] = this.description;
    data['is_popular'] = this.isPopular;
    data['pop_web'] = this.popWeb;
    data['is_pro'] = this.isPro;
    data['click'] = this.click;
    data['impressions'] = this.impressions;
    data['order_count'] = this.orderCount;
    data['cancellation'] = this.cancellation;
    data['offer_status'] = this.offerStatus;
    data['is_premium'] = this.isPremium;
    data['is_bronze'] = this.isBronze;
    data['bronze_created'] = this.bronzeCreated;
    data['is_silver'] = this.isSilver;
    data['silver_created'] = this.silverCreated;
    data['is_gold'] = this.isGold;
    data['gold_created'] = this.goldCreated;
    data['is_pending'] = this.isPending;
    data['created_at'] = this.createdAt;
    data['has_checked'] = this.hasChecked;
    data['already_clicked'] = this.alreadyClicked;
    data['points'] = this.points;
    data['user'] = this.user;
    data['service'] = this.service;
    data['category'] = this.category;
    data['sub_category'] = this.subCategory;
    data['child_subcategory'] = this.childSubcategory;
    data['extra_images'] = this.extraImages;
    data['packages'] = this.packages;
    return data;
  }
}
