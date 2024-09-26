void main(List<String> args) {

 final Person person = Person(firstname: 'Utkarsh', lastname: 'Jagtap');
 print(getfullName(person));
 print(person.fullname);

}

String getfullName(FullName obj) => obj.fullname;

mixin FirstName{
  String get firstname;
}

mixin LastName{
  String get lastname;
}

// this mixin works on FirstName and LastName mixins
// so whichever class that wil work with FullName mixin
// need to implement FirstName and LastName
mixin FullName on FirstName, LastName{
  String get fullname => '$firstname $lastname';
}

// just the FullName can't be mixed with this class, 
// it can only be mixed with FirstName and LastName
// and these two mixins will require concrete implemnatation
// of firstname and lastname.
class Person with FirstName, LastName, FullName{

  @override
  final String firstname; 

  @override
  final String lastname;
  
  Person({required this.firstname, required this.lastname});
}

class Pri with FirstName{

  @override
  final String firstname;

  Pri({required this.firstname});
}
