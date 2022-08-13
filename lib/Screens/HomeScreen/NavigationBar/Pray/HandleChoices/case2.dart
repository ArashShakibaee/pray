import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';
import 'package:pray/Component/unlock_pray_premium_button.dart';

class Case2 extends StatefulWidget {
  const Case2({Key? key}) : super(key: key);

  @override
  State<Case2> createState() => _Case2State();
}

class _Case2State extends State<Case2> {
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