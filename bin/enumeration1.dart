void main(List<String> args) {

  AppState currentname = AppState(state: AppStates.running);

  currentname.getState();
  currentname.changeState(newstate: AppStates.idle);
  currentname.getState();
  currentname.changeState(newstate: AppStates.powerloss);
  currentname.getState();
  currentname.changeState(newstate: AppStates.disconnected);
  currentname.getState();

}

// enumeration of AppStates
enum AppStates {
    running,
    idle,
    powerloss,
    disconnected,
    
  }

class AppState{

  AppStates state;

  AppState({required this.state});

  //print current state
  void getState(){
  switch (state){
    case AppStates.running:
      print('running');
      break;
    case AppStates.idle:
      print('idle');
      break;
    case AppStates.powerloss:
      print('powerloss');
      break;
    case AppStates.disconnected:
      print('disconnected');
      break;
  }

  }

  void changeState({required AppStates newstate}){
    state=newstate;
  }
}
