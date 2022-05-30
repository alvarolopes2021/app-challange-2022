import 'dart:convert';

import 'package:ispfinder/controllers/installerController.dart';
import 'package:ispfinder/models/installer.model.dart';

class InstallerServices {
  static Future<List<InstallerModel>> getInstallers() async {

    String response = await InstallerController.getInstallers();

    List<dynamic> map = [];
    
    try {
      map = jsonDecode(response);
    } catch (e) {
      print(e.toString());
    }

    var modelList = InstallerModel.fromJsonToList(map);

    return modelList;
  }
}
