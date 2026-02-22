abstract class {{name.pascalCase()}}RemoteDataSource {
  Future<List<Map<String, dynamic>>> fetchAll();
  Future<Map<String, dynamic>> fetchById(String id);
}

class {{name.pascalCase()}}RemoteDataSourceImpl
    implements {{name.pascalCase()}}RemoteDataSource {

  // TODO: Inject FirebaseFirestore or Dio here
  {{name.pascalCase()}}RemoteDataSourceImpl();

  @override
  Future<List<Map<String, dynamic>>> fetchAll() async {
    // TODO: Implement Firebase call
    return [];
  }

  @override
  Future<Map<String, dynamic>> fetchById(String id) async {
    // TODO: Implement Firebase call
    return {};
  }
}