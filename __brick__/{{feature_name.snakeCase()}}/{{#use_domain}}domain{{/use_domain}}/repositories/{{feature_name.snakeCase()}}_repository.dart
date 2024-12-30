import '../../../../core/utils/typedef.dart';
import '../../data/models/{{feature_name.snakeCase()}}_model.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  ResultFuture<{{feature_name.pascalCase()}}Model> get{{feature_name.pascalCase()}}();
}
