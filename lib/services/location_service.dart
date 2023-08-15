import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  static final String key = 'AIzaSyD_6AN4CVrPSkr3iWDVzO-rtuccuq6jgaM';
  static Future<String> getPlaceId(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=paris&inputtype=textquery&key=AIzaSyD_6AN4CVrPSkr3iWDVzO-rtuccuq6jgaM';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var placeId = json['candidates'][0]['place_id'];
    return placeId;
  }

  static Future<Map<String, dynamic>> getPlace(String input) async {
    var placeId = await getPlaceId(input);
    final String url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var result = json['result'] as Map<String, dynamic>;
    print(result);
    return result;
  }
}
