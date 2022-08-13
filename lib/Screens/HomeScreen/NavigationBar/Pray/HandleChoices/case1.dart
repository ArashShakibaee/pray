import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';
import 'package:pray/Component/unlock_pray_premium_button.dart';

class Case1 extends StatefulWidget {
  const Case1({Key? key}) : super(key: key);

  @override
  State<Case1> createState() => _Case1State();
}

class _Case1State extends State<Case1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const[
        UnlockPrayPremiumButton(),
        BaseGridView(itemCount: 10)
      ],
    );
  }
}