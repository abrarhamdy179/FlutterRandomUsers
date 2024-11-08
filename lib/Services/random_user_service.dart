import 'package:dio/dio.dart';
import 'package:random_user/Models/random_user_model.dart';

class RanfomUserService
{
  static Dio dio = Dio();
  static Future<RandomUserModel> getData () async
  {
    try
        {
          Response response = await dio.get("https://randomuser.me/api/?results=5");
          if(response.statusCode==200)
          {
            return RandomUserModel.ConvertFromJson(response.data);
          }
          throw Exception("Code not Success");
        }
        catch(e)
    {
      throw Exception(e);
    }
  }
}
