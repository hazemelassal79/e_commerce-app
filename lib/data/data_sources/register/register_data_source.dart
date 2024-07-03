import 'package:dio/dio.dart';

class RegisterDataSource {
  final Dio _dio;
  RegisterDataSource(this._dio);

  Future<Response> register() async {
    return await _dio.post("/api/v1/auth/signup",
        data: {
      "name": "Ahmed Abd Al-Muti",
      "email": "ahmedmutti@gmail.com",
      "password": "Ahmed@123",
      "rePassword": "Ahmed@123",
      "phone": "01010700700"
      }
    );
  }
}
