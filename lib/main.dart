import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:taekibloc1/gen/assets.gen.dart';
import 'package:taekibloc1/my_colors.dart';
import 'package:taekibloc1/splash_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: solIdColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: solIdColors.systemNavigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa', ''), // farsi, no country code
      ],
      theme: ThemeData(
        
        brightness:Brightness.light ,
        textTheme: const TextTheme(
          
          headline1: TextStyle(

              fontFamily: 'dana', fontSize: 16.0, fontWeight: FontWeight.w700,
                color: solIdColors.postertitle,
              ),
          subtitle1: TextStyle(

              fontFamily: 'dana', fontSize: 14.0, fontWeight: FontWeight.w300,
                color: solIdColors.postersubTitle,
              ),  
          subtitle2: TextStyle(
              fontFamily: 'dana',
             fontSize: 16.0, fontWeight: FontWeight.w300,
                color: Color.fromARGB(197, 255, 255, 255),
              ),  
          headline2: TextStyle(
              fontFamily: 'dana',
              fontSize: 14.0,
              fontWeight: FontWeight.w300,
              color: Colors.white),
          bodyText1: TextStyle(
              fontFamily: 'dana', fontSize: 13.0, fontWeight: FontWeight.w300),
          headline3: TextStyle(
              fontFamily: 'dana',
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color:solIdColors.seeMore),
          headline4: TextStyle(
              fontFamily: 'dana',
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.green),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
