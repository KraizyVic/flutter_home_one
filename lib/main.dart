import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:homeone/pages/home_page.dart';
import 'package:homeone/pages/settings_page.dart';
import 'package:homeone/pages/welcome_page.dart';
import 'package:homeone/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // INITIALIZE HIVE
 await Hive.initFlutter();
  // OPEN THE BOX
 await Hive.openBox("mySwitchBox");
  runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          )
      );
      SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
          )
      );

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return MaterialApp(
          home: WelcomePage(),
          debugShowCheckedModeBanner: false,
          initialRoute: '/welcomePage',
          routes: {
            '/welcomePage': (context) => WelcomePage(),
            '/homePage': (context) => HomePage(),
            '/settingsPage':(context) => SettingsPage(),
          },
          theme: Provider.of<ThemeProvider>(context).themeData,
    );

  }
}
