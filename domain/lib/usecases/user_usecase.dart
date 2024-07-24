import 'package:domain/models/user.dart';
import 'package:domain/repositories/user_repository.dart';

class UserUseCase {
  final UserRepository repository;

  UserUseCase(this.repository);

  Future<User> getUserById(String userId) {
    return repository.getUserById(userId);
  }
}
