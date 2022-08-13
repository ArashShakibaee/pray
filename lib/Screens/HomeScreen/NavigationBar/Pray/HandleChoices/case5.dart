import 'package:flutter/material.dart';
import 'package:pray/Component/unlock_pray_premium_button.dart';

import '../../../../../Component/base_grid_view.dart';

class Case5 extends StatefulWidget {
  const Case5({Key? key}) : super(key: key);

  @override
  State<Case5> createState() => _Case5State();
}

class _Case5State extends State<Case5> {
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