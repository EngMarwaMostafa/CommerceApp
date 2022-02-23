class CategoryModel {
  bool? status;
  String? msg;
  List<Data>? data;

  CategoryModel({this.status, this.msg, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  Name? name;
  String? icon;
  String? image;
  String? slug;
  int? status;
  int? top;
  String? createdAt;
  String? updatedAt;
  String? title;
  String? imge;

  Data(
      {this.id,
        this.name,
        this.icon,
        this.image,
        this.slug,
        this.status,
        this.top,
        this.createdAt,
        this.updatedAt,
        this.title,
        this.imge});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    icon = json['icon'];
    image = json['image'];
    slug = json['slug'];
    status = json['status'];
    top = json['top'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    title = json['title'];
    imge = json['imge'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['icon'] = this.icon;
    data['image'] = this.image;
    data['slug'] = this.slug;
    data['status'] = this.status;
    data['top'] = this.top;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['title'] = this.title;
    data['imge'] = this.imge;
    return data;
  }
}

class Name {
  String? ar;
  String? en;

  Name({this.ar, this.en});

  Name.fromJson(Map<String, dynamic> json) {
    ar = json['ar'];
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ar'] = this.ar;
    data['en'] = this.en;
    return data;
  }
}