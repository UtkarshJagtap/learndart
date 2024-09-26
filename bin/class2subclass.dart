void main(List<String> args) {
  Vehicle v = Vehicle(4);
  print(v);

  Car c = Car();
  print(c);

  Car c1= Car(w: 5);
  print(c1);
}

class Vehicle{

  int wheelCount;
  Vehicle(this.wheelCount);

  @override
  String toString(){
    return '$runtimeType with $wheelCount wheels';
  }

}


class Car extends Vehicle{
  
  Car({int? w}):super(w??4);
}
