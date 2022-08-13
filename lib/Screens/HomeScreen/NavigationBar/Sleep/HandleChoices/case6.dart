import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';

class Case6 extends StatefulWidget {
  const Case6({Key? key}) : super(key: key);

  @override
  State<Case6> createState() => _Case6State();
}

class _Case6State extends State<Case6> {
  @override
  Widget build(BuildContext context) {
    return const BaseGridView(itemCount: 10);
  }
}