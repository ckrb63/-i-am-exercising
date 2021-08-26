import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  void goPlanningScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/Planning');
  }

  void goWorkingListScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/WorkingList');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF0F3),
      body: Column(
        children: [
          RaisedButton(
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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => goPlanningScreen(context),
                      child: Container(
                          child: Image.asset(
                        'assets/images/planning_working.png',
                        fit: BoxFit.fill,
                        width: double.infinity,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
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
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'History',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  FlatButton(
                      onPressed: () {
                        goWorkingListScreen(context);
                      },
                      child: Text('click!')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
