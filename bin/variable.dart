void main(){
    int i = 12;
    print('This is is $i');

    String abc ="This is a String";
    print('This is a string $abc');
   
   Object a = 2; 
   print(a.runtimeType);

    String? name;
    String? address;

    void update(){
    
        name = 'Jane';
        address = null;
      }

    update();

    if(name == 'Jane' && address == null){
      print('assigned');
    }
    else{
      print('not assigned');
    }
      

  
  }
