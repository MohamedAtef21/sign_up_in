import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class BackFlipCardView extends StatelessWidget {
  var onClick;
  BackFlipCardView({Key? key,required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(30.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Lottie.asset("assets/lottie/signIn.json"),
              SizedBox(height: 10.h),
              Center(
                child: Text("Login to your account"),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.r),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: Color(0xffF2F2F2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.r),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    fixedSize: Size.fromHeight(56.sp),
                  ),
                  child: Text("Login")),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {
                  onClick();
                },
                child: Center(
                  child: Text(
                    "Forget your password?",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
