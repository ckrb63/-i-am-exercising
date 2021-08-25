import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF0F3),
      body: Column(
        children: [
          FlatButton(
            padding: EdgeInsets.zero,
            onPressed: null,
            child: Container(
                color: Theme.of(context).primaryColor,
                height: 330,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/main_image.png',
                  fit: BoxFit.fitWidth,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Container(
                        child: Image.asset(
                      'assets/images/planning_working.png',
                      fit: BoxFit.fill,
                      width: double.infinity,
                    )),
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Container(
                        child: Image.asset(
                          'assets/images/working.png',
                          fit: BoxFit.fitHeight,
                          width: double.infinity,
                        )),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
