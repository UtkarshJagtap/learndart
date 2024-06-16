void main(List<String> args) {
 printHello(); 
 printNamed(name:'Utkarsh');
 printNamed();
 printRequiredName(name: 'Aaryan');
 printRequiredName(name: null);
 positionalHello('Aaryan',20);
 print(addtwo(20));
 print(addtwo(22,20));
 print(namedpositional(20, a: 20));
}


// simple function with void return type 
void printHello(){
print("Hello");
}


//named parameter are required to be default or optionals that's why here 
// the parameter name is defined as optional String?

void printNamed({String? name}){
print('Hello, $name');
}


//this is function with required parameter, while calling this function it is
// required to assign values to its named parameter
void printRequiredName({required String? name}){
print('printrequiredname called with $name');
print('Hello, $name');
}


//function with positional arguments 
void positionalHello(String fname, int age){
  print('positional hello called');
print('Hello $fname you, are $age');
}

//function with optional positional arguments
int addtwo(int a,[int b=2]){
  return a+b;
}

// function with positional argument and a named argument
int namedpositional( int b, {int a =5}){
  return a+b;
}

