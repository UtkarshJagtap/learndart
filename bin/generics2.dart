void main(List<String> args) {
  bool a = doTheyMatch(1,'Yes');
  print(a);

  print(doTheyMatch(1,2));
}

bool doTheyMatch<R , L >(R a,L b) {

  return R==L;

}
