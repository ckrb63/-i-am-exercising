import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dayroutine.dart';

class ProgramInfo extends StatefulWidget {
  static const routeName = '/Info';
  const ProgramInfo({Key? key}) : super(key: key);

  @override
  _ProgramInfoState createState() => _ProgramInfoState();
}

class _ProgramInfoState extends State<ProgramInfo> {
  @override
  Widget build(BuildContext context) {
    DayRoutineList list = DayRoutineList();
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 330,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/GermanVolumeTraining.png',fit: BoxFit.cover,),
                Positioned(
                  left: 13,
                  bottom: 13,
                  child: Text('German\nVolume\nTraining',style: TextStyle(color: Colors.white,
                  fontSize: 22),),
                ),
                Positioned(
                    right: 30,
                    bottom: 13,
                    child: Row(children: [
                  FaIcon(FontAwesomeIcons.solidHeart,color: Colors.white,size: 16,),
                  Text('  10,000+',style: TextStyle(color: Colors.white),)
                ],))
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xffEEF0F3),
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DayRoutineCard(day: 1, point: 'Back',list: list,),
                  DayRoutineCard(day: 2, point: 'Chest',list: list,),
                  DayRoutineCard(day: 3, point: 'Leg',list: list,),
                  DayRoutineCard(day: 4, point: 'Shoulder',list: list,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DayRoutineCard extends StatefulWidget {
  final int day;
  final String point;
  final DayRoutineList list;
  const DayRoutineCard({
    Key? key,
    required this.day,
    required this.point,
    required this.list,
  }) : super(key: key);

  @override
  _DayRoutineCardState createState() => _DayRoutineCardState();
}

class _DayRoutineCardState extends State<DayRoutineCard> {
  bool touched = false;
  @override
  Widget build(BuildContext context) {
    return touched ? Column(
      children: [
        BigRoutineCard(day: widget.day, point: widget.point,list: widget.list,),
        SizedBox(
          height: 14,
          child: TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size(0,0),
              padding: EdgeInsets.zero,
            ),
            onPressed: (){
              setState(() {
                touched = !touched;
              });
            },
            child: Container(
              width: double.infinity,
              child: Icon(Icons.keyboard_arrow_up,color: Colors.white,size: 17,),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
            ),
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 14,),
          ),
        )
      ],
    ):
    TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
        onPressed: (){
        setState(() {
          touched = !touched;
        });
        },
        child: SmallRoutineCard(day: widget.day, point: widget.point));
  }
}

class SmallRoutineCard extends StatelessWidget {
  const SmallRoutineCard({
    Key? key,
    required this.day,
    required this.point,
  }) : super(key: key);

  final int day;
  final String point;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 16,right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        height: 42,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Hero(
                tag: day,
                child: Text('Day ${day.toString()} - $point',style: TextStyle(
                  color: Color(0xff048ABF),
                  fontSize: 18,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.keyboard_arrow_down,color: Color(0xff048ABF),),
            )
          ],
        ),
      ),
    );
  }
}

class BigRoutineCard extends StatefulWidget {
  const BigRoutineCard({
    Key? key,
    required this.day,
    required this.point,
    required this.list,
  }) : super(key: key);

  final int day;
  final String point;
  final DayRoutineList list;


  @override
  _BigRoutineCardState createState() => _BigRoutineCardState();
}

class _BigRoutineCardState extends State<BigRoutineCard> with TickerProviderStateMixin{

  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 250),
      upperBound: 1,
      vsync: this,
    );
    controller.forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 16,right: 16),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
        ),
        height: 50 + animation.value*150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Hero(
                tag: widget.day,
                child: Text('Day ${widget.day.toString()} - ${widget.point}',style: TextStyle(
                  color: Color(0xff048ABF),
                  fontSize: 18,
                ),),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  EachWorkOut(),
                  EachWorkOut(),
                  EachWorkOut(),
                  EachWorkOut(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EachWorkOut extends StatelessWidget {
  const EachWorkOut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 4,horizontal: 16),
            padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
            decoration: BoxDecoration(
              color: Color(0xffF2F2F2),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : [
                Text('1st',style: TextStyle(color: Color(0xff048ABF),fontSize: 17),),
                Text('V-grip Lat Pull Down',style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),
                Text('10x10 1rm 60%',style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w400),),
              ]
            ),
          ),
        ),
        SizedBox(width: 99,),
      ],
    );
  }
}
