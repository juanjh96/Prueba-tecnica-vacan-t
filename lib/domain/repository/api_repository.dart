import 'package:prueba_tecnica_juan/domain/model/user_model.dart';

abstract class ApiRepositoryInterface {
  Future<List<User>> getUser();
}
