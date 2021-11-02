import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:marketage_v2/models/services_model.dart';

class ServiceController with ChangeNotifier {
  List<ServiceModel> _services = [];

  Future<bool> getServices() async {
    var url = Uri.parse("https://marketage.io/api/services/");
    // Token will given here //
    try {
      http.Response response = await http.get(url);

      var data = json.decode(response.body) as List;
      List<ServiceModel> temp = [];
      for (var element in data) {
        ServiceModel service = ServiceModel.fromJson(element);
        temp.add(service);
      }
      _services = temp;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  List<ServiceModel> get service {
    return [..._services];
  }
}
