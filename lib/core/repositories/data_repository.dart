import 'package:dio/dio.dart';
import 'package:traffic_solution_dsc/core/constraints/GlobalString.dart';
import 'package:traffic_solution_dsc/core/models/ErrorResponse/errorResponse.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/response/streetSegmentRespone.dart';
import 'package:traffic_solution_dsc/core/models/streetSegment/streetSegment.dart';
import 'package:traffic_solution_dsc/core/networks/rest_client.dart';

class DataRepository implements RestClient {
  final dio = Dio();
  RestClient? _client;

  DataRepository() {
    // if (kDebugMode) {
    //   dio.interceptors
    //       .add(LogInterceptor(requestBody: true, responseBody: true));
    // }
    dio.options.contentType = Headers.jsonContentType;
    dio.options.responseType = ResponseType.json;
    dio.options.headers['Content-Type'] = 'application/json';
    dio.options.headers['Accept'] = 'application/json';

    /// Add Middleware Authorization
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      options.headers['Content-Type'] = 'application/json';
      options.headers['Accept'] = 'application/json';
      return handler.next(options);
    }));

    /// Middleware Error Handling
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error1, handler) {
          final errorResponse = ErrorResponse.fromJson(error1.response?.data);
          final error = DioError(
            requestOptions: RequestOptions(path: ''),
            error: errorResponse.toJson(),
          );
          return handler.reject(error);
        },
      ),
    );
    _client = RestClient(dio, baseUrl: GlobalConstraint.kBaseUrl);
  }

  @override
  Future<StreetSegmentResponse> getStreetSegments() {
    // TODO: implement getStreetSegments
    return _client!.getStreetSegments();
  }
}
