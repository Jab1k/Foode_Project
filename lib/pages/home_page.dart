import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      image: AssetImage('assets/image/Group.png'))),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        24.horizontalSpace,
                        Image.asset(
                          'assets/image/Logo.png',
                          height: 36.h,
                          width: 36.w,
                        ),
                        24.horizontalSpace,
                        Text(
                          'Hello, Daniel !!',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xffF6F8FB),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Icon(
                              Icons.notifications_active,
                              color: Color(0xffF43F5E),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 180.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24.r)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xffFF1843),
                                Color(0xffFF7E95),
                              ])),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 14, bottom: 15, left: 23, right: 19),
                            child: Image.asset(
                              'assets/image/burger.png',
                              height: 151.h,
                              width: 166.w,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
