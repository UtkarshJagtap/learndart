void main(List<String> args) {
  Cat cat = Cat(name: 'Ginu');
CuteNessProvider c =  CuteNessProvider(entity: cat);
print(c.whoiscute);
}

// 
abstract class Cute{
  Entity entity;
  Cute({required this.entity});

  String get whoiscute => '${entity.runtimeType} ${entity.name} is cute';
}

abstract class Entity {

  String name;
  Entity({required this.name});

}

class Cat implements Entity{

  Cat({required this.name});

  @override
  String name;

  String get isofname => 'this is $runtimeType of name $name';
}

class CuteNessProvider extends Cute{
  CuteNessProvider({required super.entity});

}

