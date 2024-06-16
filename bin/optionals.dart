void main(List<String> args) {
  // ability to have or to have not value

  // the variable name may or may not have value
  String? name;
  print(name);

  // if the variable 'name' do not have value the,
  // ??= operator will check and assign it 
  name??="Utkarsh";
  print(name);

  String? lastName;

  // ?? this is if-null operator it will check if the left operand is null
  // if yes it will return right side operand
  // it will not assign it 
  print(lastName??'Jagtap');

  // here lastName still has null vaue in it
  print(lastName);

  //following function will take lname as optional argument,
  // if null it will return right side operand that is String 'Assigned Jagtap'
  String lastNameAss(String? lname)=> lname ?? 'Assigned Jagtap';
  
  // This will return 'Assigned Jagtap'
  print(lastNameAss(lastName));

  //lastName is still though
  print(lastName);

  //now we will assign 'Assigned Jagtap' to it
  lastName = lastNameAss(lastName);
  
  print(lastName);
}
