part of 'models.dart';

class PerintahModel {
  bool success;
  List<Perintah> perintah;
  String message;

  PerintahModel({this.success, this.perintah, this.message});

  PerintahModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      perintah = new List<Perintah>();
      json['data'].forEach((v) {
        perintah.add(new Perintah.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.perintah != null) {
      data['data'] = this.perintah.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Perintah {
  int id;
  String nama;
  String keterangan;
  int materiId;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  Perintah(
      {this.id,
      this.nama,
      this.keterangan,
      this.materiId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Perintah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    keterangan = json['keterangan'];
    materiId = json['id_materi'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['keterangan'] = this.keterangan;
    data['id_materi'] = this.materiId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
