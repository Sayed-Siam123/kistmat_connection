import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

import 'EthinicOriginScreen.dart';
import 'add_photos.dart';
import 'home_screen.dart';

class EditProfileScreen extends StatefulWidget {
  static String ID = "/edit_profile_screen";

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  List<String> items = ["Yes", "No"];

  int _selected_education = -1;

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: BackWithProgress(
                  onBackClick: () {
                    Navigator.pop(context);
                  },
                  progress: 0,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 0, bottom: hp(2)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: hp(3)),
                      CenterText(
                          isBold: true,
                          textStyle: GoogleFonts.poppins(),
                          text: "Edit Profile",
                          textColor: Colors.black,
                          fontSize: fontSize),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              InputImage(),
                                              InputImage(),
                                              InputImage(),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              InputImage(),
                                              InputImage(),
                                              InputImage(),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              InputImage(),
                                              InputImage(),
                                              InputImage(),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: hp(4)),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, HomeScreen.ID);
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  child: Ink(
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        kPrimaryDarkColor,
                                        kPrimaryLightColor
                                      ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                    ),
                                    child: Container(
                                      constraints: const BoxConstraints(
                                          minWidth: 88.0, minHeight: 50.0),
                                      alignment: Alignment.center,
                                      child: CenterText(
                                          text: "Add Media",
                                          textColor: Colors.white,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "About Me",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text:
                                        "That's the most-commented-on line from my About Me page. It's the very last sentence and the sixth paragraph of 275 words,.",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Display name",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Asmaar Mohsin",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Date of Birth",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "July 22, 1989",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Gender",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Male",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Height",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "183cm (6'0\")",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Education",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Masters",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Profession",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Doctor",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding:
                                       EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Ethnic Origin",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Pakistan",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding:
                                       EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Religion",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Islam",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding:
                                       EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Sectarian division",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Sunni",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding:
                                       EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Martial status",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Never Married",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding:
                                       EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Children's?",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "No",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding:
                                       EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Willing to relocate?",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "No",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                decoration:
                                    BoxDecoration(color: Color(0xFFF3F2F3)),
                                child: Padding(
                                  padding:
                                       EdgeInsets.fromLTRB(wp(5), hp(4), wp(5), hp(1)),
                                  child: CenterText(
                                    text: "Exercise",
                                    textColor: Colors.black,
                                    fontSize: fontSize,
                                    isBold: true,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(wp(5), hp(2), wp(6), hp(1)),
                                child: CenterText(
                                    text: "Never",
                                    textColor: Colors.grey,
                                    fontSize: fontSize-2),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
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
