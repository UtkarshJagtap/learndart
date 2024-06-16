void main(List<String> args) {
 Car c = Car();
 c.drive(20);
 c.stop();

 try{
   c.drive(-1);
 }catch(e){
   print(e);
 }
}

class Car{
  int _speed =0;

  // this a getter method speed which will return the value of private variable _speed
  int get speed => _speed;

  // this a setter method speed which will set the speed if it is not negative
  set speed(int newspeed){
    if(newspeed<0){
      throw Exception('''can't be negative''');
    }else{
    _speed=newspeed;
    }
  }

  void drive(int speed){
  // even though it has the access to the private variable _speed
  // it is still calling setter to set new value
  this.speed=speed;
  print('driving at the ${this.speed} unit speed');
  }

  void stop(){
  // again setter is called, it is not necessary to write it as this.speed
  // this.speed require if there is another local variable within the 
  // scope of the function
  speed=0;
  print('stopped, now the speed is $speed units');}
}
