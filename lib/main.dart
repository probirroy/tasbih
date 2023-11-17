import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'home.dart';
import 'menu.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbeeh',
      themeMode: ThemeMode.system,
      home: ZoomDrawer(
        homePageXValue: 60,
        shadowXValue: 10,
        backgroundGradient: const LinearGradient(
          colors: [
            Color(0xFF134E5E),
            Color(0xFF71B280),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        shadowColor: Colors.teal,
        homePageContent: const Home(),
        menuPageContent: const Menu(),
      ),
    );
  }
}
