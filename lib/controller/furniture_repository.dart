import 'dart:convert';

import 'package:http/http.dart' as http;

class StoreProducts {
  var url = "https://fakestoreapi.com/products";

  fetchStoreProductsData() async {
    var response = await http.get(Uri.parse(url));
    var finalResponse = await json.decode(response.body);
    return finalResponse;
  }
}
