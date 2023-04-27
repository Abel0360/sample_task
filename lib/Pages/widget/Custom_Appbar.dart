import 'package:flutter/material.dart';

import '../../Utils/constant/color_constants.dart';


class PaymentSectionAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PaymentSectionAppBar({
    super.key,
  });

  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstant.blue,
      leading: Icon(Icons.arrow_back),
      title: Center(
        child: Text(
          "Payment",
          style: TextStyle(fontSize: 18),
        ),
      ),
      actions: [
        Icon(Icons.info_outline),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
