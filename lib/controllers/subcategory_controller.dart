import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:marketage_v2/models/subcategory_model.dart';



class SubcategoryController with ChangeNotifier{
  List<SubcategoryModel> _subs = [];

  Future<bool> getSubs() async {
    var url = Uri.parse("https://marketage.io/api/sub-category");

    try{
      http.Response response = await http.get(url);

      var data = json.decode(response.body) as List;

      List<SubcategoryModel> temp = [];
      for (var element in data){
        SubcategoryModel subs = SubcategoryModel.fromJson(element);
        temp.add(subs);
      }

      _subs = temp;
      notifyListeners();
      return true;
    }
    catch(e) {
      return false;
    }

  }

  List<SubcategoryModel> get subs {
    return [..._subs];
  }

}
