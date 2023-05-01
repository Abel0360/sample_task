import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_task/provider/progress_provider.dart';

import 'Pages/payment_screen.dart';

void main(){

  runApp(ChangeNotifierProvider<ProgressProvider>(
      child: MyApp(),
      create: (_) => ProgressProvider()
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Payment_Screen(),
     theme: ThemeData(primarySwatch: Colors.blue),
   );
  }

}