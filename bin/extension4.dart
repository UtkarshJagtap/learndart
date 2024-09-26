import 'dart:math';

void main(List<String> args) {
  print(add.addrandom());
}

int add(int a, int b) => a+b;

typedef Intfunc = int Function (int, int);

extension on Intfunc{

    int addrandom(){
      int rand1=Random().nextInt(100);
      int rand2=Random().nextInt(100);
      print('adding $rand1 and $rand2');
      return call(rand1, rand2);
    }

} 
