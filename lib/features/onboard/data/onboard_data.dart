import 'package:flutter_onboard/flutter_onboard.dart';

class OnBoardData {
  static final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Goods and Deals",
      description: "Get amazing goods and deals at shockingly cheap prices",
      imgUrl: "assets/images/onboarding_three.png",
    ),
    const OnBoardModel(
      title: "Track your goods",
      description: "Find out where your goods are at any time",
      imgUrl: 'assets/images/onboarding_two.png',
    ),
    const OnBoardModel(
      title: "Chat with your seller",
      description: "Talk with your seller to know more about the project",
      imgUrl: 'assets/images/onboarding_one.png',
    ),
  ];
}
