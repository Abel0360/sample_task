import 'package:flutter/material.dart';

import 'Pages/payment_screen.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Payment_Screen(),
     theme: ThemeData(primarySwatch: Colors.blue),
   );
  }

}