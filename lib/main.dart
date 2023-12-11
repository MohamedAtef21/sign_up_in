import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sign_up_in/screens/splashScreen/view.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: (context, child) {
        return MaterialApp(
          title: 'Sign Up/In',
          debugShowCheckedModeBanner: false,
          home: PageView(
            children: [
              SplashScreenView(),
            ],
          ),
        );
      },
    );
  }
}
