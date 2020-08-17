class UsersProperties {
  UsersProperties({
    this.name,
    this.lastName,
    this.cpf,
    this.email,
    this.phone,
    this.password,
    this.passwordConfirmation,
  });

  String name;
  String lastName;
  int cpf;
  String email;
  int phone;
  String password;
  String passwordConfirmation;

  factory UsersProperties.fromJson(Map<String, dynamic> json) =>
      UsersProperties(
        name: json["name"] == null ? null : json["name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        cpf: json["cpf"] == null ? null : json["cpf"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        password: json["password"] == null ? null : json["password"],
        passwordConfirmation: json["password_confirmation"] == null
            ? null
            : json["password_confirmation"],
      );
}
