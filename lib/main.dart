import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model/l10n/l10n.dart';
import 'view/home/invoice_home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
        supportedLocales: L10n.all,
        localizationsDelegates:const  [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,

        ],
        home: child,
        debugShowCheckedModeBanner: false,
      );
      },
      child: const InvoiceHomeScreen(),
      
    );
    
  }
}
