import 'package:collection/equality.dart';

void main(List<String> args) {
  Beaker b1 = Beaker(temp: 21, rpm: 20);
  Beaker b2 = Beaker(temp: 21, rpm: 20);
  Beaker b3 = Beaker(temp: 21, rpm: 20);
  Beaker b4 = Beaker(temp: 21, rpm: 20);
  Beaker b5 = Beaker(temp: 21, rpm: 20);
  Beaker b6 = Beaker(temp: 21, rpm: 20);

  List<Beaker> list1 = [b1, b2, b3, b4, b5];
  List<Beaker> list2 = [b1, b2, b3, b4];
  ListEquality listEquality = ListEquality();
  bool q =listEquality.equals(list1, list2);
  print('$q');
}

class Beaker{
  int temp;
  int rpm;

  Beaker({required this.temp, required this.rpm});
}
