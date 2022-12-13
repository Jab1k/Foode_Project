import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class FillBioPage extends StatefulWidget {
  const FillBioPage({super.key});

  @override
  State<FillBioPage> createState() => _FillBioPageState();
}

class _FillBioPageState extends State<FillBioPage> {
  TextEditingController fullname = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController address = TextEditingController();
  bool value = false;
  bool visibilityOfpasswor = false;
  bool isFullNameEmpty = false;
  bool isNickNameEmpty = false;
  bool isPhoneNumberEmpty = false;
  bool isGenderEmpty = false;
  bool isDateOfBirthEmpty = false;
  bool isAddressEmpty = false;
  String initialvalue = 'Male';
  String datetext = '';
  var items = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.18, vertical: 8.18),
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
                        'Fill in your bio',
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
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 35),
                child: Row(
                  children: [
                    Text(
                      'Full Name',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2C3A4B)),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
                child: TextFormField(
                  onChanged: (value) {
                    bool isEmailEmpty = false;
                    setState(() {});
                  },
                  controller: fullname,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 24, right: 80, top: 12, bottom: 12),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffDADEE3)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                ),
              ),
              isFullNameEmpty
                  ? Padding(
                      padding:
                          const EdgeInsets.only(left: 24, top: 8, right: 24),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Icon(
                                Icons.error,
                                color: Color(0xff394452),
                              ),
                            ),
                            Text(
                              'Please fill the Full Name',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff394452)),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(top: 6, bottom: 6, left: 36),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Color(0xffEBEEF2)),
                      ),
                    )
                  : SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 35),
                child: Row(
                  children: [
                    Text(
                      'Nick Name',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2C3A4B)),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
                child: TextFormField(
                  onChanged: (value) {
                    bool isEmailEmpty = false;
                    setState(() {});
                  },
                  controller: nickname,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 24, right: 80, top: 12, bottom: 12),
                    hintText: 'Nick Name',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffDADEE3)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                ),
              ),
              isNickNameEmpty
                  ? Padding(
                      padding:
                          const EdgeInsets.only(left: 24, top: 8, right: 24),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Icon(
                                Icons.error,
                                color: Color(0xff394452),
                              ),
                            ),
                            Text(
                              'Please fill the Nick Name',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff394452)),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(top: 6, bottom: 6, left: 36),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Color(0xffEBEEF2)),
                      ),
                    )
                  : SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 35),
                child: Row(
                  children: [
                    Text(
                      'Phone Number',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2C3A4B)),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
                child: TextFormField(
                  onChanged: (value) {
                    bool isEmailEmpty = false;
                    setState(() {});
                  },
                  controller: phonenumber,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 24, right: 80, top: 12, bottom: 12),
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffDADEE3)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                ),
              ),
              isPhoneNumberEmpty
                  ? Padding(
                      padding:
                          const EdgeInsets.only(left: 24, top: 8, right: 24),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Icon(
                                Icons.error,
                                color: Color(0xff394452),
                              ),
                            ),
                            Text(
                              'Please fill the Phone Number',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff394452)),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(top: 6, bottom: 6, left: 36),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Color(0xffEBEEF2)),
                      ),
                    )
                  : SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 35),
                child: Row(
                  children: [
                    Text(
                      'Gender',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2C3A4B)),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
                child: DropdownButtonFormField(
                  icon: SvgPicture.asset(
                    'assets/svg/arrowdown.svg',
                    color: Colors.grey,
                  ),
                  value: initialvalue,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 24, right: 24, top: 12, bottom: 12),
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffDADEE3)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                  items: items
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (newValue) {
                    value = newValue as bool;
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 35),
                child: Row(
                  children: [
                    Text(
                      'Date of Birth',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2C3A4B)),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
                child: TextFormField(
                  onChanged: (value) {
                    bool isEmailEmpty = false;
                    setState(() {});
                  },
                  controller: dateOfBirth,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (() {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1970),
                                lastDate: DateTime.now())
                            .then((value) {
                          dateOfBirth.text = DateFormat('MMMM dd, yyyy')
                              .format(value ?? DateTime.now());
                          setState(() {});
                        });
                      }),
                      icon: SvgPicture.asset(
                        'assets/svg/calendar.svg',
                        height: 24,
                        width: 24,
                        color: Colors.grey,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(
                        left: 24, right: 24, top: 12, bottom: 12),
                    hintText: 'Date of Birth',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffDADEE3)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 35),
                child: Row(
                  children: [
                    Text(
                      'Address',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2C3A4B)),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffDA1414)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
                child: TextFormField(
                  onChanged: (value) {
                    bool isAddressEmpty = false;
                    setState(() {});
                  },
                  controller: address,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 24, right: 80, top: 12, bottom: 12),
                    hintText: 'Address',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffDADEE3)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                  ),
                ),
              ),
              isAddressEmpty
                  ? Padding(
                      padding:
                          const EdgeInsets.only(left: 24, top: 8, right: 24),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Icon(
                                Icons.error,
                                color: Color(0xff394452),
                              ),
                            ),
                            Text(
                              'Please fill the Phone Number',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff394452)),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(top: 6, bottom: 6, left: 36),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Color(0xffEBEEF2)),
                      ),
                    )
                  : SizedBox.shrink(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: InkWell(
                  onTap: () {
                    if (fullname.text.isEmpty) {
                      isFullNameEmpty = true;
                      setState(() {});
                    } else if (nickname.text.isEmpty) {
                      isNickNameEmpty = true;
                      setState(() {});
                    } else if (phonenumber.text.isEmpty) {
                      isPhoneNumberEmpty = true;
                      setState(() {});
                    } else if (address.text.isEmpty) {
                      isAddressEmpty = true;
                      setState(() {});
                    } else if (fullname.text.isNotEmpty) {
                      isFullNameEmpty = false;

                      setState(() {});
                    } else if (nickname.text.isNotEmpty) {
                      isNickNameEmpty = false;
                      setState(() {});
                    } else if (phonenumber.text.isNotEmpty) {
                      isPhoneNumberEmpty = false;
                      setState(() {});
                    } else if (address.text.isNotEmpty) {
                      isAddressEmpty = false;
                      setState(() {});
                    }
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    padding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 161),
                    decoration: BoxDecoration(
                      color: fullname.text.isEmpty ||
                              nickname.text.isEmpty ||
                              phonenumber.text.isEmpty ||
                              address.text.isEmpty
                          ? Color.fromARGB(244, 235, 134, 164)
                          : Color(0xffFF1843),
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
      ),
    );
  }
}
