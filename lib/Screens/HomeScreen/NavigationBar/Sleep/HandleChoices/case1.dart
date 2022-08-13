import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';

class Case1 extends StatefulWidget {
  const Case1({Key? key}) : super(key: key);

  @override
  State<Case1> createState() => _Case1State();
}

class _Case1State extends State<Case1> {
  @override
  Widget build(BuildContext context) {
    return const BaseGridView(itemCount: 10);
  }
}