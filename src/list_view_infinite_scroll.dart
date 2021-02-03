class Foo {
  List<String> _texts = [];
  var _index = 0;

  Foo() {
    var random = Random();

    for (var i = 0; i < 100; i++) {
      var r = random.nextInt(1000);
      _texts.add('index: $i, value:$r');
    }
  }

  List<String> getValues() {
    if (_index >= _texts.length) {
      Fluttertoast.showToast(msg: '데이터 더 없음');
      return [];
    } else {
      var sublist = _texts.sublist(_index, _index + 20);
      _index += 20;
      Fluttertoast.showToast(msg: '데이터 추가 로딩');
      print('데이터 불러옴: $sublist');
      return sublist;
    }
  }
}

class FirstRouteState extends State<FirstRoute> {
  var values = [];
  var foo = Foo();

  @override
  Widget build(BuildContext context) {
    var list = ListView.builder(itemBuilder: (context, index) {
      if (index >= values.length) {
        var moreValues = foo.getValues();
        values.addAll(moreValues);

        if (moreValues.isEmpty) {
          return null;
        }
      }

      var tile = ListTile(title: Text(values[index]));

      return tile;
    });

    return Scaffold(
        appBar: AppBar(
          title: Text('First Route'),
        ),
        body: list);
  }
}
