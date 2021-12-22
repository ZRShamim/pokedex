import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/view/pages/home_page/home_page.dart';
import 'package:pokedex/view/pages/info_page/info_page.dart';

import 'constant/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/info-page', page: () => InfoPage()),
      ],
    );
  }
}
