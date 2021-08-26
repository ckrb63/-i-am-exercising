import 'package:flutter/material.dart';
import 'package:i_am_exercising/main_screen.dart';
import 'package:i_am_exercising/planning_screen.dart';
import 'package:i_am_exercising/working_list_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

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
        PlanningScreen.routeName: (ctx) => PlanningScreen(),
        WorkingListScreen.routeName: (ctx) => WorkingListScreen(),
        //MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
