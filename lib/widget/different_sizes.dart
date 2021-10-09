import 'package:flutter/material.dart';

class DifferentSizes extends StatefulWidget {
  const DifferentSizes({Key? key}) : super(key: key);

  @override
  _DifferentSizesState createState() => _DifferentSizesState();
}

class _DifferentSizesState extends State<DifferentSizes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Diferentes tamanhos")),
      body: IntrinsicHeight(
        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            width: 200,
            color: Colors.orange,
            child: Text("item 1"),
          ),
          Container(
            width: 200,
            color: Colors.green,
            child: Text("Lorem Ipsum is simply dummy text of the printing"
                "and typesetting industry."
                "Lorem Ipsum has been the industry's standard dummy text ever"),
          )
        ]),
      ),
    );
  }
}
