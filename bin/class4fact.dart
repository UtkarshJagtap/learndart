// the example of factory constructor
void main(List<String> args) {

 print(Vehicle.bus());
 print(Vehicle.truck());
 print(Vehicle());

}


class Vehicle{
 
 const Vehicle();
 
 //factory constructor
 factory Vehicle.bus()=>Bus();
 factory Vehicle.truck()=>Truck();
 
 @override
   String toString() {
     return 'Vehicle of type $runtimeType'; 
   }
 
}

class Truck extends Vehicle{
const Truck();
}

class Bus extends Vehicle{
const Bus();
}
