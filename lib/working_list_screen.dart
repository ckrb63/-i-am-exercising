import 'package:flutter/material.dart';

class WorkingListScreen extends StatefulWidget {
  static const routeName = '/WorkingList';

  @override
  _WorkingListScreenState createState() => _WorkingListScreenState();
}

class _WorkingListScreenState extends State<WorkingListScreen> {
  List<bool> _isSelected = List.generate(3, (_) => false);

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF0F3),
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
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
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/images/icons/bodyicon.png',
                        fit: BoxFit.contain,
                      ),
                    ))
              ],
            ),
            SizedBox(height: 15),
            ToggleButtons(
              children: [Text('1'), Text('1'), Text('1')],
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
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
