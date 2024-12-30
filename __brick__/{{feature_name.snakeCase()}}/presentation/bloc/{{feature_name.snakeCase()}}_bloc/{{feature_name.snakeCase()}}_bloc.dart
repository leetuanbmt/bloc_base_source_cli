import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/{{feature_name.snakeCase()}}_model.dart';
import '../../../domain/usecases/{{feature_name.snakeCase()}}_case.dart';

part '{{feature_name.snakeCase()}}_events.dart';
part '{{feature_name.snakeCase()}}_state.dart';
part '{{feature_name.snakeCase()}}_bloc.freezed.dart';

class {{feature_name.pascalCase()}}Bloc extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc({
    required this.{{feature_name.camelCase()}}Case,
  }) : super(const _Initial()) {
    on<{{feature_name.pascalCase()}}Event>((event, emit) {
      event.when(
        started: () async {
          emit(const _Loading());
          final result = await {{feature_name.camelCase()}}Case.call();
          result.when(
            success: ({{feature_name.camelCase()}}) => emit(_Loaded({{feature_name.camelCase()}})),
            failure: (error, stackTrace) {
              if (kDebugMode) {
                print('Error: $error');
                print('StackTrace: $stackTrace');
              }
              emit(_Error(error.toString()));
            },
          );
        },
      );
    });
  }
  final {{feature_name.pascalCase()}}Case {{feature_name.camelCase()}}Case;
}
