import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_up_in/screens/core/design/backFlipCard.dart';
import 'package:sign_up_in/screens/core/design/frontFlipCard.dart';

class SignInUpView extends StatefulWidget {
  const SignInUpView({Key? key}) : super(key: key);

  @override
  State<SignInUpView> createState() => _SignInUpViewState();
}

class _SignInUpViewState extends State<SignInUpView> {
  final GlobalKey<FlipCardState> _cardKey = GlobalKey<FlipCardState>();

  final FlipCardController _cardController = FlipCardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: FlipCard(
        flipOnTouch: false,
        key: _cardKey,
        controller: _cardController,
        fill: Fill.fillBack,
        direction: FlipDirection.VERTICAL,
        front: FrontFlipCardView(
          onClick: (){
            _cardController.toggleCard();
          },
        ),
        back: BackFlipCardView(
          onClick: (){
            _cardController.toggleCard();
          },
        ),
      ),
    );
  }
}
