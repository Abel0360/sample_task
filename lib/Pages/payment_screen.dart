
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:sample_task/Pages/widget/Custom_Appbar.dart';
import 'package:sample_task/Pages/widget/card_widget.dart';
import 'package:sample_task/Pages/widget/chip_widget.dart';
import 'package:sample_task/Pages/widget/default_method.dart';
import 'package:sample_task/Pages/widget/orders.dart';
import 'package:sample_task/Pages/widget/payment_profile.dart';
import 'package:sample_task/Pages/widget/transcation_limit.dart';

import 'package:sample_task/Utils/constant/color_constants.dart';

class Payment_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PaymentSectionAppBar(),
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Trans(),
              Default(),
              SizedBox(
                height: 15,
              ),
              Payment(),

             Divider(
                  thickness: 3,),

              Payment(),
              Payment_Card(),

               Padding(padding: EdgeInsets.all(7),
                 child: Text('Transcations',
                 style: TextStyle(
                   fontSize: 16, fontWeight: FontWeight.bold),
                 ),
               ),
              SizedBox(
                height: 10,
              ),
              Chip_1(),
              Order_List(),
            ],
          ),
        ),
      ),
    );
  }
}
