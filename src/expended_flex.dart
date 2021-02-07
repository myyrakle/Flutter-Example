class FirstRoute extends StatefulWidget {
  FirstRoute({Key key}) : super(key: key);

  @override
  FirstRouteState createState() => FirstRouteState();
}

class FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    var icon = Icon(Icons.add);

    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
              )),
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.yellow,
              )),
        ],
      ),
    );
  }
}
