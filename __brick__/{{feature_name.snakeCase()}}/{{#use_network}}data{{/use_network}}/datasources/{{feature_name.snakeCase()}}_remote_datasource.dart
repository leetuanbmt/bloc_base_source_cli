import '../../../../core/state/base_bloc/mixin/api_error_handler_mixin.dart';
import '../../../../core/utils/typedef.dart';

import '../models/{{feature_name.snakeCase()}}_model.dart';
import '../services/{{feature_name.snakeCase()}}_service.dart';


abstract class {{feature_name.pascalCase()}}RemoteDataSource with ApiHandlerMixin{
  ResultFuture<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}();
}

class {{feature_name.pascalCase()}}RemoteDataSourceImpl extends {{feature_name.pascalCase()}}RemoteDataSource {
  {{feature_name.pascalCase()}}RemoteDataSourceImpl({required this.service});
  final {{feature_name.pascalCase()}}Service service;

  @override
  ResultFuture<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}() {
    return request(service.get{{feature_name.pascalCase()}}());
  }
}
