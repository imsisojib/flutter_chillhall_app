import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chillhall_app.dart';
import 'di_container.dart' as di;

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();  //initializing Dependency Injection
  runApp(
    MultiProvider(
      providers: [
      ],
      child: const ChillHall(),
    ),
  );
}
