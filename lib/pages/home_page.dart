import 'dart:io';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/Model/home_page_model.dart';
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

  List<SpecialDeal> aksiya = [
    SpecialDeal(
        food: 'assets/image/burger.png',
        color: LinearGradient(
          colors: [Color(0xffFF1843), Color(0xffFF7E95)],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
        ),
        buttonColor:
            LinearGradient(colors: [Color(0xffFFB800), Color(0xffFFB800)])),
    SpecialDeal(
        food: 'assets/image/pizza.png',
        color: LinearGradient(
          colors: [Color(0xffFFB800), Color(0xffFFDA7B)],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
        ),
        buttonColor:
            LinearGradient(colors: [Color(0xffFF1843), Color(0xffFF7E95)])),
    SpecialDeal(
        food: 'assets/image/kebab.png',
        color: LinearGradient(
          colors: [Color(0xff1EC87B), Color(0xff10EB89)],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
        ),
        buttonColor:
            LinearGradient(colors: [Color(0xffFFB800), Color(0xffFFB800)])),
  ];

  List<PopularRes> restaurant = [
    PopularRes(
        icon: SvgPicture.asset(
          'assets/svg/lovy.svg',
          color: Color(0xffF43F5E),
          height: 60.h,
          width: 68.03.w,
        ),
        name: 'Lovy Food',
        time: '10 mins'),
    PopularRes(
        icon: SvgPicture.asset(
          'assets/svg/cloudy.svg',
          height: 55.h,
          width: 75.w,
          color: Color(0xffFFB800),
        ),
        name: 'Cloudy Resto',
        time: '14 mins'),
    PopularRes(
        icon: SvgPicture.asset(
          'assets/svg/circlo.svg',
          height: 60.h,
          width: 60.w,
          color: Color(0xff74A3FF),
        ),
        name: 'Circlo Resto',
        time: '11 mins'),
    PopularRes(
        icon: SvgPicture.asset(
          'assets/svg/haty.svg',
          height: 60.h,
          width: 81.29.w,
          color: Color(0xff23A757),
        ),
        name: 'Haty Food',
        time: '16 mins'),
    PopularRes(
        icon: SvgPicture.asset(
          'assets/svg/recto.svg',
          height: 60.h,
          width: 60.w,
          color: Color(0xffFFB800),
        ),
        name: 'Recto Food',
        time: '15 mins'),
    PopularRes(
        icon: SvgPicture.asset(
          'assets/svg/hearthy.svg',
          height: 60.h,
          width: 71.17.w,
          color: Color(0xffFFB800),
        ),
        name: 'Recto Food',
        time: '15 mins'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/image/Group.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            child: BottomNavyBar(
                selectedIndex: currentIndex,
                showElevation: true,
                backgroundColor: Colors.white,
                containerHeight: 65,
                itemCornerRadius: 24,
                curve: Curves.decelerate,
                items: [
                  BottomNavyBarItem(
                      icon: Icon(Icons.home),
                      title: Text('Home'),
                      activeColor: Color(0xffFF1843)),
                  BottomNavyBarItem(
                      icon: Icon(Icons.shopping_basket),
                      title: Text('Order'),
                      activeColor: Color(0xffFF1843)),
                  BottomNavyBarItem(
                      icon: Icon(Icons.message),
                      title: Text('Chat'),
                      activeColor: Color(0xffFF1843)),
                  BottomNavyBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Profile'),
                    activeColor: Color(0xffFF1843),
                  )
                ],
                onItemSelected: ((value) => setState(() {
                      currentIndex = value;
                    }))),
          ),
          body: SafeArea(
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)))),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24.r)),
                                gradient: aksiya[index].color),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 14, bottom: 15, left: 23, right: 19),
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
                                      style: GoogleFonts.sourceSansPro(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'December',
                                      style: GoogleFonts.sourceSansPro(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    14.verticalSpace,
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 33),
                                      decoration: BoxDecoration(
                                          gradient: aksiya[index].buttonColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32))),
                                      child: Text(
                                        'Buy Now',
                                        style: GoogleFonts.sourceSansPro(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => PopularRestaurantPage())));
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
                      padding: EdgeInsets.only(bottom: 32, top: 32, left: 24),
                      scrollDirection: Axis.horizontal,
                      itemCount: restaurant.length,
                      itemBuilder: ((context, index) => Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: 160.w,
                            height: 184.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 50,
                                      offset: Offset(0, 6),
                                      color:
                                          Color(0xff5A6CEA).withOpacity(0.08))
                                ],
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24))),
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
                      child: Text(
                        'See all',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffF43F5E)),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 32),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: ((context, index) => Container(
                            margin: EdgeInsets.only(bottom: 30),
                            height: 88.h,
                            width: 380.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                color: Colors.white),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                12.horizontalSpace,
                                Container(
                                  height: 64.h,
                                  width: 64.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/salad1.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                20.horizontalSpace,
                                Padding(
                                  padding: const EdgeInsets.only(top: 18),
                                  child: Text(
                                    'Original Salad',
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ))),
                )
              ],
            ),
          ),
        ));
  }
}
