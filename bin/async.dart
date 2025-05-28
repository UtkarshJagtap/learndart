void main(List<String> args) async {
  print(await getUser());
}

Future<String> getUser() async{
  return "John Doe";
} 
