void main(List<String> args) {
  Function makeAdder(int addby){
      return (int i)=> addby+i;
  }
  
  Function addTwo = makeAdder(2);
  print(addTwo(4));
}
