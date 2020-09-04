import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fleetdesk/app/data/model/model.dart';
import 'package:fleetdesk/app/ui/theme/app_strings.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as SS;
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'http://hml.fleetdesk.com.br/api/v1/';

class MyApiClient {
  final http.Client httpClient;
  Dio dio = Dio();
  final secureStorage = SS.FlutterSecureStorage();

  Map<String, String> header = {
    'accept': 'application/json',
  };

  Map<String, String> headerWithToken(String token) {
    Map<String, String> headerWithToken = {
      'accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    return headerWithToken;
  }

//  Map<String, dynamic> register = {
//    'name': 'Matheufwes',
//    'last_name': 'Neufewmann',
//    'cpf': 12379324670,
//    'email': 'matheusneumanndevvb@gmail.com',
//    'phone': 48996466078,
//    'password': '123456789',
//    'password_confirmation': '123456789'
//  };

  MyApiClient({@required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<MyModel> listMyModel =
            jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        return listMyModel;
      } else
        print('erro');
    } catch (_) {}
  }

  getId(id) async {
    try {
      var response = await httpClient.get('baseUrlid');
      if (response.statusCode == 200) {
        //Map<String, dynamic> jsonResponse = json.decode(response.body);
      } else
        print('erro -get');
    } catch (_) {}
  }

  login(Map map) async {
    try {
      var response = await dio.post(baseUrl + 'login',
          options: Options(
              headers: header, contentType: Headers.formUrlEncodedContentType),
          data: map);
      print(response.toString());
      return response;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future<Response> signUp(Map register) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;

    try {
      var response = await dio.post(baseUrl + 'users',
          data: register,
          options: Options(
            headers: header,
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      print(response.statusMessage);
      Get.defaultDialog(
          title: 'success = ${response.data['success'].toString()}',
          middleText: '${response.data['message']}');
      return response;
    } catch (error) {
      print(error.toString());
      Get.defaultDialog(
          title: 'error', middleText: '${error.response.data['message']}');
      return null;
    }
  }

  generateToken(int userId) async {
//    dio.options.contentType = Headers.jsonContentType;

    try {
      var response = await dio.get(baseUrl + 'users/$userId/token',
          options: Options(
            headers: header,
            contentType: Headers.jsonContentType,
          ));
      print(response.data.toString());
      return response;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  activateUser(int userId, Map data) async {
//    dio.options.contentType = Headers.jsonContentType;

    try {
      var response = await dio.post(baseUrl + 'users/$userId/token',
          data: data,
          options: Options(
            headers: header,
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      return response;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  getUser(String email) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;
    final token = await secureStorage.read(key: AppStrings.token);

    try {
      var response = await dio.get(baseUrl + 'users?email=$email',
          options: Options(
            headers: headerWithToken(token),
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      return response;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  associatePlate(Map data) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;
    final token = await secureStorage.read(key: AppStrings.token);

    try {
      var response = await dio.post(baseUrl + 'vehicle/license-plate',
          data: data,
          options: Options(
            headers: headerWithToken(token),
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      print(response.statusMessage);
      return response.data['vehicle_id'];
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  sendPosition(Map data) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;
    final token = await secureStorage.read(key: AppStrings.token);

    try {
      var response = await dio.post(baseUrl + 'position',
          data: data,
          options: Options(
            headers: headerWithToken(token),
            contentType: Headers.jsonContentType,
          ));
      print(response.data.toString());
      print(response.statusMessage);
    } catch (error) {
      print(error.toString());
    }
  }

  sendTextMessage(Map data) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;
    final token = await secureStorage.read(key: AppStrings.token);

    try {
      var response = await dio.post(baseUrl + 'message/text',
          data: data,
          options: Options(
            headers: headerWithToken(token),
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      print(response.statusMessage);
    } catch (error) {
      print(error.toString());
    }
  }

  sendOtherMessage(Map data) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;
    final token = await secureStorage.read(key: AppStrings.token);

    try {
      var response = await dio.post(baseUrl + 'message/other',
          data: data,
          options: Options(
            headers: headerWithToken(token),
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      print(response.statusMessage);
    } catch (error) {
      print(error.toString());
    }
  }

  sendConfirmationMessage(Map data) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;
    final token = await secureStorage.read(key: AppStrings.token);

    try {
      var response = await dio.post(baseUrl + 'message/confirm',
          data: data,
          options: Options(
            headers: headerWithToken(token),
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      print(response.statusMessage);
    } catch (error) {
      print(error.toString());
    }
  }

  getMessages() async {
    dio.options.contentType = Headers.formUrlEncodedContentType;
    final token = await secureStorage.read(key: AppStrings.token);

    try {
      var response = await dio.get(baseUrl + 'message',
          options: Options(
            headers: headerWithToken(token),
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      return response;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
