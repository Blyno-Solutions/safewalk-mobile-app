import '../entities/{{name.snakeCase()}}.dart';

abstract class {{name.pascalCase()}}Repository {
  Future<List<{{name.pascalCase()}}>> fetchAll();
}