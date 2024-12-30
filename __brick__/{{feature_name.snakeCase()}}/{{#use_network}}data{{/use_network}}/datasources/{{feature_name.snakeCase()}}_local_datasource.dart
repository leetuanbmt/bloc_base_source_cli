import '../services/{{feature_name.snakeCase()}}_service.dart';

abstract class {{feature_name.pascalCase()}}LocalDataSource {
  Future<void> get{{feature_name.pascalCase()}}();
}

class {{feature_name.pascalCase()}}LocalDataSourceImpl extends {{feature_name.pascalCase()}}LocalDataSource {
  {{feature_name.pascalCase()}}LocalDataSourceImpl({required this.service});
  final {{feature_name.pascalCase()}}Service service;

  @override
  Future<void> get{{feature_name.pascalCase()}}() {
    return service.get{{feature_name.pascalCase()}}();
  }
}
