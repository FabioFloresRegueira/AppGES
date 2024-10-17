import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static SharedPreferences? _preferences;

  static Future<void> _getPreferences() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

  // Armazenamento em String
  static Future<void> saveString(String key, String value) async {
    await _getPreferences();
    await _preferences!.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    await _getPreferences();
    return _preferences!.getString(key);
  }

  // Armazenamento em um Lista de String
  static Future<void> saveStringList(String key, List<String> value) async {
    await _getPreferences();
    await _preferences!.setStringList(key, value);
  }

  static Future<List<String>?> getStringList(String key) async {
    await _getPreferences();
    return _preferences!.getStringList(key);
  }

  // Armazenamento valores Inteiros
  static Future<void> saveInt(String key, int value) async {
    await _getPreferences();
    await _preferences!.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    await _getPreferences();
    return _preferences!.getInt(key);
  }

  // Armazenamento valores com decimais
  static Future<void> saveDouble(String key, double value) async {
    await _getPreferences();
    await _preferences!.setDouble(key, value);
  }

  static Future<double?> getDouble(String key) async {
    await _getPreferences();
    return _preferences!.getDouble(key);
  }

  // Armazenamento Boleanos True/False
  static Future<void> saveBool(String key, bool value) async {
    await _getPreferences();
    await _preferences!.setBool(key, value);
  }

  static Future<bool?> getBool(String key) async {
    await _getPreferences();
    return _preferences!.getBool(key);
  }
}
