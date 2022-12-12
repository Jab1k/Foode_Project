import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sign_in_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

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
                      image: AssetImage('assets/image/food.png'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Foode',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 33,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text(
                      'The best food ordering and delivery app of the century',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 48, left: 24, right: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => SignInPage())));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 14, horizontal: 169.5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                                colors: [
                                  Color(0xffFF1843),
                                  Color(0xffFF7E95)
                                ])),
                        child: Center(
                          child: Text(
                            'Next',
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
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
