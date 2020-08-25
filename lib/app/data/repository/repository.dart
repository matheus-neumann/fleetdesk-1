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

  signUp(Map register) {
    apiClient.signUp(register);
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
}
