import 'package:commerce_app/models/user_model.dart';
import 'package:dio/dio.dart';

class AuthServices {
  final Dio _dio = Dio();
  final String baseUrl = 'https://findfamily.net/eshop/api/buyers';

  Future<UserModel?> login(String email, String password) async {
    try {
      Response response = await _dio.post("$baseUrl/login", data: {
        'email': email,
        'password': password,
        'device_token':
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvZmluZGZhbWlseS5uZXRcL2VzaG9wXC9hcGlcL2J1eWVyc1wvbG9naW4iLCJpYXQiOjE2NDA1MjIzMjksImV4cCI6MTY0MDUyNTkyOSwibmJmIjoxNjQwNTIyMzI5LCJqdGkiOiJtcjVoYVRSN1UyMVNISTc2Iiwic3ViIjozNSwicHJ2IjoiYTA5NDAyMzM1NGE0ZDkyMmE2YmM3MTBjZGZiZTFhNzRmYmEzMDRlNiJ9.HfINV8qaiMeh2NBHLi2BSArqbRKSj5pDi49BoZSMalM',
        'lang': 'ar'
      });
      if (response.statusCode == 200) {
        print(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }


  Future<UserModel?> register(
      String name, String email, String password, String mobile) async {
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


  Future<UserModel?> forget(String email) async {
    try {
      Response response = await _dio.post("$baseUrl/forgetpassword", data: {
        'email': email,
        'lang': 'ar'
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
