import 'package:get_storage/get_storage.dart';

class AppSharedPreferenceStorage {
  AppSharedPreferenceStorage() : _storage = GetStorage();
  final GetStorage _storage;

  Future<void> setData(String key, dynamic value) async {
    return _storage.write(key, value);
  }

  String? getString(String key) {
    return _storage.read(key);
  }

  Future<int?> getInt(String key) async {
    return _storage.read(key);
  }

  bool? getBool(String key) {
    return _storage.read(key);
  }

  Future<dynamic> getData(String key) async {
    return _storage.read(key);
  }

  Future<void> clearData() async {
    return _storage.erase();
  }

  Future<void> removeData(String key) async {
    return _storage.remove(key);
  }
}
//storage.setData("key", value);
// String? stringValue = storage.getString("key");
// // And so on...
