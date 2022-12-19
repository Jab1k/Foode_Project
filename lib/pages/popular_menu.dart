import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/Model/home_page_model.dart';
import 'package:google_fonts/google_fonts.dart';

class PopMenuPage extends StatefulWidget {
  const PopMenuPage({super.key});

  @override
  State<PopMenuPage> createState() => _PopMenuPageState();
}

class _PopMenuPageState extends State<PopMenuPage> {
  bool isSeraching = false;

  List searchingDatas = [];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/Group.png'),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            child: BottomNavyBar(
                selectedIndex: currentIndex,
                showElevation: true,
                backgroundColor: Colors.white,
                containerHeight: 91,
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
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.18, vertical: 8.18),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9.82)),
                                color: Color.fromARGB(255, 234, 175, 194)),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xffF43F5E),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'Popular Restaurant',
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 26, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
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
                        onChanged: (value) {
                          searchingDatas.clear();
                          PopMenu.forEach((element) {
                            if (element.name
                                .toUpperCase()
                                .contains(value.toUpperCase())) {
                              searchingDatas.add(element);
                            }
                          });
                          isSeraching = true;
                          setState(() {});
                        },
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
                  child: isSeraching
                      ? ListView.builder(
                          shrinkWrap: true,
                          padding:
                              EdgeInsets.only(top: 32, left: 24, right: 24),
                          scrollDirection: Axis.vertical,
                          itemCount: searchingDatas.length,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    color: Colors.white),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    12.horizontalSpace,
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Container(
                                        height: 64.h,
                                        width: 64.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    searchingDatas[index]
                                                        .image),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    20.horizontalSpace,
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: Text(
                                              searchingDatas[index].name,
                                              style: GoogleFonts.sourceSansPro(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          4.verticalSpace,
                                          Text(
                                            searchingDatas[index].title,
                                            style: GoogleFonts.sourceSansPro(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff858C94)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 32, top: 22),
                                      child: Text(
                                        searchingDatas[index].price,
                                        style: GoogleFonts.sourceSansPro(
                                            fontSize: 29.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffF43F5E)),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          padding:
                              EdgeInsets.only(top: 32, left: 24, right: 24),
                          scrollDirection: Axis.vertical,
                          itemCount: PopMenu.length,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16)),
                                    color: Colors.white),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    12.horizontalSpace,
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12),
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
                                      padding: const EdgeInsets.only(top: 18),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: Text(
                                              PopMenu[index].name,
                                              style: GoogleFonts.sourceSansPro(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          4.verticalSpace,
                                          Text(
                                            PopMenu[index].title,
                                            style: GoogleFonts.sourceSansPro(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff858C94)),
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
                              )),
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
