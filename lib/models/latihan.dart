part of 'models.dart';

class ApiLatihan {
  bool success;
  List<Latihan> materi;
  String message;

  ApiLatihan({this.success, this.materi, this.message});

  ApiLatihan.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      materi = new List<Latihan>();
      json['data'].forEach((v) {
        materi.add(new Latihan.fromJson(v));
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

class Latihan {
  int id;
  String panduan;
  String url_gambar;
  String url_audio;
  String url_video;
  int id_materi;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  Latihan(
      {this.id,
      this.panduan,
      this.url_gambar,
      this.url_audio,
      this.url_video,
      this.id_materi,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Latihan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    panduan = json['panduan'];
    url_gambar = json['url_gambar'];
    url_audio = json['url_audio'];
    url_video = json['url_video'];
    id_materi = json['id_materi'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['oanduan'] = this.panduan;
    data['url_gambar'] = this.url_gambar;
    data['url_audio'] = this.url_audio;
    data['url_video'] = this.url_video;
    data['id_materi'] = this.id_materi;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
