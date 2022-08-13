import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pray/Constants/app_color.dart';

class PuxLoadingProcessor extends StatefulWidget {
  const PuxLoadingProcessor({Key? key}) : super(key: key);

  @override
  State<PuxLoadingProcessor> createState() => _PuxLoadingProcessorState();
}

class _PuxLoadingProcessorState extends State<PuxLoadingProcessor> {
  int _counter = 0;

  _incrementCounter() async {

    for (var i = 0; i < 100; i++) { //Loop 100 times
      await Future.delayed(const Duration(milliseconds: 28), () { // Delay 500 milliseconds
        setState(() {
          _counter++; //Increment Counter
        });
            });
    }
  }
  @override
  void initState() {
    _incrementCounter();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 100.0.r,
      lineWidth: 4.0.r,
      percent: 1.0,
      animationDuration: 3000,
      animation: true,
      center: Text(
          "$_counter%",
        style: TextStyle(
            color: AppColor.primary,
            fontSize: 40.sp,
            fontWeight: FontWeight.bold),
      ),
      progressColor: AppColor.primary,
      backgroundColor: AppColor.onSecondary,
    );
  }
}
