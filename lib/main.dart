import 'package:dreamroots_ui/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, index) {
        return const MaterialApp(
          home: ScreenHome(),
          debugShowCheckedModeBanner: false,
        );
      },
      designSize: const Size(375, 812),
    );
  }
}
