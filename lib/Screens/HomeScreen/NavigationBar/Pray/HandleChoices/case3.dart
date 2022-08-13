import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';
import 'package:pray/Component/unlock_pray_premium_button.dart';

class Case3 extends StatefulWidget {
  const Case3({Key? key}) : super(key: key);

  @override
  State<Case3> createState() => _Case3State();
}

class _Case3State extends State<Case3> {
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