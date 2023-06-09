import 'package:flutter/cupertino.dart';

import '../../Utils/constant/color_constants.dart';

class Amountcard extends StatelessWidget {

  const Amountcard({
    required this.text1,
    required this.text2,
    required this.color,
    super.key,
  });

  final String text1;
  final String text2;
  final color;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(text1,style: TextStyle(fontSize: 14,color: ColorConstant.grey),),
          Text(text2,style: TextStyle(fontSize: 18,color: ColorConstant.grey),),
        ],
      ),
    );
  }
}
