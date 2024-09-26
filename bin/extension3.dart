//example showing how to generate iterable for given range
// using extension

void main(List<String> args) {
    print(1.to(20, inclusive: false));
    print('--------------------');
    print(1.to(20));
    print('--------------------');
    print(20.to(1));
    print('--------------------');
    print(20.to(-5));

    print([1,3,1,2,1].hasDuplicate);
    print(['Hello','World','Hello'].hasDuplicate);
}

extension on int{
Iterable<int> to(int end, {bool inclusive = true}) => end>this?
    [for(var i=this; i<end; i++) i, if(inclusive) end]
    :[for(var i= this; i>end; i--) i, if(inclusive) end];

}

extension on Iterable{
  bool get hasDuplicate => toSet().length != length;
}
