import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../Utils/constant/color_constants.dart';

class Trans extends StatelessWidget {
  const Trans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.all(1),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ColorConstant.grey,
            ),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Transation Limit',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'A free limit upto which you will receve the online payments directly in your bank'),
                SizedBox(height: 10),
                LinearProgressBar(
                  maxSteps: 6,
                  progressType: LinearProgressBar.progressTypeLinear,
                  currentStep: 2,
                  progressColor: ColorConstant.blue,
                  backgroundColor: ColorConstant.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '36668 left out of ₹5000',
                  style: TextStyle(color: ColorConstant.blue),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstant.blue),
                  onPressed: () {},
                  child: Text("Increse Limit"),
                ),
              ],
            )),
      ),
    );
  }
}
