import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final SharedPreferences sharedPreferences;

  LocalStorageService({required this.sharedPreferences});
}
