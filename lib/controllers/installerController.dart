import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:ispfinder/constants.dart';

class InstallerController {
  static Future<String> getInstallers() async {

    Response? response;
    var dio = Dio();

    try {
      response = await dio.get(
        Constants.GET_INSTALLERS,
        options: Options(
          contentType: "application/json",
          headers: {'Content-type': 'application/json', 'Accept': 'application/json',}
        )
      );
    } 
    catch (e) {
      print(e.toString());
    }

    if(response == null){
      return "";
    }      

    return json.encode(response.data);
  }
}
