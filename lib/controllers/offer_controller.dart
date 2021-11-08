import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:marketage_v2/models/offer_model.dart';

class OfferController with ChangeNotifier {
  List<OfferModel> _offers = [];

  Future<bool> getOffers() async {
    var url = Uri.parse("https://marketage.io/api/offers/");

    try {
      http.Response response = await http.get(url);
      var data = json.decode(response.body) as List;
      List<OfferModel> temp = [];
      for (var element in data) {
        OfferModel offermodel = OfferModel.fromJson(element);
        temp.add(offermodel);
      }
      _offers = temp;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  List<OfferModel> get offers {
    return [..._offers];
  }
}
