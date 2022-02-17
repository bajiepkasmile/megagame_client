abstract class Connection {

  void connect(void Function(dynamic data) onUpdate);

  void send(dynamic data);

  void disconnect();
}