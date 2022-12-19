class UserModel {
  String fullName, nickName, phoneNumber, Adress, image;

  UserModel(
      {required this.Adress,
      required this.fullName,
      required this.image,
      required this.nickName,
      required this.phoneNumber});

  factory UserModel.fromJson(Map data) {
  

    return data.isNotEmpty ? UserModel(
        Adress: data['address'] ?? "",
        fullName: data['fullname'] ?? "",
        nickName: data['nickname'] ?? "",
        image: data['image'] ?? "",
        phoneNumber: data['phonenum'] ?? "") : UserModel(
        Adress:  "",
        fullName:"",
        nickName:  "",
        image:"",
        phoneNumber:"");
  }

  Map<String, String> toJson() {
    return {
      'fullname': fullName,
      'address': Adress,
      'nickname': nickName,
      'phonenum': phoneNumber,
      'image': image
    };
  }
}
