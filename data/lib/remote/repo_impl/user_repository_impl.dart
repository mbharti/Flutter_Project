import 'dart:convert';

import 'package:data/remote/network/network.dart';
import 'package:domain/models/user.dart';
import 'package:domain/repositories/user_repository.dart';


class UserRepositoryImpl implements UserRepository {
  final Network network;

  UserRepositoryImpl(this.network);

  @override
  Future<User> getUserById(String id) async {
    final response = await network.get(Uri.parse('https://example.com/users/$id'));

    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body)); //User(id : '1', name: 'Bharti', email: 'netbharti05@gmail.com', age: 20);
    } else {
      throw Exception('Failed to load user');
    }
  }

  Future<User> createUser(User user) async {
    final response = await network.post(
      Uri.parse('https://example.com/users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 201) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create user');
    }
  }
}
