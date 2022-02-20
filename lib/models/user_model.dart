class UserModel {
  bool? status;
  String? msg;
  Data? data;

  UserModel({this.status, this.msg, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  Null? countryId;
  Null? cityId;
  Null? stateID;
  String? name;
  String? email;
  Null? dateOfBirth;
  String? mobile;
  String? photo;
  Null? gender;
  Null? detail;
  int? status;
  String? type;
  int? isActivated;
  String? token;
  String? deviceToken;
  String? createdAt;
  String? updatedAt;
  Country? country;
  Null? city;

  Data(
      {this.id,
        this.countryId,
        this.cityId,
        this.stateID,
        this.name,
        this.email,
        this.dateOfBirth,
        this.mobile,
        this.photo,
        this.gender,
        this.detail,
        this.status,
        this.type,
        this.isActivated,
        this.token,
        this.deviceToken,
        this.createdAt,
        this.updatedAt,
        this.country,
        this.city});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    countryId = json['countryId'];
    cityId = json['cityId'];
    stateID = json['stateID'];
    name = json['name'];
    email = json['email'];
    dateOfBirth = json['dateOfBirth'];
    mobile = json['mobile'];
    photo = json['photo'];
    gender = json['gender'];
    detail = json['detail'];
    status = json['status'];
    type = json['type'];
    isActivated = json['is_activated'];
    token = json['token'];
    deviceToken = json['device_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    country =
    json['country'] != null ? new Country.fromJson(json['country']) : null;
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['countryId'] = this.countryId;
    data['cityId'] = this.cityId;
    data['stateID'] = this.stateID;
    data['name'] = this.name;
    data['email'] = this.email;
    data['dateOfBirth'] = this.dateOfBirth;
    data['mobile'] = this.mobile;
    data['photo'] = this.photo;
    data['gender'] = this.gender;
    data['detail'] = this.detail;
    data['status'] = this.status;
    data['type'] = this.type;
    data['is_activated'] = this.isActivated;
    data['token'] = this.token;
    data['device_token'] = this.deviceToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    data['city'] = this.city;
    return data;
  }
}

class Country {
  int? id;
  String? nameAr;
  String? nameEn;
  Null? createdAt;
  Null? updatedAt;

  Country({this.id, this.nameAr, this.nameEn, this.createdAt, this.updatedAt});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name_ar'] = nameAr;
    data['name_en'] = nameEn;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}