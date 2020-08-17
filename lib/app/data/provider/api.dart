import 'dart:convert';
import 'package:fleetdesk/app/data/model/model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

const baseUrl = 'http://hml.fleetdesk.com.br/api/v1/';

class MyApiClient {
  final http.Client httpClient;
  Dio dio = Dio();

  Map<String, String> headers = {
    'accept': 'application/json',
  };

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

  login() async {
    try {
      var response = await dio.post(baseUrl + 'login',
          options: Options(
              headers: headers, contentType: Headers.formUrlEncodedContentType),
          data: {
            'login': 'matheusneumanndevvb@gmail.com',
            'password': '123456789'
          });
      print(response.toString());
    } catch (error) {
      print(error.toString());
    }
  }

  signUp(Map register) async {
    dio.options.contentType = Headers.formUrlEncodedContentType;

    try {
      var response = await dio.post(baseUrl + 'users',
          data: register,
          options: Options(
            headers: headers,
            contentType: Headers.formUrlEncodedContentType,
          ));
      print(response.data.toString());
      print(response.statusMessage);
      Get.defaultDialog(
          title: 'success = ${response.data['success'].toString()}',
          middleText: '${response.data['message']}');
    } catch (error) {
      print(error.toString());
      Get.defaultDialog(title: 'error', middleText: '${error.toString()}');
    }
  }
}
