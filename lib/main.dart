import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';

import 'src/features/auth/data/object_box/objext_box.dart';
import 'src/myapp.dart';

late Store store;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  store = (await ObjectBox.create()).store;
  runApp(const MyApp());
}
