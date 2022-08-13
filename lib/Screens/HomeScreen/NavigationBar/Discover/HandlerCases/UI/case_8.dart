import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';

class Case8 extends StatefulWidget {
  const Case8({Key? key}) : super(key: key);

  @override
  State<Case8> createState() => _Case8State();
}

class _Case8State extends State<Case8> {
  @override
  Widget build(BuildContext context) {
    return const BaseGridView(itemCount: 10);
  }
}