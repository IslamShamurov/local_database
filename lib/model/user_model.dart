class User {
  late String email;
   String? password;
   String? number;
   String? address;

  User({required this.email,this.password,this.number,this.address});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    number = json['number'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email,
      'password': password,
      'number': number,
      'address': address,
    };
    return map;
  }
}
