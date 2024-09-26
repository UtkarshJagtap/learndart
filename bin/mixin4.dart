void main(List<String> args) {

 final Set<Cat> cats ={ Cat(name:'ginu', age: 7), Cat(name:'ginu',age: 7),
   Cat(name: 'meow', age: 3)};
 
 cats.forEach(print);
}

enum Pettype{cat, dog}

mixin Pet{
  Pettype get type;
  String get name;
  int get age;

  @override
  String toString() => '$name is $type and is $age years old'; 

  @override
  int get hashCode => Object.hash(type,name,age);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}

class Cat with Pet{
  @override
  int age;

  @override
  String name; 

  @override
  Pettype type; 

  Cat({required this.name, required this.age}): type = Pettype.cat;
}
