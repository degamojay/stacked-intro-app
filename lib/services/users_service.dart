import 'package:dio/dio.dart';

class UsersService {
  final _dio = Dio();
  Future<List<String>> getUsers() async {
    List<String> users = [];
    try {
      final response = await _dio
          .getUri(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 500) {
        throw Exception();
      }
      users = [
        response.data[0]['name'],
        response.data[1]['name'],
        response.data[2]['name'],
      ];
      return users;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}