void main(List<String> args) {

  // this variable will expect double from the function
  // by explicitly defining the variable as double,
  // it will set T as double. 
  double adouble = eitherdoubleorint();
  print(adouble);

  int aint = eitherdoubleorint();
  print(aint);

  // this will expect num data type
  final neither = eitherdoubleorint();
  print(neither);
}

  // this fuction will expect the return type, depending upon where it is called.
  T eitherdoubleorint<T extends num>() {  
    switch(T){
      case int:
        return 1 as T;
      case double:
        return 1.1 as T;
      // this is for handling cases where the type is not defined 
      case num:
        return 1 as T;
      default:
        throw Exception('not supported');
    }
  }
