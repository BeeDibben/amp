import 'package:flutter/material.dart';
import 'package:amp/Screens/home.dart';


void main()  {
  runApp(const AMP());
}

class AMP extends StatelessWidget{

  const AMP({Key? key,}) : super(key: key);

  @override


  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Amient Music Project', // Defines the name of the application

      themeMode: ThemeMode.system, // When the app opens checks the default system colour scheme (light mode vs dark mode) and sets the app to it
      theme: lightMode,
      darkTheme: darkMode,
      home: const Home(),
    );
  }
}


ThemeData lightMode = ThemeData( // Defines the colours used in the light mode of the app
  colorScheme: const ColorScheme.light(
          brightness: Brightness.light,
          primary:  Color.fromRGBO(229, 117, 35, 1), // colour 3 in the palette burnt orangeish
          onPrimary:  Color.fromRGBO(38, 23, 26, 1), // colour 1 in the palette Almost black, but softer
          secondary:  Color.fromRGBO(145, 66, 15, 1), //colour 2 in the palette, Darker burnt orange
          onSecondary:  Color.fromRGBO(235, 235, 237, 1), //colour 1 
          background:  Color.fromRGBO(235, 235, 237, 1), // colour 5, off white
          onBackground:  Color.fromRGBO(38, 23, 26, 1), // colour 1
          surface:  Color.fromRGBO(250, 197, 155, 1), // colour 4 in the palette, pale orange
          onSurface:  Color.fromRGBO(38, 23, 26, 1), // colour 1
  )
);

ThemeData darkMode = ThemeData( // Defines the colours used in the light mode of the app
  colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
          primary:  Color.fromRGBO(229, 117, 35, 1), // colour 3 in the palette burnt orangeish
          onPrimary:  Color.fromRGBO(38, 23, 26, 1), // colour 1 in the palette Almost black, but softer
          secondary:  Color.fromRGBO(145, 66, 15, 1), //colour 2 in the palette, Darker burnt orange
          onSecondary:  Color.fromRGBO(235, 235, 237, 1), //colour 1 
          background:  Color.fromRGBO(38, 23, 26, 1), // colour 1,// colour 1 in the palette Almost black, but softer
          onBackground:  Color.fromRGBO(235, 235, 237, 1), // colour 5, off white
          surface:  Color.fromRGBO(250, 197, 155, 1), // colour 4 in the palette, pale orange
          onSurface:  Color.fromRGBO(38, 23, 26, 1), // colour 1
  )
);

class AppColours{
  static const black =  Color.fromRGBO(38, 23, 26, 0);// colour 1 in the palette Almost black, but softer
  static const darkOrange =   Color.fromRGBO(145, 66, 15, 0); //colour 2 in the palette, Darker burnt orange
  static const midOrange =  Color.fromRGBO(229, 117, 35, 0); // colour 3 in the palette burnt orangeish
  static const lightOrange =  Color.fromRGBO(250, 197, 155, 0); // colour 4 in the palette, pale orange
  static const offWhite =  Color.fromRGBO(235, 235, 237, 0); // colour 5, off white
}