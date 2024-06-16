void main(List<String> args) {
  
  List<String> properties = ['name','temperature','rpm','duration','note'];
  print('printing the contents of the List');
  for (var i in properties){
    print(i);
  }

  print('------------------------');

  if (properties.contains('note')){
    print('note is in the list');
  }

  print('------------------------');

  // using where method on list, this method will return iterable, it takese function as argument
  // the function must return boolean, where will pass each elemenet of the list as
  // argument to this function.

  for ( var i in properties.where((value)=> value.startsWith('n'))){
    print(i);
  }

  print('-------------------------');

 try{
   print(properties[5]);
 }catch(e){
   print(e);
 } 

 print('--------------------------');

 properties.sublist(1,3).forEach(print);

 print('--------------------------');

 // map function will take each elemnt from the list and pass it on to the function
 Iterable v = properties.map((s)=> s.toUpperCase());
 print(v);

 print('--------------------------');

 //using fold method to calculate total length of strigs in the list

 List<String> names = ['Foo', 'Bar', 'Baz'];
 int length = names.fold(0,(total, current)=> total+current.length);
 print(length);

 //adding numbers using fold method 

 List<int> numb =[1, 2, 3, 4, 5];
 int numbadd = numb.fold(0,(total, now)=> total+now);
 print(numbadd);

 print('--------------------------');



}
