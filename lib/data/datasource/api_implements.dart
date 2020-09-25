import 'dart:async';
import 'package:prueba_tecnica_juan/domain/exeption/app_exeptions.dart';
import 'package:prueba_tecnica_juan/domain/model/user_model.dart';
import 'package:prueba_tecnica_juan/domain/repository/api_repository.dart';
import 'package:prueba_tecnica_juan/static/api_link.dart';
import 'package:http/http.dart' as http;

class ApiImplements extends ApiRepositoryInterface {
  @override
  Future<List<User>> getUser() async {
    final response = await http.get('${ApiLink.api}/users');
    if (response.statusCode == 200) {
      final decode = userFromJson(response.body);
      return decode;
    }
    throw GetUserException();
  }
}
