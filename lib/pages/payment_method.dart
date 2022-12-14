import 'package:flutter/material.dart';
import 'package:food_delivery/pages/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'uploading_photo.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int status = -1;

  List<Cards> cards = [
    Cards(
      images: SvgPicture.asset(
        'assets/svg/Frame.svg',
        height: 32,
        width: 83,
      ),
    ),
    Cards(
      images: SvgPicture.asset(
        'assets/svg/visa.svg',
        height: 32,
        width: 83,
      ),
    ),
    Cards(
      images: SvgPicture.asset(
        'assets/svg/payoner.svg',
        height: 32,
        width: 83,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.18, vertical: 8.18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9.82)),
                        color: Color.fromARGB(255, 234, 175, 194)),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffF43F5E),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'Payment method',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Text(
                'This data will be displayed in your account profile for security',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: cards.length,
                  itemBuilder: ((context, index) => InkWell(
                        onTap: () {
                          if (status == index) {
                            status = -1;
                          } else {
                            status = index;
                          }
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 24),
                            padding: EdgeInsets.only(
                                top: 28.5, bottom: 28.5, left: 147, right: 147),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      offset: Offset(-0, 1),
                                      color: Colors.grey)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                border: Border.all(
                                    color: status == index
                                        ? Color(0xffF43F5E)
                                        : Color(0xffEBEEF2),
                                    width: 1)),
                            child: cards[index].images,
                          ),
                        ),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: InkWell(
                onTap: () {
                  if (status != -1) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => UploadPhotoPage())));
                  }
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 161),
                  decoration: BoxDecoration(
                    color: status != -1
                        ? Color(0xffFF1843)
                        : Color.fromARGB(244, 235, 134, 164),
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
