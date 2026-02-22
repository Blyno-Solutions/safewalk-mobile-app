import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/usecases/get_{{name.snakeCase()}}.dart';
import '../../domain/entities/{{name.snakeCase()}}.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final Get{{name.pascalCase()}} get{{name.pascalCase()}};

  {{name.pascalCase()}}Bloc(this.get{{name.pascalCase()}})
      : super({{name.pascalCase()}}Initial()) {
    on<Load{{name.pascalCase()}}>((event, emit) async {
      emit({{name.pascalCase()}}Loading());
      final data = await get{{name.pascalCase()}}();
      emit({{name.pascalCase()}}Loaded(data));
    });
  }
}