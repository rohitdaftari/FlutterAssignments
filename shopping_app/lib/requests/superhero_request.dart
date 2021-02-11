import 'package:http/http.dart' as http;

class SuperheroRequest {
  //final String name;
  final String su_id;
  static String url = "https://www.superheroapi.com/api.php/310168007993500";

  SuperheroRequest(this.su_id);

  Future<http.Response> fetchSuperhero() {
    return http.get(url + su_id);
  }

  Future<http.Response> fetchImage() {
    return http.get(url + su_id + '/image');
  }
}
