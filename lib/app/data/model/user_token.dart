import 'package:fleetdesk/app/ui/theme/app_strings.dart';

import 'package:fleetdesk/app/ui/theme/app_strings.dart';

class UserToken {
  String token;
  DateTime creationDate;
  DateTime expirationDate;

  UserToken({this.token, this.creationDate, this.expirationDate});

  factory UserToken.fromJson(Map<String, dynamic> json) => UserToken(
        token: json[AppStrings.token] == null ? null : json[AppStrings.token],
        creationDate: json[AppStrings.creationDate] == null
            ? null
            : DateTime.parse(json[AppStrings.creationDate]),
        expirationDate: json[AppStrings.expirationDate] == null
            ? null
            : DateTime.parse(json[AppStrings.expirationDate]),
      );
}
