import 'package:hebtest/domain/utils/either/either.dart';

abstract class HttpService {
  Future<Either<String, Map<String, dynamic>>> get({required String endpoint});
}