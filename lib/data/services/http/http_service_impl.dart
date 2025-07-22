import 'package:dio/dio.dart';
import 'package:hebtest/data/services/http/http_service.dart';
import 'package:hebtest/domain/utils/either/either.dart';

class HttpServiceImpl extends HttpService {
  HttpServiceImpl() : dio = Dio();

  final Dio dio;

  @override
  Future<Either<String, Map<String, dynamic>>> get(
      {required String endpoint}) async {
    final response = await dio.get(endpoint);
    if (response.data is Map<String, dynamic>) {
      return Right(response.data);
    }
    return Left('Error');
  }
}
