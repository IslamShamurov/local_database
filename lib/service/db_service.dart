import 'package:hive/hive.dart';
import 'package:local_database/model/user_model.dart';

class DBService {
  var box = Hive.box('user_login');

  void storeUser(String saveName, String name) async {
    box.put(saveName, name);
  }

   String getUser(String saveName) {
    var name = box.get(saveName);
    return name;
  }

  void removeUser(String saveName) async {
    box.delete(saveName);
  }
}
