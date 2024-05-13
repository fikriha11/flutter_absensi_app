import 'package:flutter_absensi_app/objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ObjectBox {
  final Store store;
  ObjectBox._create({required this.store});

  static Future<ObjectBox> create() async {
    var dir = await getApplicationDocumentsDirectory();

    Store store = await openStore(directory: p.join(dir.path, 'user_profile'));
    return ObjectBox._create(store: store);
  }
}
