import 'dart:convert';

import 'package:ispfinder/controllers/installerController.dart';
import 'package:ispfinder/models/installer.model.dart';

class InstallerServices {
  Future<List<InstallerModel>> getInstallers() async {

    String response = await InstallerController.getInstallers();

    var modelList = InstallerModel.fromJsonToList(jsonDecode(response));
    
    print(modelList);

    return modelList;

  }
}
