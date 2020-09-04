import 'package:dio/dio.dart';
import 'package:fleetdesk/app/data/provider/api.dart';
import 'package:meta/meta.dart';

class Repository {
  final MyApiClient apiClient;

  Repository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }

  getId(id) {
    return apiClient.getId(id);
  }

  login(Map map) async {
    return await apiClient.login(map);
  }

  Future<Response> signUp(Map register) async {
    return await apiClient.signUp(register);
  }

  getUser(String email) async {
    return await apiClient.getUser(email);
  }

  associatePlate(Map data) async {
    return await apiClient.associatePlate(data);
  }

  sendPosition(Map data) async {
    return await apiClient.sendPosition(data);
  }

  generateToken(int userId) async {
    return await apiClient.generateToken(userId);
  }

  activateUser(int userId, Map data) async {
    return await apiClient.activateUser(userId, data);
  }
}
