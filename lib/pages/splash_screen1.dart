import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'onboarding_page.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  bool isLoading = false;
  void initState() {
    isLoading = true;
    Future.delayed(Duration(seconds: 3), () {
      isLoading = false;
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => OnBoardingPage())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/Group.png'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/LogoMainPage.png',
                    height: 334,
                    width: 346.52,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: LoadingAnimationWidget.inkDrop(
                        color: Color(0XFFF43F5E), size: 35),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
