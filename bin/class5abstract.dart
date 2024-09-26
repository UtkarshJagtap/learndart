// example of abstract class
void main(List<String> args) {
 AtherX0 a = AtherX0();
 print(a);

 AtherX1 b = AtherX1();
 print(b);

 AtherX1 c = AtherX1.twowheeler();
 print(c);

 Cat cat = Cat(name: 'Ginu');
 CuteNessProvider cutenessprovider = CuteNessProvider(entity: cat);

 print('${cutenessprovider.whoiscute} ');

}



enum Twowheelers{
  bicycle, motorcycle,electricmotorcycle,other
}



//abstract class Twowheeler
abstract class Twowheeler{
  Twowheelers kind;
  Twowheeler({required this.kind});

  int get wheels => 2;

  @override
  String toString() {
    return '$runtimeType is of kind ${kind.name} and has $wheels wheels'; 
  }
}



// this class has extended all the properties of the abstract class Twowheeler
class AtherX0 extends Twowheeler{
  // constructor which is required to call the super constructor
  AtherX0():super(kind: Twowheelers.electricmotorcycle);
}



// the abstract class Twowheeler is implemented here that is all its 
// variables and methods are required to be overriden by the implementing class.
// AtherX1 is of kind other and has 3 wheels, but there are few models which
// are electricmotorcycle and has 2 wheels
class AtherX1 implements Twowheeler{
  // or AtherX1():kind = Twowheelers.other;
  AtherX1(); // this is not required as all the fields are already initialised

  // this is constructor let the X1 model to be ev motorcycle
  AtherX1.twowheeler():kind = Twowheelers.electricmotorcycle;

  @override
  Twowheelers kind = Twowheelers.other;

  @override
  int get wheels{
    if(kind==Twowheelers.electricmotorcycle){
     return 2;
    }else{
     return 3;
    }
  }

  @override
  String toString() {
    return '$runtimeType is of kind ${kind.name} and has $wheels wheels'; 
  }

}



