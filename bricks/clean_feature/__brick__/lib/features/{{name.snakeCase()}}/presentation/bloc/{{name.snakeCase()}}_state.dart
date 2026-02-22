part of '{{name.snakeCase()}}_bloc.dart';

abstract class {{name.pascalCase()}}State extends Equatable {
  @override
  List<Object?> get props => [];
}

class {{name.pascalCase()}}Initial extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Loading extends {{name.pascalCase()}}State {}

class {{name.pascalCase()}}Loaded extends {{name.pascalCase()}}State {
  final List<{{name.pascalCase()}}> data;

  {{name.pascalCase()}}Loaded(this.data);

  @override
  List<Object?> get props => [data];
}