part of '{{name.snakeCase()}}_bloc.dart';

abstract class {{name.pascalCase()}}Event extends Equatable {
  @override
  List<Object?> get props => [];
}

class Load{{name.pascalCase()}} extends {{name.pascalCase()}}Event {}