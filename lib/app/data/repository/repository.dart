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

  login() {
    apiClient.login();
  }

  signUp(Map register) {
    apiClient.signUp(register);
  }
}
