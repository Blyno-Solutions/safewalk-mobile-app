import 'package:equatable/equatable.dart';

class {{name.pascalCase()}} extends Equatable {
  final String id;

  const {{name.pascalCase()}}({
    required this.id,
  });

  @override
  List<Object?> get props => [id];
}