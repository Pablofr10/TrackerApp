import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iet_sorveteria/pages/home/home_page.dart';
import 'package:iet_sorveteria/pages/teste_page.dart';
import 'package:iet_sorveteria/widgets/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[800],
        accentColor: Colors.amber,
        accentColorBrightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.indigo[50],
        fontFamily: 'Poppins',
      ),
      home: SplashPage(),
    );
  }
}
