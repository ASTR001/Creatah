import 'package:dio/dio.dart';

import '../constants/constants.dart';
import '../model/user_model.dart';

class WebService {

  Future<List<userModel>> fetchUsers() async {
    final response = await Dio().get(Constants.API_URL);
    List<userModel> _userList = [];
    if (response.statusCode == 200) {
      _userList =
          (response.data as List).map((e) => userModel.fromJson(e)).toList();
    }
    return _userList;
  }

}