import 'dart:isolate';
import 'dart:async';

void main() async {
  runInIsolate("A");
  runInIsolate("B");
  runInIsolate("C");
}

Future runInIsolate(String label) async {
  ReceivePort port = ReceivePort();
  await Isolate.spawn(countInDifferentThread, Payload(sendPort: port.sendPort, message: label));
  return await port.first;
}

Future<void> countInDifferentThread(Payload payload) async {
  int count = 10;
  Isolate.exit(payload.sendPort);
}

class Payload {
  final SendPort sendPort;
  final String message;

  const Payload({required this.sendPort, required this.message});
}
