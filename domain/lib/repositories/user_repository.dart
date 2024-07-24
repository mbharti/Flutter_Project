import '../models/user.dart';

abstract class UserRepository {
  Future<User> getUserById(String id);
}
