import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/{{feature_name.snakeCase()}}_model.dart';

part '{{feature_name.snakeCase()}}_service.g.dart';

@RestApi()
abstract class {{feature_name.pascalCase()}}Service {
  factory {{feature_name.pascalCase()}}Service(Dio dio, {String ? baseUrl}) = _{{feature_name.pascalCase()}}Service;
  @GET('/{{feature_name.snakeCase()}}')
  Future<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}();
}