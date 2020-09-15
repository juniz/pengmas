part of 'models.dart';

class ApiPertanyaan {
  bool success;
  List<Pertanyaan> pertanyaan;
  String message;

  ApiPertanyaan({this.success, this.pertanyaan, this.message});

  ApiPertanyaan.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      pertanyaan = new List<Pertanyaan>();
      json['data'].forEach((v) {
        pertanyaan.add(new Pertanyaan.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.pertanyaan != null) {
      data['data'] = this.pertanyaan.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Pertanyaan {
  int id;
  String pertanyaan;
  String pilihan1;
  String pilihan2;
  int id_latihan;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  Pertanyaan(
      {this.id,
      this.pertanyaan,
      this.pilihan1,
      this.pilihan2,
      this.id_latihan,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Pertanyaan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pertanyaan = json['pertanyaan'];
    pilihan1 = json['pilihan1'];
    pilihan2 = json['pilihan2'];
    id_latihan = json['id_latihan'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pertanyann'] = this.pertanyaan;
    data['pilihan1'] = this.pilihan1;
    data['pilihan2'] = this.pilihan2;
    data['id_latihan'] = this.id_latihan;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
