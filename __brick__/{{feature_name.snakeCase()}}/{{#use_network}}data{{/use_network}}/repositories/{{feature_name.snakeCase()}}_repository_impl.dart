import '../../../../core/utils/typedef.dart';
import '../../domain/repositories/{{feature_name.snakeCase()}}_repository.dart';
import '../datasources/{{feature_name.snakeCase()}}_remote_datasource.dart';
import '../models/{{feature_name.snakeCase()}}_model.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  {{feature_name.pascalCase()}}RepositoryImpl(this.datasource);
  final {{feature_name.pascalCase()}}RemoteDataSource datasource;

  @override
  ResultFuture<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}() {
    return datasource.get{{feature_name.pascalCase()}}();
  }
}
