import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:provider/provider.dart';

import '../../Utils/constant/color_constants.dart';
import '../../provider/progress_provider.dart';

class Transaction_Limit extends StatelessWidget {
   Transaction_Limit({Key? key}) : super(key: key);
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var value1 = context
        .watch<ProgressProvider>()
        .progress;


    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: ColorConstant.grey,
          ),
          borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transaction Limit',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                'A free limit upto which you will receve the online payments directly in your bank'),
            SizedBox(height: 10),
            // LinearProgressBar(
            //   maxSteps: 6,
            //   progressType: LinearProgressBar.progressTypeLinear,
            //   currentStep: 2,
            //   progressColor: ColorConstant.blue,
            //   backgroundColor: ColorConstant.grey,
            // ),
            LinearProgressIndicator(
              color: ColorConstant.blue,
              backgroundColor: ColorConstant.grey,
              value: context
                  .read<ProgressProvider>()
                  .progress,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${context
                  .read<ProgressProvider>()
                  .progress} left out of 50000',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstant.blue),
              onPressed: () {
                showDialog(context: context, builder: (_) {
                  return AlertDialog(
                    title: Text('ENTER VALUE'),
                    content: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: "Value"),
                      controller: _controller,
                    ),
                    actions: [
                      ElevatedButton(onPressed: () {
                        var v1 = double.parse(_controller.text);
                        context.read<ProgressProvider>().setProgress(v1);
                        Navigator.pop(context);
                      },
                          child: Text("Add Limit")),
                    ],
                  );
                });
              },
              child: Text("Increse Limit",style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
   }
  }

