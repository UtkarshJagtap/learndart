void main(List<String> args) {
  List names = ['one', 'two', 'three', 'four'];
  int counter =0;
  
  while(counter< names.length){
    print(names[counter]);
    counter++;
  }

  print('--------------------');

  counter =0;
  do{

    if(names[counter]=='two'){
      counter++;
      continue;
    }

    print(names[counter]);
    counter++;
  }while(counter<names.length);

  print('--------------------');


  counter =0;
  do {

    var name=names[counter++];

    if (name=='three') continue;

    print(name);

  } while(counter<names.length);
}
