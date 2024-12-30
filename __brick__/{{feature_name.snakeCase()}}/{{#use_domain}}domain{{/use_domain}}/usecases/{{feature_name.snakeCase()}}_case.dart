import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../../data/models/{{feature_name.snakeCase()}}_model.dart';
import '../repositories/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}Case implements UsecaseWithoutParams<{{feature_name.pascalCase()}}Model> {
  {{feature_name.pascalCase()}}Case({required this.repository});
  final {{feature_name.pascalCase()}}Repository repository;

  @override
  ResultFuture<{{feature_name.pascalCase()}}Model> call() {
    return repository.get{{feature_name.pascalCase()}}();
  }
}
