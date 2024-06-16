void main(List<String> args) {
  Vehicle v = Vehicle(4);
  print(v);

  Car c = Car(); 
  print(c);
}

class Vehicle/*this class is extended from the class Object*/{
  int wheelCount;

  //positional constructor for the class Vehicle
  Vehicle(this.wheelCount);

  //the toString method which is overriden is of class Object
  @override
  String toString(){
    return '$runtimeType with $wheelCount wheels';
  }

}

// the Car class will extend the Vehicle class and thereby its toString method
class Car extends Vehicle{
  
  //in order to make instance of the class Car, you must need to call the constructor
  // of its super class, that is class Vehicle
  Car():super(4);
  //Car(super.w);
  //Car(int w):super(w);
  //Car(int? w):super(w??4);
}
