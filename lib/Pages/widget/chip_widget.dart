import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_task/Utils/constant/color_constants.dart';

class Chip_1 extends StatelessWidget {
  const Chip_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.grey,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 30,
          width: 100,
          child: Center(child: Text("on hold",
            style: TextStyle(color:Colors.grey)),
            ),
          ),
    Container(
    decoration: BoxDecoration(
      color: ColorConstant.blue,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
      height: 30,
      width: 100,
      child: Center(
        child: Text("Payouts(15)",
    style: TextStyle(color: Colors.white)),
      ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ColorConstant.grey,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
    height: 30,
    width: 100,
    child: Center(
    child: Text("Refunds",
    style: TextStyle(color: Colors.grey)),
        ),
        ),
      ],
    );
  }
}
