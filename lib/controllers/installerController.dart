import 'package:dio/dio.dart';
import 'package:ispfinder/constants.dart';

class InstallerController {

  static Future<String> getInstallers() async {
    Response response;
    var dio = Dio();

    response = await dio.get(Constants.GET_INSTALLERS);
    
    print(response.data.toString());

    return response.data.toString();
  }
}
