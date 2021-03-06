class WholeDayRoutine{

  WholeDayRoutine({required this.point,required this.list});

  String point;
  DayRoutineList list;
}

class ProgramRoutine{
  List<WholeDayRoutine> programlist = [];
  ProgramRoutine(){
    programlist.add(WholeDayRoutine(point: 'Back',list: DayRoutineList()));
    programlist.add(WholeDayRoutine(point: 'Chest',list: DayRoutineList()));
    programlist.add(WholeDayRoutine(point: 'Leg',list: DayRoutineList()));
    programlist.add(WholeDayRoutine(point: 'Shoulder',list: DayRoutineList()));
  }
  void addList(String point, DayRoutineList list){
    programlist.add(WholeDayRoutine(point: point, list: list));
  }



}

class DayRoutine{
  DayRoutine({required this.number, required this.name,required this.weight,required this.set,required this.onerm});
  int number;
  String name;
  int weight;
  int set;
  int onerm;
}

class DayRoutineList{
  DayRoutine one = DayRoutine(number: 1, name: 'V-grip Lat Pull Down', weight: 10, set: 10, onerm: 60);
  DayRoutine two = DayRoutine(number: 2, name: 'V-grip Lat Pull Down', weight: 10, set: 10, onerm: 60);
  DayRoutine three = DayRoutine(number: 3, name: 'V-grip Lat Pull Down', weight: 10, set: 10, onerm: 60);
  DayRoutine four = DayRoutine(number: 4, name: 'V-grip Lat Pull Down', weight: 10, set: 10, onerm: 60);

  List<DayRoutine> dayRoutineList = [];

  DayRoutineList(){
    dayRoutineList.add(one);
    dayRoutineList.add(two);
    dayRoutineList.add(three);
    dayRoutineList.add(four);

    for(int i=0;i<4;i++){
      print(dayRoutineList[i].number);
    }

  }

}