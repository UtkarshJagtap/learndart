void main(List<String> args) {
 final Person person = Person();
 person.walk(speed: 10);
 person.jump(speed: 5);
}

mixin HasSpeed{
  abstract double speed;
}

mixin CanJump on HasSpeed{
  void jump({required double speed}){
    this.speed = speed;
    print('$runtimeType is jumping at the speed of ${this.speed}');
  }
}

mixin CanWalk on HasSpeed{
void walk({required double speed}){
  this.speed = speed;
  print('$runtimeType is walking at the speed ${this.speed}');
  }
}

class Person with HasSpeed, CanJump, CanWalk{
 
  Person():speed=0;
  
  @override
  double speed;

}
