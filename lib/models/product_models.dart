part of 'models.dart';

class ProductModel {
  final int id;
  final int userId;
  final String title;
  final String body;

  ProductModel({this.id, this.userId, this.title, this.body});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
