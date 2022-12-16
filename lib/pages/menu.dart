import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularMenuPage extends StatefulWidget {
  const PopularMenuPage({super.key});

  @override
  State<PopularMenuPage> createState() => _PopularMenuPageState();
}

class _PopularMenuPageState extends State<PopularMenuPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
      body: Stack(
        children: [
           Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Group.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(9.82)),
                                          color: Color.fromARGB(
                                              255, 234, 175, 194)),
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
                                          fontSize: 26,
                                          fontWeight: FontWeight.w600),
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
                              padding:
                                  const EdgeInsets.only(left: 24, right: 20),
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: Color(0xffF43F5E).withOpacity(0.1)),
                              child: Icon(
                                Icons.filter_list,
                                color: Color(0xffF43F5E),
                              ),
                            )
                          ],
                        ),
                       
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        
        ],
      ),
    );
  }
}
