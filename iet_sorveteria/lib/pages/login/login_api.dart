import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:iet_sorveteria/pages/repository/usuario.dart';

class LoginApi {
  static Future<Usuario> login(String login, String senha) async {
    try {
      var url = 'https://carros-springboot.herokuapp.com/api/v2/login';

      Map<String, String> headers = {"Content-Type": "application/json "};

      Map params = {"username": login, "password": senha};

      String s = json.encode(params);

      var response = await http.post(url, body: s, headers: headers);

      Map mapResponse = json.decode(response.body);
      print(response.body);
      
    } catch (error, exception) {
      
      
    }
  }
}
