import 'package:collection/collection.dart';
void main(List<String> args) {

  // creating set in dart
  final Set names = {'Foo', 'Bar', 'Baz', 'Qux'};

  print(names);

  print('----------------------');

  // adding elements to the set, 
  names.add('Vix');

  //only non-duplicate values will be added unlike the following which is already present
  names.add('Foo');

  print(names);

  print('----------------------');

  //creating set from the List
  final List<String> list = ['a', 'n', 'p', 'c', 'p', 'w'];
  
  // using spread operator to spread out the elements of the list
  final Set fromList = {...list};

  print(list);
  print(fromList);

  print('----------------------');

  final age1 ={20,30,40};
  final age2 ={30,40,20};
  print('$age1 \n$age2');
  //the follwong loop will not be able to compare the sets
  if (age1==age2){
    print('same');
  }
  else{
    print('not same');
  }

  //using Equality class from the collection package 

  if(SetEquality().equals(age1, age2)){
    print('same');
  }
  else{
    print('not same');
  }

  print('----------------------');

  //how sets work internally

  Person person1 = Person(age:20 ,name:'Utkarsh');
  Person person2 = Person(age:20 ,name:'Utkarsh');
  
  print(person1);
  print(person2);

  // we will put this two Objects in the set, we can see they have the
  // same values and should be added only once
  // now because of the overriden functions hashCode and == operator, 
  // it will be added only once

  final person = {person1, person2};
  print(person);



  if(person1.hashCode==person2.hashCode){
    print('same');
  }
  else{
    print('not same');
  }
  print('----------------------');

  //we will now try to add object of class Person and Dog with similar class definition
  //in the same set. this is because even if they will produce same hashCode
  //the overriden == operator will check 'other is Dog/Person' 

  Dog dog1 = Dog(name:'Utkarsh' ,age:20);
  Person person0 = Person(name: 'Utkarsh', age: 20);

  Set beings = {dog1, person0};
  print(beings);

  print('----------------------');

  print(dog1==person2);

}

//class definition for Person, with overriden toString, hashCode and operator =
class Person{
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() {
    return 'Person: $name, $age';
  }

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) {
    return identical(this, other)||
        other is Person && name == other.name && age == other.age;
  }

}

//class definition for Dog, with overriden toString, hashCode and operator ==
class Dog{
  final String name;
  final int age;

  Dog({required this.name, required this.age});

  @override
  String toString() {
    return 'Dog: $name, $age';
  }

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) {
    return identical(this, other)||
        other is Dog && name == other.name && age == other.age;
  }

}
