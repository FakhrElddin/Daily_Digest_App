import 'package:shared_preferences/shared_preferences.dart';

abstract class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setData(
      {required String key, required dynamic value}) async {
    if (value is String) {
      return await sharedPreferences!.setString(key, value);
    } else if (value is double) {
      return await sharedPreferences!.setDouble(key, value);
    } else if (value is int) {
      return await sharedPreferences!.setInt(key, value);
    } else if (value is List<String>) {
      return await sharedPreferences!.setStringList(key, value);
    } else {
      return await sharedPreferences!.setBool(key, value);
    }
  }

  static dynamic getData({required String key}) {
    return sharedPreferences?.get(key);
  }

  static Future<bool> removeData({required String key}) async {
    return await sharedPreferences!.remove(key);
  }
}
