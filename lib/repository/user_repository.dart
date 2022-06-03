import 'package:batch28_api_starter/api/user_api.dart';
import 'package:batch28_api_starter/model/user_model.dart';

class UserRespository {
 Future<bool> registerUser(User user) async {
    return await UserApi ().registerUser (user);
}
}