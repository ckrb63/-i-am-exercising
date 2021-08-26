import 'package:flutter/material.dart';
import 'package:i_am_exercising/data/exercise_data.dart';

class WorkingListScreen extends StatefulWidget {
  static const routeName = '/WorkingList';

  @override
  _WorkingListScreenState createState() => _WorkingListScreenState();
}

class _WorkingListScreenState extends State<WorkingListScreen> {
  final ScrollController _scrollController = ScrollController();
  int _selectedIndex = -1;
  List<bool> _isSelected = List.generate(7, (_) => false);

  final searchController = TextEditingController();

  Widget _showExerciseList(int selectedIndex) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.5),
      height: 300,
      child: Scrollbar(
        thickness: 5,
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView.builder(
          controller: _scrollController,
          itemBuilder: (ctx, index) {
            if (exerciseData[index].categoryIndex == selectedIndex) {
              return Container(
                margin: EdgeInsets.fromLTRB(0, 7.5, 15, 7.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: exerciseData[index].image),
                    SizedBox(width: 15),
                    Expanded(
                        child: Text(
                      exerciseData[index].name,
                      style: TextStyle(fontSize: 20),
                    )),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Image.asset(
                        'assets/images/icons/addicon.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Text('');
            }
          },
          itemCount: exerciseData.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEEF0F3),
        appBar: AppBar(
          title: Text(''),
        ),
        body: Container(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: TextField(
                      controller: searchController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Padding(
                              padding: EdgeInsets.only(left: 13),
                              child: Icon(
                                Icons.search,
                                color: Theme.of(context).primaryColor,
                              ))))),
              SizedBox(height: 15),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset('assets/images/body/가슴.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '가슴',
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '즐겨하는 운동',
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Color(0xffEEF0F3),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Row(children: [
                                        Image.asset(
                                          'assets/images/icons/trophyicon_gold.png',
                                          width: 13,
                                        ),
                                        SizedBox(width: 10),
                                        Text('벤치 프레스',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffF28705)))
                                      ]),
                                      Row(children: [
                                        Image.asset(
                                          'assets/images/icons/trophyicon_silver.png',
                                          width: 13,
                                        ),
                                        SizedBox(width: 10),
                                        Text('딥스',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffA2A2A2)))
                                      ]),
                                      Row(children: [
                                        Image.asset(
                                          'assets/images/icons/trophyicon_bronze.png',
                                          width: 13,
                                        ),
                                        SizedBox(width: 10),
                                        Text('케이블 크로스모어',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffE36E2B)))
                                      ]),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        width: 50,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/images/icons/bodyicon.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ))
                ],
              ),
              Column(
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //     children: [
                  //       FlatButton(
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(20),
                  //         ),
                  //         onPressed: () {},
                  //         child: Text(
                  //           '바벨',
                  //           style: TextStyle(
                  //               color: Theme.of(context).primaryColor),
                  //         ),
                  //       ),
                  //       FlatButton(onPressed: () {}, child: Text('덤벨')),
                  //       FlatButton(onPressed: () {}, child: Text('머신')),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: ToggleButtons(
                      borderRadius: BorderRadius.circular(20),
                      selectedColor: Colors.white,
                      fillColor: Theme.of(context).primaryColor,
                      renderBorder: false,
                      children: [
                        Text('바벨'),
                        Text('덤벨'),
                        Text('머신'),
                        Text('케이블'),
                        Text('케틀벨'),
                        Text('밴드'),
                        Text('맨몸')
                      ],
                      isSelected: _isSelected,
                      onPressed: (index) {
                        // Respond to button selection
                        setState(() {
                          for (int buttonIndex = 0;
                              buttonIndex < _isSelected.length;
                              buttonIndex++) {
                            if (buttonIndex == index) {
                              _isSelected[buttonIndex] = true;
                            } else {
                              _isSelected[buttonIndex] = false;
                            }
                          }
                          _selectedIndex = index;
                        });
                      },
                    ),
                  ),
                  _selectedIndex < 0
                      ? Text('')
                      : _showExerciseList(_selectedIndex),
                ],
              )
            ])));
  }
}
