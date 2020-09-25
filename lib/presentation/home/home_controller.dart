import 'package:flutter/material.dart';
import 'package:prueba_tecnica_juan/data/datasource/api_implements.dart';
import 'package:prueba_tecnica_juan/domain/exeption/app_exeptions.dart';
import 'package:prueba_tecnica_juan/domain/model/user_model.dart';
import 'package:prueba_tecnica_juan/domain/repository/api_repository.dart';

enum LoginState { loading, complete, error }

class HomeController extends ChangeNotifier {
  var loginState = LoginState.loading;
  List<User> user = [];

  Future<void> getUser() async {
    ApiRepositoryInterface apiRepositoryInterface = ApiImplements();
    try {
      user = await apiRepositoryInterface.getUser();
      loginState = LoginState.complete;
      notifyListeners();
    } on GetUserException catch (_) {
      loginState = LoginState.error;
      notifyListeners();
    }
  }
}
