import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view/home/invoice_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(392.72727272727275, 781.0909090909091),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) { 

       return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: child,
        debugShowCheckedModeBanner: false,
      );
      },
      child: const InvoiceHomeScreen(),
      
    );
    
  }
}
