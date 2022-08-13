import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';
import 'package:pray/Component/unlock_pray_premium_button.dart';

class Case6 extends StatefulWidget {
  const Case6({Key? key}) : super(key: key);

  @override
  State<Case6> createState() => _Case6State();
}

class _Case6State extends State<Case6> {
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