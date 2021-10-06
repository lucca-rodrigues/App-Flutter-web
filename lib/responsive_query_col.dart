import 'package:flutter/material.dart';

class ResponsiveQueryColAndRow extends StatefulWidget {
  const ResponsiveQueryColAndRow({Key? key}) : super(key: key);

  @override
  _ResponsiveQueryColAndRowState createState() =>
      _ResponsiveQueryColAndRowState();
}

class _ResponsiveQueryColAndRowState extends State<ResponsiveQueryColAndRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsividade'),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.pink,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.purple,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                      ))
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              ))
        ],
      ),
    );
  }
}
