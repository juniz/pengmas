part of 'models.dart';

class Category {
  final int id;
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.id, this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) =>
        Category(item['id'], item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {
    "id": 1,
    "name": "Mindfullness",
    'courses': 17,
    'image': "assets/images/newpack/6 SCENE.png"
  },
  {
    "id": 2,
    "name": "Kebahagiaan",
    'courses': 25,
    'image': "assets/images/newpack/2 SCENE.png"
  },
  {
    "id": 3,
    "name": "Komunikasi",
    'courses': 13,
    'image': "assets/images/newpack/4 SCENE.png"
  },
  // {"name": "Kepribadian", 'courses': 17, 'image': "assets/images/business.png"},
];
