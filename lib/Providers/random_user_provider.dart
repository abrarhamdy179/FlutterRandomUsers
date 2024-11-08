import 'package:flutter/material.dart';
import '../Models/random_user_model.dart';
import '../Services/random_user_service.dart';

class RandomUserProvider with ChangeNotifier
{
  RandomUserModel? randomUserModel;
  Future<void> getRanfomUserService() async
  {
     randomUserModel = await RanfomUserService.getData();
     notifyListeners();
  }
}