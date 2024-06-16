// this is simple example of how extension works
void main(List<String> args) {

  int value = 30;
  
  int timestwo = value.timestwo;
  print(timestwo);

  String name = 'Utkarsh';
  print(name.reversed);

  String name1 = 'nitin';
  print(name1.reversed);

}

extension on int{
  
  // this is getter method that could be called on any int value
  int get timestwo => this*2;

}


extension on String{

  //this getter method will reverse the string
  String get reversed => split('').reversed.join();
}
