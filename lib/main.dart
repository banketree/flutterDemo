import 'package:flutter/material.dart';
import 'package:flutter_demo1/Home.dart';
import 'package:flutter_demo1/demo/navigator_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      locale: Locale('en', 'US'),
//      // locale: Locale('zh', 'CN'),
//      // localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
//      //   return Locale('en', 'US');
//      // },
//      localizationsDelegates: [
//        NinghaoDemoLocalizationsDelegate(),
//        GlobalMaterialLocalizations.delegate,
//        GlobalWidgetsLocalizations.delegate,
//      ],
//      supportedLocales: [
//        Locale('en', 'US'),
//        Locale('zh', 'CN'),
//      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1),
      ),
      debugShowCheckedModeBanner: true,
//      initialRoute: '',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: 'About'),
      },
    );
  }
}
