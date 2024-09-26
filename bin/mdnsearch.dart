import 'package:multicast_dns/multicast_dns.dart';

main() async {
  String serviceType = '_http._tcp';
  final MDnsClient client = MDnsClient();
  await client.start();

  await for (final PtrResourceRecord ptr in client.lookup<PtrResourceRecord>(
      ResourceRecordQuery.serverPointer(serviceType))) {
    print('PTR: ${ptr.toString()}');

    await for (final SrvResourceRecord srv in client.lookup<SrvResourceRecord>(
        ResourceRecordQuery.service(ptr.domainName))) {
      print('SRV target: ${srv.target} port: ${srv.port}');

      await for (final IPAddressResourceRecord ip
          in client.lookup<IPAddressResourceRecord>(
              ResourceRecordQuery.addressIPv4(srv.target))) {
        print('IP: ${ip.address.toString()}');
      }
    }
  }
  client.stop();
}
