// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:treshop/src/helpers/themes.dart';
import 'package:treshop/src/helpers/themes.dart';
import 'package:treshop/src/pages/bottom_navigation_bar/bottom_navigation_bar_page.dart';

import 'src/providers/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, theme, snapshot) {
          return GetMaterialApp(
            title: 'TRESHOP',
            theme: themeLight(context),
            darkTheme: themeDark(context),
            themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            home:BottomNavigationBarScreen(initialIndex: 0),
          );
        },
      ),
    );
  }
}
