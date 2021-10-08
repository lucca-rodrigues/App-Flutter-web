import 'package:app_teste/responsive_query.dart';
import 'package:app_teste/responsive_query_col.dart';
import 'package:app_teste/virtual_shopping.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Web",
    debugShowCheckedModeBanner: false,
    // home: ResponsiveQuery(),
    // home: ResponsiveQueryColAndRow(),
    home: VirtualShopping(),
  ));
}
