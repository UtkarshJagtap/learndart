import 'dart:convert';
import 'dart:io';

import 'package:web_socket_channel/web_socket_channel.dart';
//import 'package:web_socket_channel/status.dart' as status;

main() async {
  final data = {
  "status" : "scanWiFi",
  "timeLeft" : 123456,
  "onBeaker" : 4,
  "onCycle" : 20,
  "currentTemp" : [1,2,3,4,5,6],
  
  "setCycles" : 200,
  "activeBeakers" : 6,
  "setDipDuration" : [1,2,3,4,5,6],
  "setDipRPM" : [1,2,3,4,5,6],
  "setDipTemperature" : [1,2,3,4,5,6]
};
  final  jsond = jsonEncode(data);
  try{
  final wsUrl = Uri.parse('ws://192.168.153.224:8000/ws');
  final channel = WebSocketChannel.connect(wsUrl);
//   await channel.ready.timeout(const Duration(seconds: 5));
   await channel.ready;
  channel.stream.listen((message) {
    //channel.sink.add('ok');
    print(message);

//    channel.sink.close(status.goingAway);
  }).onDone((){
    if (channel.closeCode != null) print('${ channel.closeCode} ws was closed');
  });

    channel.sink.add(jsond);
 }
  on WebSocketChannelException catch (e){
    print(e);
  }
}
