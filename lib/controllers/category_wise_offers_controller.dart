import 'package:flutter/cupertino.dart';
import 'package:marketage_v2/models/category_wise_offers_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class CategoryWiseOffersController with ChangeNotifier{
  List<CategoryWiseOfferModel> _categoryWiseOffers = [];

  Future<bool> getCategoryWiseOffers() async{
    var url = Uri.parse("https://marketage.io/api/category-wise-offers");

    try{
      http.Response response = await http.get(url);

      var data = json.decode(response.body) as List;
      List<CategoryWiseOfferModel> temp = [];
      for(var element in data){
        CategoryWiseOfferModel categorywiseoffer = CategoryWiseOfferModel.fromJson(element);
        temp.add(categorywiseoffer);
      }
      _categoryWiseOffers = temp;
      notifyListeners();
      return true;
    }catch (e) {
      return false;
    }
  }

  List<CategoryWiseOfferModel> get categorywiseoffers {
    return [..._categoryWiseOffers];
  }
}