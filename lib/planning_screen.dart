import 'package:flutter/material.dart';

class PlanningScreen extends StatelessWidget {
  static const routeName = '/Planning';

  Widget returnButton(String image, String name) {
    return Container(
        margin: EdgeInsets.all(6),
        width: 100,
        child: Stack(
          children: [
            FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Image.asset(image)),
            Positioned(
              left: 8,
              child: Container(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        backgroundColor: Color(0xffEEF0F3),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  returnButton('assets/images/body/이두.png', '이두'),
                  returnButton('assets/images/body/가슴.png', '가슴'),
                  returnButton('assets/images/body/어깨.png', '어깨'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  returnButton('assets/images/body/전완.png', '전완'),
                  returnButton('assets/images/body/등.png', '등'),
                  returnButton('assets/images/body/삼두.png', '삼두'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  returnButton('assets/images/body/엉덩이.png', '엉덩이'),
                  returnButton('assets/images/body/코어.png', '코어'),
                  returnButton('assets/images/body/승모.png', '승모'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  returnButton('assets/images/body/허벅지.png', '허벅지'),
                  returnButton('assets/images/body/햄스트링.png', '햄스트링'),
                  returnButton('assets/images/body/종아리.png', '종아리'),
                ],
              ),
            ],
          ),
        ));
  }
}
