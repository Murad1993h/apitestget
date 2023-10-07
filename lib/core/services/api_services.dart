import 'package:apiclassone/Models/user_model.dart';
import 'package:apiclassone/utils/config.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  // Get all User
  static Future<UserModel?> getUsers() async {
    // 2nd steep  base url ta set kore nete hobe
    // String
    // baseurl/endpoint
    final apiUrl = '${AppConfig.baseUrl}/users';

    // 1st steep parse kora
    final request = await http.get(Uri.parse(apiUrl));

    // IF else Logic

    if (request.statusCode == 200) {
      // Valid request
      print(request.body);
      return userModelFromJson(request.body);

      // return userModelFromeJson(request.body);
    } else {
      // Invalid request
      print('Somthing is worng ok ');

      // Do somthing
    }
    return null;
  }

  // Get All Posyt
}

// kajj gula ses hole main.dart e chole jete hobe implement korar jonno, maine.dart e implement korte hobe
