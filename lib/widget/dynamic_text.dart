import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class DynamicText extends StatefulWidget {
  const DynamicText({Key? key}) : super(key: key);

  @override
  _DynamicTextState createState() => _DynamicTextState();
}

class _DynamicTextState extends State<DynamicText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Text(
          "Lorem Ipsum is simply dummy text of the printing"
          "and typesetting industry."
          "Lorem Ipsum has been the industry's standard dummy text ever"
          "since the 1500s, when an unknown printer took a galley of type"
          "and scrambled it to make a type specimen book."
          "It has survived not only five centuries, but also the leap into electronic typesetting,"
          " remaining essentially unchanged. I",
          style: TextStyle(fontSize: 18)),
      SizedBox(
        height: 50,
      ),
      AutoSizeText(
        "Lorem Ipsum is simply dummy text of the printing"
        "and typesetting industry."
        "Lorem Ipsum has been the industry's standard dummy text ever"
        "since the 1500s, when an unknown printer took a galley of type"
        "and scrambled it to make a type specimen book."
        "It has survived not only five centuries, but also the leap into electronic typesetting,"
        " remaining essentially unchanged. I",
        style: TextStyle(fontSize: 20),
        maxLines: 2,
        minFontSize: 12,
        stepGranularity: 2,
        // presetFontSizes: [30, 22, 10] // default values,
        // overflow: TextOverflow.ellipsis,
        // overflowReplacement:
        // Text("Não cabe mais!"), // Opcão para ler mais ou algo do tipo...
      ),
    ]));
  }
}
