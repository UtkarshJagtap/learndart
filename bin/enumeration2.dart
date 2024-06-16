void main(List<String> args) {
 Animals.cat..run()..jump();
 Animals.dog..run()..jump();
 Animals.rabbit..run()..jump();
}

enum Animals {
    cat,
    dog,
    rabbit;

    void run(){
      var a = this.name;
      print('$a is running');
    }
}

extension Jump on Animals{
  void jump(){
    var a = this.name;
    print('$a is jumping');
  }
}
