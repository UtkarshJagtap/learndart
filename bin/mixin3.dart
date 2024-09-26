void main(List<String> args) {
  Cat c = Cat(age: 2);
  print(c.age);

  c.increment();
  print(c.age);
}

mixin HasAge{
  abstract int age;

  void increment() => age++;
}

class Cat with HasAge{
  Cat({required this.age});

  @override
  int age;
}
