import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fill_bio.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool value = false;
  bool visibilityOfpasswor = false;
  bool isEmailEmpty = false;
  bool isPasswordEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 114.4, vertical: 24),
              child: Image.asset(
                'assets/image/LogoMainPage.png',
                height: 192,
                width: 199.2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 62),
              child: Text(
                'Sign up for free',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, top: 32),
              child: Row(
                children: [
                  Text(
                    'Email',
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
                  isEmailEmpty = false;
                  setState(() {});
                },
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 24, right: 80, top: 12, bottom: 12),
                  hintText: 'Email or Phone Number',
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffDADEE3)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 221, 206, 206)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 221, 206, 206)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
            isEmailEmpty
                ? Padding(
                    padding: const EdgeInsets.only(left: 24, top: 8, right: 24),
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
                            'Please fill the Email',
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
              padding: const EdgeInsets.only(left: 48, top: 20),
              child: Row(
                children: [
                  Text(
                    'Password',
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
                  isPasswordEmpty = false;
                  setState(() {});
                },
                controller: password,
                obscureText: visibilityOfpasswor,
                obscuringCharacter: '*',
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 24, right: 80, top: 12, bottom: 12),
                    hintText: 'Password',
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
                    suffixIcon: IconButton(
                        onPressed: (() {
                          setState(() {
                            visibilityOfpasswor = !visibilityOfpasswor;
                          });
                        }),
                        icon: Icon(visibilityOfpasswor
                            ? Icons.visibility
                            : Icons.visibility_off))),
              ),
            ),
            isPasswordEmpty
                ? Padding(
                    padding: const EdgeInsets.only(left: 24, top: 8, right: 24),
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
                            'Please fill the Password',
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
              padding: const EdgeInsets.only(left: 48, top: 22),
              child: Row(
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(
                          width: 1.0,
                          color: Color(0xffFF1843),
                        ),
                      ),
                      activeColor: Color(0xffFF1843),
                      value: this.value,
                      onChanged: ((value) {
                        setState(() {
                          this.value = value!;
                        });
                      })),
                  Text(
                    'Remember me',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2C3A4B)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: InkWell(
                onTap: () {
                  if (email.text.isEmpty) {
                    isEmailEmpty = true;
                  } else if (password.text.isEmpty) {
                    isPasswordEmpty = true;
                  } else if (email.text.isNotEmpty &&
                      password.text.isNotEmpty) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => FillBioPage())));
                  }
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 161),
                  decoration: BoxDecoration(
                    color: email.text.isEmpty || password.text.isEmpty
                        ? Color.fromARGB(244, 235, 134, 164)
                        : Color(0xffFF1843),
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
                  child: Center(
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Text(
                'or continue with',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 37.5, right: 12),
                          child: Image.asset(
                            'assets/image/facebook.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Text(
                          'Facebook',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    height: 57,
                    width: 178,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  ),
                  Container(
                    height: 57,
                    width: 178,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 221, 206, 206)),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 37.5, right: 12),
                          child: Image.asset(
                            'assets/image/google.png',
                            height: 25,
                            width: 24,
                          ),
                        ),
                        Text(
                          'Google',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Already have an account?',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff858C94)),
                ),
                TextButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffF43F5E),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
