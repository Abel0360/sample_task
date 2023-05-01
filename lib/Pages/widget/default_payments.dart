import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/constant/color_constants.dart';

class DefaultPayment extends StatelessWidget {
  const DefaultPayment({
    required this.tittle,
    required this.sub_tittle,
    super.key,
  });

  final String tittle;
  final String sub_tittle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tittle,
          style: TextStyle(fontSize: 14, color: ColorConstant.black),
        ),
        Row(
          children: [
            Text(
              sub_tittle,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
              size: 12,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}