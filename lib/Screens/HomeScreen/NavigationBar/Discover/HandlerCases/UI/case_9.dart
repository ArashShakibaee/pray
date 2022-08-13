import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';

class Case9 extends StatefulWidget {
  const Case9({Key? key}) : super(key: key);

  @override
  State<Case9> createState() => _Case9State();
}

class _Case9State extends State<Case9> {
  @override
  Widget build(BuildContext context) {
    return const BaseGridView(itemCount: 10);
  }
}