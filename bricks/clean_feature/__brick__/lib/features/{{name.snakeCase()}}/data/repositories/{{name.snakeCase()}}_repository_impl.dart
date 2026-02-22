import '../../domain/entities/{{name.snakeCase()}}.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../datasources/{{name.snakeCase()}}_remote_datasource.dart';
import '../models/{{name.snakeCase()}}_model.dart';

class {{name.pascalCase()}}RepositoryImpl
    implements {{name.pascalCase()}}Repository {

  final {{name.pascalCase()}}RemoteDataSource remoteDataSource;

  {{name.pascalCase()}}RepositoryImpl(this.remoteDataSource);

  @override
  Future<List<{{name.pascalCase()}}>> fetchAll() async {
    final rawList = await remoteDataSource.fetchAll();

    return rawList
        .map((json) => {{name.pascalCase()}}Model.fromJson(json))
        .toList();
  }
}