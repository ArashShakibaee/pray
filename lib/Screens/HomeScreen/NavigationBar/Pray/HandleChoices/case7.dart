import 'package:flutter/material.dart';
import 'package:pray/Component/base_grid_view.dart';
import 'package:pray/Component/unlock_pray_premium_button.dart';

class Case7 extends StatefulWidget {
  const Case7({Key? key}) : super(key: key);

  @override
  State<Case7> createState() => _Case7State();
}

class _Case7State extends State<Case7> {
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