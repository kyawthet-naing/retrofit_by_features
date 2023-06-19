class UserModel {
  String? createdAt;
  String? name;
  String? avatar;
  String? phone;
  String? address;
  String? id;

  UserModel({
    this.createdAt,
    this.name,
    this.avatar,
    this.phone,
    this.address,
    this.id,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'] as String?;
    name = json['name'] as String?;
    avatar = json['avatar'] as String?;
    phone = json['phone'] as String?;
    address = json['address'] as String?;
    id = json['id'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['createdAt'] = createdAt;
    json['name'] = name;
    json['avatar'] = avatar;
    json['phone'] = phone;
    json['address'] = address;
    json['id'] = id;
    return json;
  }
}
