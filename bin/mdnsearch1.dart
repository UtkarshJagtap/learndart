import 'package:multicast_dns/multicast_dns.dart';

Future<void> main(List<String> args) async {
  

  final String name ='_sample._http._tcp.local' ;

  final MDnsClient client = MDnsClient();
  await client.start();
  await for (final IPAddressResourceRecord record in client
      .lookup<IPAddressResourceRecord>(ResourceRecordQuery.addressIPv4(name))) {
    print('Found address (${record.address}).');
  }

  await for (final IPAddressResourceRecord record in client
      .lookup<IPAddressResourceRecord>(ResourceRecordQuery.addressIPv6(name))) {
    print('Found address (${record.address}).');
  }
  print('done');
  client.stop();
}
