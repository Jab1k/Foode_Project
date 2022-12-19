import 'dart:io';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/Model/home_page_model.dart';
import 'package:food_delivery/pages/popular_menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'restaurant_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String imagepath = '';
  int currentIndex = 0;

  Future<void> getInfo() async {
    SharedPreferences _local = await SharedPreferences.getInstance();
    name = _local.getString('nickname') ?? '';
    imagepath = _local.getString('image') ?? '';
    setState(() {});
  }

  @override
  void initState() {
    getInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/image/Group.png'))),
        child: Scaffold(
          body: SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Row(
                    children: [
                      24.horizontalSpace,
                      Container(
                        height: 50.r,
                        width: 50.r,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: FileImage(File(imagepath)),
                                fit: BoxFit.cover)),
                      ),
                      24.horizontalSpace,
                      Text(
                        name,
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
                  32.verticalSpace,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 20),
                        child: Container(
                          height: 45.h,
                          width: 316.w,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF4F6F9),
                                contentPadding: EdgeInsets.only(
                                  left: 28,
                                ),
                                suffixIcon: Icon(Icons.search_rounded),
                                hintText: 'Search',
                                hintStyle: GoogleFonts.sourceSansPro(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffF4F6F9),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffF4F6F9),
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100)))),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Color(0xffF43F5E).withOpacity(0.1)),
                        child: Icon(
                          Icons.filter_list,
                          color: Color(0xffF43F5E),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          32.verticalSpace,
                          SizedBox(
                            height: 244,
                            child: ListView.builder(
                                padding: EdgeInsets.only(
                                  top: 32,
                                  bottom: 32,
                                  left: 24,
                                ),
                                scrollDirection: Axis.horizontal,
                                itemCount: aksiya.length,
                                itemBuilder: ((context, index) => Container(
                                      margin: EdgeInsets.only(right: 15),
                                      height: 180.h,
                                      width: 380.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(24.r)),
                                          gradient: aksiya[index].color),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 14,
                                                bottom: 15,
                                                left: 23,
                                                right: 19),
                                            child: Image.asset(
                                              aksiya[index].food,
                                              height: 151.h,
                                              width: 166.w,
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              30.verticalSpace,
                                              Text(
                                                'Special Deal for',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.white),
                                              ),
                                              Text(
                                                'December',
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.white),
                                              ),
                                              14.verticalSpace,
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 8,
                                                    horizontal: 33),
                                                decoration: BoxDecoration(
                                                    gradient: aksiya[index]
                                                        .buttonColor,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                32))),
                                                child: Text(
                                                  'Buy Now',
                                                  style:
                                                      GoogleFonts.sourceSansPro(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ))),
                          ),
                          32.verticalSpace,
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  'Popular Restaurant',
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                PopularRestaurantPage())));
                                  },
                                  child: Text(
                                    'See all',
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffF43F5E)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 248.h,
                            child: ListView.builder(
                                padding: EdgeInsets.only(
                                    bottom: 32, top: 32, left: 24),
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: ((context, index) => Container(
                                      margin: EdgeInsets.only(left: 10.w),
                                      width: 160.w,
                                      height: 184.h,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 50,
                                                offset: Offset(0, 6),
                                                color: Color(0xff5A6CEA)
                                                    .withOpacity(0.08))
                                          ],
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(24))),
                                      child: Column(
                                        children: [
                                          24.verticalSpace,
                                          restaurant[index].icon,
                                          24.verticalSpace,
                                          Text(
                                            restaurant[index].name,
                                            style: GoogleFonts.sourceSansPro(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black),
                                          ),
                                          4.verticalSpace,
                                          Text(
                                            restaurant[index].time,
                                            style: GoogleFonts.sourceSansPro(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff6D7580)),
                                          ),
                                        ],
                                      ),
                                    ))),
                          ),
                          32.verticalSpace,
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  'Popular Menu',
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                PopMenuPage())));
                                  },
                                  child: Text(
                                    'See all',
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffF43F5E)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              padding:
                                  EdgeInsets.only(top: 32, left: 24, right: 24),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: ((context, index) => Container(
                                    margin: EdgeInsets.only(bottom: 30),
                                    height: 88.h,
                                    width: 380.w,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 50,
                                              offset: Offset(0, 6),
                                              color: Color(0xff5A6CEA)
                                                  .withOpacity(0.08))
                                        ],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        color: Colors.white),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        12.horizontalSpace,
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 12),
                                          child: Container(
                                            height: 64.h,
                                            width: 64.w,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        PopMenu[index].image),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        20.horizontalSpace,
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 18),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  PopMenu[index].name,
                                                  style:
                                                      GoogleFonts.sourceSansPro(
                                                          fontSize: 18.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.black),
                                                ),
                                              ),
                                              4.verticalSpace,
                                              Text(
                                                PopMenu[index].title,
                                                style:
                                                    GoogleFonts.sourceSansPro(
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xff858C94)),
                                              )
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 32, top: 22),
                                          child: Text(
                                            PopMenu[index].price,
                                            style: GoogleFonts.sourceSansPro(
                                                fontSize: 29.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xffF43F5E)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
