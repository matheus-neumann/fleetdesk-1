class User {
  User({
    this.id,
    this.name,
    this.lastName,
    this.email,
    this.phone,
    this.cpf,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String name;
  String lastName;
  String email;
  int phone;
  String cpf;
  String emailVerifiedAt;
  String createdAt;
  String updatedAt;
  String deletedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        cpf: json["cpf"] == null ? null : json["cpf"],
        emailVerifiedAt: json["email_verified_at"] == null
            ? null
            : json["email_verified_at"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        deletedAt: json["deleted_at"] == null ? null : json["deleted_at"],
      );
}
