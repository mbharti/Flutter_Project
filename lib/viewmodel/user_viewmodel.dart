import 'package:domain/models/user.dart';
import 'package:domain/usecases/user_usecase.dart';

class UserViewModel{
  final UserUseCase userUseCase;

  UserViewModel(this.userUseCase);

  Future<User> getUser()
  {
    return userUseCase.getUserById("1");
  }
}
