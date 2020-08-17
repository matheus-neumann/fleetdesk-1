class UserToken {
  String token;
  DateTime creationDate;
  DateTime expirationDate;

  UserToken({this.token, this.creationDate, this.expirationDate});

  factory UserToken.fromJson(Map<String, dynamic> json) => UserToken(
        token: json['token'] == null ? null : json['token'],
        creationDate: json['creation_date'] == null
            ? null
            : DateTime.parse(json['creation_date']),
        expirationDate: json['expiration_date'] == null
            ? null
            : DateTime.parse(json['expiration_date']),
      );
}
