import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_up_in/screens/signInUp/view.dart';

import '../core/logic/helper_method.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentPage = 0;
  List<String> titles = [
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 375.h,
              child: PageView(
                physics: BouncingScrollPhysics(),
                onPageChanged: (value) {
                  currentPage = value;
                  setState(() {});
                },
                children: List.generate(
                  2,
                  (index) => Lottie.asset(
                    "assets/lottie/onboarding${currentPage + 1}.json",
                    height:375.h,
                    width: 100.w,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              titles[currentPage],
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  2,
                  (index) => Padding(
                    padding:
                        EdgeInsetsDirectional.only(end: index == 1 ? 0 : 5),
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor:
                          Color(index == currentPage ? 0xff3366FF : 0xffADC8FF),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 24, end: 24),
                child: SizedBox(
                  height: 48.h,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (currentPage == titles.length -1) {
                        navigateTo(context, const SignInUpView());
                      } else {
                        currentPage++;
                        setState(() {});
                      }
                    },
                    child: Text(currentPage == 1 ? "Get Started" : "Next"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
