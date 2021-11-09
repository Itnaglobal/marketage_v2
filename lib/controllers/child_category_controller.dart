import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:marketage_v2/models/child_subcategory_model.dart';

class ChildSubCategoryController with ChangeNotifier {
  List<ChildSubcategoryModel> _sss = [];

  Future<bool> getObjects() async {
    var url = Uri.parse("https://marketage.io/api/child-subcategory");

    try {
      http.Response response = await http.get(url);
      var data = json.decode(response.body) as List;

      List<ChildSubcategoryModel> temp = [];
      for (var element in data) {
        ChildSubcategoryModel sss = ChildSubcategoryModel.fromJson(element);

        temp.add(sss);
      }

      _sss = temp;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  List<ChildSubcategoryModel> get sss {
    return [..._sss];
  }
}
