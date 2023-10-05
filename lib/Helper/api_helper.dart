import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/api_model.dart';

class ApiHelper {
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();

  Future<List<ApiModel>?> MultiResponceApi() async {
    String Api = "https://dummyjson.com/products?limit=100";
    http.Response response = await http.get(
      Uri.parse(Api),
    );
    if (response.statusCode == 200) {
      Map decodedData = jsonDecode(response.body);
      List list1 = decodedData['products'];
      List<ApiModel> listData = list1
          .map(
            (e) => ApiModel.formJSON(
              data: e,
            ),
          )
          .toList();
      return listData;
    } else {
      return null;
    }
  }
}
