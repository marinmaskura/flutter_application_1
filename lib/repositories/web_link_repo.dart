
import 'package:flutter/services.dart';
import 'package:flutter_application_1/model/web_link_model.dart';

class WebRepo {
  static Future<List<WebModel>> getWebLink() async{
    final respons = await rootBundle.loadString('assets/json/web_link.json');
    if (respons == null) {
      return[

      ];
    } else {
    }
    return webModelFromJson(respons);
  }
}