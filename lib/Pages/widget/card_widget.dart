import 'package:flutter/cupertino.dart';

import '../../Utils/constant/color_constants.dart';

class Payment_Card extends StatelessWidget {
  const Payment_Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(7),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: ColorConstant.orange),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('AMOUNT ON HOLD',style: TextStyle(fontSize: 14,color:ColorConstant.grey),),
            Text('₹0',style: TextStyle(fontSize: 18,color: ColorConstant.grey),),
          ],
            ),
          ),
          Container(
            height: 70,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: ColorConstant.green),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('AMOUNT RECIEVEDE',style: TextStyle(fontSize: 14,color: ColorConstant.grey),),
                Text('₹13,332',style: TextStyle(fontSize: 18,color: ColorConstant.grey),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
