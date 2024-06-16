void main(List<String> args) {
 String? nullOrString()=> null;
 String onlyString()=> 'String';

 String a = nullOrString() ?? onlyString();
 print(a);
}
