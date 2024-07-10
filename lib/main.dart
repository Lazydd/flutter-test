import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      initialRoute: RouteNames.mainRoute,
      getPages: RoutePages.pages,
      navigatorObservers: [RoutePages.observer],
    );
  }
}
