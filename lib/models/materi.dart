part of 'models.dart';

class ApiResultModel {
  bool success;
  List<Materi> materi;
  String message;

  ApiResultModel({this.success, this.materi, this.message});

  ApiResultModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      materi = new List<Materi>();
      json['data'].forEach((v) {
        materi.add(new Materi.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.materi != null) {
      data['data'] = this.materi.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Materi {
  int id;
  String judul;
  String detailMateri;
  int kategoriId;
  String tanggal;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  Materi(
      {this.id,
      this.judul,
      this.detailMateri,
      this.kategoriId,
      this.tanggal,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Materi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    judul = json['judul'];
    detailMateri = json['detail_materi'];
    kategoriId = json['kategori_id'];
    tanggal = json['tanggal'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['judul'] = this.judul;
    data['detail_materi'] = this.detailMateri;
    data['kategori_id'] = this.kategoriId;
    data['tanggal'] = this.tanggal;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
