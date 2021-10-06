import 'package:flutter/material.dart';

class ResponsiveQuery extends StatefulWidget {
  const ResponsiveQuery({Key? key}) : super(key: key);

  @override
  _ResponsiveQueryState createState() => _ResponsiveQueryState();
}

class _ResponsiveQueryState extends State<ResponsiveQuery> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var widthItem = width / 3;
    return Scaffold(
        appBar: AppBar(
          title: Text('Responsive Query'),
        ),
        body: Row(children: [
          Container(
            width: widthItem,
            height: 200,
            color: Colors.red,
            child: Text('Teste1'),
          ),
          Container(
            width: widthItem,
            height: 200,
            color: Colors.black,
            child: Text('Teste2'),
          ),
          Container(
            width: widthItem,
            height: 200,
            color: Colors.yellow,
            child: Text('Teste3'),
          )
        ]));
  }
}
