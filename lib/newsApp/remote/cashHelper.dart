
  import 'package:shared_preferences/shared_preferences.dart';

class CashHelper
  {
    static late SharedPreferences sharedPreferences ;

    static init() async
    {
      sharedPreferences= await SharedPreferences.getInstance();
    }

    static Future<bool> putString({
    required String key,
    required String value,
  }) async
    {
    return  await  sharedPreferences.setString(key, value) ;
    }

    static dynamic getString({
      required String key,
  })
    {
    return sharedPreferences.getString(key);
    }

  }