part of 'models.dart';

class TugasMindfullness {
  bool success;
  List<TugasMindfull> tugas;
  String message;

  TugasMindfullness({this.success, this.tugas, this.message});

  TugasMindfullness.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      tugas = new List<TugasMindfull>();
      json['data'].forEach((v) {
        tugas.add(new TugasMindfull.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.tugas != null) {
      data['data'] = this.tugas.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class TugasMindfull {
  int id;
  String nama;
  Null detail;
  String createdAt;
  String updatedAt;

  TugasMindfull(
      {this.id, this.nama, this.detail, this.createdAt, this.updatedAt});

  TugasMindfull.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    detail = json['detail'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['detail'] = this.detail;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
