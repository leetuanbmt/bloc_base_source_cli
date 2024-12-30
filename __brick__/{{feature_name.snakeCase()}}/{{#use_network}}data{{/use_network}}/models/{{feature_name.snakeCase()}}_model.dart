import 'package:freezed_annotation/freezed_annotation.dart';
part '{{feature_name.snakeCase()}}_model.freezed.dart';
part '{{feature_name.snakeCase()}}_model.g.dart';

@freezed
class {{feature_name.pascalCase()}}Model {
  const factory {{feature_name.pascalCase()}}Model({
    required int id,
  }) = _{{feature_name.pascalCase()}}Model;

  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{feature_name.pascalCase()}}ModelFromJson(json);
}
