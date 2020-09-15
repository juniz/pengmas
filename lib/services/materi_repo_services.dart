part of 'services.dart';

abstract class MaterisRepo {
  Future<List<Materi>> getMateris(id);
}

class Apiurl {
  static String apiURL =
      "http://rsiaisyiyahnganjuk.com/infy/public/index.php/api/";
}

class MaterisRepoImpl implements MaterisRepo {
  @override
  Future<List<Materi>> getMateris(id) async {
    var params = "materis?kategori_id=$id";

    var response = await http.get(Apiurl.apiURL + params);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Materi> materi = ApiResultModel.fromJson(data).materi;
      return materi;
    } else {
      throw Exception();
    }
  }
}
