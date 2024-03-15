import 'package:graduation_project_fitting_app/core/config/constants.dart';
import 'package:http/http.dart' as http;

class ApiManager {


  fetchDataSources(){
    Uri.https(
      Constants.baseUrl,
      "/categories"
    );
    // http.get(url);
  }

}