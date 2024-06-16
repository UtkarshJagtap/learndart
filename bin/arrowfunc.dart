class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;
  
  // Returns the product of the above values:
  int get product => value1* value2* value3;
  
  // Adds 1 to value1:
  int get incrementValue1 => value1 += 1; //value1++
  
  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'): 
  String joinWithCommas(List<String> strings) => strings.join(',');
}

void main(){
final m  = MyClass();

var pro=m.product;
print(pro);

print(m.incrementValue1);

print(m.product);
List<String> abc=['a','b','c'];

print(m.joinWithCommas(abc));

print(m.value1);

print(m.incrementValue1);
}



