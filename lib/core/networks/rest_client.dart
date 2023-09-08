import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:traffic_solution_dsc/core/constraints/GlobalString.dart';
import 'package:http_parser/http_parser.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/response/streetSegmentRespone.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';

part 'rest_client.g.dart';
//retrofit
@RestApi(baseUrl: GlobalConstraint.kBaseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/api/SegmentStreet/GetAllSegment?page=1&size=20')
  Future<StreetSegmentResponse> getStreetSegments();
}
