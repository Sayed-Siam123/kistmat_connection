import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'email_verification_screen.dart';
import 'name_screen.dart';

class PhoneVerificationScreen extends StatefulWidget {
  static String ID = "/phone_verification_screen";

  @override
  _PhoneVerificationScreenState createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context,NameScreen.ID);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: const EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              kPrimaryLightColor,
                              kPrimaryDarkColor
                            ]),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Container(
                            constraints: const BoxConstraints(
                                minWidth: 88.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: CenterText(
                                text: "Verify",
                                textColor: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/svg/back.svg",
                      width: 20, height: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/svg/phone_verification.svg",
                            width: 100, height: 100),
                        SizedBox(height: 30),
                        CenterText(
                            isBold: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "Enter Verification Code",
                            textColor: Colors.black,
                            fontSize: 20),
                        CenterText(
                            isCenter: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "Sent to +91-1234567890",
                            textColor: Colors.black,
                            fontSize: 14),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Spacer(),
                            CodeInput(),
                            SizedBox(width: 10),
                            CodeInput(),
                            SizedBox(width: 10),
                            CodeInput(),
                            SizedBox(width: 10),
                            CodeInput(),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: 20),
                        CenterText(
                            isBold: true,
                            isCenter: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "Resend Code",
                            textColor: kPrimaryLightColor,
                            fontSize: 20),
                      ],
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
