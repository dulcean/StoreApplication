class UserDTO{
  int id;
  String email;
  String password;

  UserDTO({
    required this.id,
    required this.email,
    required this.password
  });

  factory UserDTO.fromJson(Map<String, dynamic> json) => UserDTO(
    email : json["email"],
    password: json["password"],
    id : json["id"]
  );

  
}