import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/food.png'),
                      fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
Text('Foode',style: ,)
                        ],
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
