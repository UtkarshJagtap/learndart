// basic constructors in dart

void main(List<String> args) {

  Person p = Person(name: 'Utkarsh', age: 22);
  print(p.age);
  print(p.name);
  print('------------------');

  // default values for both age and name
  Person o = Person.foo(); 
  print(o.age);
  print(o.name);

  print('------------------');

  // default name will be given because it is not passed through constructor 
  Person bar = Person.bar(age: 22);
  print(bar.age);
  print(bar.name);
  print('------------------');

  // default age will be given because it is not passed through constructor
  Person bar2=Person.bar(name: 'cute');
  print(bar2.age);
  print(bar2.name);
  print('------------------');

} 


  class Person{

  final int age; final String name;

  // constructor with required values
  Person({required this.name, required this.age});

  // constructor with default values
  Person.foo():age=20,name='default';

  // take default values if no values are passed 
  Person.bar({String? name, int? age}):age= age ?? 31 , name= name ?? 'bar';


}
