import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';

class Case4 extends StatefulWidget {
  const Case4({Key? key}) : super(key: key);

  @override
  State<Case4> createState() => _Case4State();
}

class _Case4State extends State<Case4> {
  @override
  Widget build(BuildContext context) {
    return const BaseGridView(itemCount: 10);
  }
}