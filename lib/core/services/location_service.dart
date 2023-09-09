import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:traffic_solution_dsc/core/constraints/GlobalString.dart';

class LocationService {
  static final String key = GlobalConstraint.GoogleAPIKey;
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

  static void main() async {
    final params = {
      'annotations': 'maxspeed',
      'overview': 'full',
      'geometries': 'geojson',
      'access_token':
          'pk.eyJ1IjoibWFuaGhvZGluaCIsImEiOiJjbGxuaWpyZTMwMHVtM2VuMTdnc29mZWR1In0.xbj1J-Vq2UqbLSVCL0fe9Q',
    };

    final url = Uri.parse(
            'https://api.mapbox.com/directions/v5/mapbox/driving/-122.39636,37.79129;-122.39732,37.79283;-122.39606,37.79349')
        .replace(queryParameters: params);

    final res = await http.get(url);
    final status = res.statusCode;
    if (status != 200) throw Exception('http.get error: statusCode= $status');

    print(res.body);
  }

  static void route() async {
    //   final params = {
    //     'access_token':
    //         'pk.eyJ1IjoibWFuaGhvZGluaCIsImEiOiJjbGxuaWpyZTMwMHVtM2VuMTdnc29mZWR1In0.xbj1J-Vq2UqbLSVCL0fe9Q',
    //   };

    //   final url = Uri.parse(
    //           'https://api.mapbox.com/matching/v5/mapbox/driving/-117.17282,32.71204;-117.17288,32.71225;-117.17293,32.71244;-117.17292,32.71256;-117.17298,32.712603;-117.17314,32.71259;-117.17334,32.71254')
    //       .replace(queryParameters: params);

    //   final res = await http.get(url);
    //   final status = res.statusCode;
    //   if (status != 200) throw Exception('http.get error: statusCode= $status');

    //   print(res.body);
    final headers = {
      'accept': '*/*',
      'Content-Type': 'application/json',
    };

    final params = {
      'key': 'QaDHsyMVJAx8DeAIGLvYbciKZpHEh9on',
    };

    final data =
        '{\n  "supportingPoints": [\n    {\n      "latitude": 52.5093,\n      "longitude": 13.42936\n    },\n    {\n      "latitude": 52.50844,\n      "longitude": 13.42859\n    }\n  ]\n}';

    final url = Uri.parse(
            'https://api.tomtom.com/routing/10/calculateRoute/52.50931%2C13.42936%3A52.50274%2C13.43872/json')
        .replace(queryParameters: params);

    final res = await http.post(url, headers: headers, body: data);
    final status = res.statusCode;
    if (status != 200) throw Exception('http.post error: statusCode= $status');

    print(res.body);
  }
}
