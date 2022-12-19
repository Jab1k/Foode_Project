import 'package:flutter/material.dart';
import 'package:food_delivery/Model/user_model.dart';
import 'package:food_delivery/pages/general_page.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/store/local_store.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/onboarding_page.dart';

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
    Future.delayed(Duration(seconds: 3), () async {
      isLoading = false;

      LocalStore local = LocalStore();
      UserModel user = await local.getUser();
      
      //  SharedPreferences _store = await SharedPreferences.getInstance();
      // String name = _store.getString('nickname') ?? '';

      if (user.nickName.isEmpty) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => OnBoardingPage())));
      } else {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => GeneralPage())));
      }
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
                    height: 334.h,
                    width: 346.52.w,
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
