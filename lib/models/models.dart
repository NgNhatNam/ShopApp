class UserModel {
  String? keylogin; 
  String? username;
  String? email;
  String? password;

  UserModel();

  UserModel.fromJson(Map<String, dynamic> json) {
    keylogin = json['keylogin'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'keylogin': keylogin,
      'username': username,
      'email': email,
      'password': password,
    };
  }
}

