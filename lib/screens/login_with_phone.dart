import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:kistmat_connection/screens/phone_verification_screen.dart';
import 'package:kistmat_connection/utils/app_strings.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class LoginWithPhoneScreen extends StatefulWidget {
  static String ID = "/login_with_phone";

  @override
  _LoginWithPhoneScreenState createState() => _LoginWithPhoneScreenState();
}

class _LoginWithPhoneScreenState extends State<LoginWithPhoneScreen> {
  String terms =
      """When you tap "Continue, Kismat Konnection will send a text with verification code. Message and data rates may apply. The verified phone number can be used to log in. """;

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
                        Navigator.pushNamed(context,
                            PhoneVerificationScreen.ID);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [kPrimaryLightColor, kPrimaryDarkColor]),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                              minWidth: 88.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: CenterText(
                              text: "Continue",
                              textColor: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  )
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CenterText(
                            isBold: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "My Number is",
                            textColor: Colors.black,
                            fontSize: 25),
                        Padding(
                            padding: EdgeInsets.all(8),
                            child: InternationalPhoneNumberInput(
                              hintText: AppString.PHONE_NUMBER(),
                              selectorType: PhoneInputSelectorType.DIALOG,
                              onInputChanged: (number) {},
                            )),
                        SizedBox(height: 50),
                        CenterText(
                            text: terms,
                            textColor: Colors.black,
                            fontSize: 16,
                            textStyle: GoogleFonts.poppins(),
                            isCenter: false),
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
