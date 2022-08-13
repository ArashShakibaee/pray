import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';

class Case10 extends StatefulWidget {
  const Case10({Key? key}) : super(key: key);

  @override
  State<Case10> createState() => _Case10State();
}

class _Case10State extends State<Case10> {
  @override
  Widget build(BuildContext context) {
    return const BaseGridView(itemCount: 10);
  }
}