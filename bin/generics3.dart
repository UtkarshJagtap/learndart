
void main(List<String> args) {

  const people={'mom': Person(), 'dad': Person()};

  const peopleandfish={'brother':Person(), 'sister':Person(), 'goodfish':Fish()};

  final allValues = [people, peopleandfish];

  describe(allValues);



}



//typedef BreathingThings<CanBreath> = Map<String, CanBreath>;
typedef BreathingThings<T extends CanBreath> = Map<String, T>;

  void describe(Iterable<BreathingThings> values){
    for (var maps in values){
      for(var keyValues in maps.entries){
        print('calling breath on ${keyValues.key}');
        keyValues.value.breath();
      }
    }
  }



mixin CanBreath{
  void breath();
}

class Person with CanBreath{
  const Person();
  @override
  void breath() {
    print('Person is breathing');
  }
}

class Fish with CanBreath{
  const Fish();
  @override
  void breath() {
    print('Fish is breathing');
  }
}



