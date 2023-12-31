class User {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;

  User(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website});

  factory User.fromJson(Map<String, dynamic> data) {
    return User(
        id: data['id'],
        name: data['name'],
        username: data['username'],
        email: data['email'],
        phone: data['phone'],
        website: data['website']);
  }
}
