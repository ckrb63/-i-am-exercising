import 'package:flutter/material.dart';
import 'package:i_am_exercising/mainscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I AM WORKING OUT',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(4, 138, 191, 1),
        //accentColor: Colors.amber,
        //canvasColor: Color.fromRGBO(255, 254, 229, 1),
      ),
      home: MainScreen(),

      routes: {
        
        //'/': (ctx) => TabsScreen(),
        //CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        //MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
