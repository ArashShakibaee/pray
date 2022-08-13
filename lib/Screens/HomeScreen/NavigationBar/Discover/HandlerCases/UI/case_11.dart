import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';

class Case11 extends StatefulWidget {
  const Case11({Key? key}) : super(key: key);

  @override
  State<Case11> createState() => _Case11State();
}

class _Case11State extends State<Case11> {
  @override
  Widget build(BuildContext context) {
    return const BaseGridView(itemCount: 10);
  }
}