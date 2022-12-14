import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotoPage extends StatefulWidget {
  const UploadPhotoPage({super.key});

  @override
  State<UploadPhotoPage> createState() => _UploadPhotoPageState();
}

class _UploadPhotoPageState extends State<UploadPhotoPage> {
  final ImagePicker _picker = ImagePicker();
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
                      'Upload your photo',
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
            24.verticalSpace,
            Container(
              padding:
                  EdgeInsets.only(left: 150, right: 150, top: 23, bottom: 23),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        offset: Offset(-0, 1),
                        color: Colors.grey)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffEBEEF2))),
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      final XFile? photo =
                          await _picker.pickImage(source: ImageSource.camera);
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 234, 175, 194)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      child: Icon(
                        Icons.photo_camera,
                        color: Color(0xffFF1843),
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    'Take photo',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            24.verticalSpace,
            Container(
              padding:
                  EdgeInsets.only(left: 150, right: 150, top: 23, bottom: 23),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        offset: Offset(-0, 1),
                        color: Colors.grey)
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffEBEEF2))),
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      final XFile? image =
                          await _picker.pickImage(source: ImageSource.gallery);
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 234, 175, 194)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                      child: Icon(
                        Icons.folder,
                        color: Color(0xffFF1843),
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    'From gallery',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
