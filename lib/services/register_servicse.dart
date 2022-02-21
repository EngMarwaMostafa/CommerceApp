import 'package:commerce_app/models/user_model.dart';
import 'package:dio/dio.dart';

class RegisterServices {
  final Dio _dio = Dio();
  final String baseUrl = 'https://findfamily.net/eshop/api/buyers';

  Future<UserModel?> register(String name, String email, String password, String mobile ) async {
    try {
      Response response = await _dio.post("$baseUrl/register", data: {
        'name': name,
        'email': email,
        'password': password,
        'mobile': mobile,
      });
      if (response.statusCode == 200) {
        print(response.data);
      }
    } catch (e) {
      print(e);
    }

    return null;
  }
}
