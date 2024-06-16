void main(List<String> args) {
  print([1,2,3,4].sum);
  print([1.2, 3.2, 4.1].sum);
}

//this extension will work on any type T which is num 
extension SummingItNum<T extends num> on Iterable<T>{

  T get sum => reduce((a, b)=> a+b as T);

}
