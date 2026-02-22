import '../entities/{{name.snakeCase()}}.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';

class Get{{name.pascalCase()}} {
  final {{name.pascalCase()}}Repository repository;

  Get{{name.pascalCase()}}(this.repository);

  Future<List<{{name.pascalCase()}}>> call() {
    return repository.fetchAll();
  }
}