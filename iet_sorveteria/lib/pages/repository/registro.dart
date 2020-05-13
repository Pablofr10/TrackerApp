class Registro {
  String userName;
  String email;
  String password;
  String nomeCompleto;

  Registro({this.userName, this.email, this.password, this.nomeCompleto});

  Registro.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    email = json['email'];
    password = json['password'];
    nomeCompleto = json['nomeCompleto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['nomeCompleto'] = this.nomeCompleto;
    return data;
  }
}