import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/screens/name_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class EmailVerificationScreen extends StatefulWidget {
  static String ID = "/email_verification_screen";

  @override
  _EmailVerificationScreenState createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  String terms =
      """When you tap "Continue, Kismat Konnection will send an email with verification code. 

Don't forget to check SPAM box.
  """;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          color: Colors.transparent,
          child: Padding(
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
                                  text: "Continue",
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
                          SvgPicture.asset("assets/svg/email_verification.svg",
                              width: svgSize, height: svgSize),
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
                              text: "Sent to name@exapmle.com",
                              textColor: Colors.black,
                              fontSize: 14),
                          SizedBox(height: 30),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CodeInput(),
                              CodeInput(),
                              CodeInput(),
                              CodeInput(),
                            ],
                          ),
                          SizedBox(height: 20),
                          CenterText(
                            isBold: true,
                              isCenter: true,
                              textStyle: GoogleFonts.poppins(),
                              text: "Resend Code",
                              textColor: kPrimaryLightColor,
                              fontSize: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CodeInput extends StatelessWidget {
  final Function(String) inputValue;
  final FocusNode focusNode;
  final TextEditingController controller;

  CodeInput({this.inputValue, this.focusNode, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kPrimaryLightColor, width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          onChanged: (String value) {
            inputValue(value);
          },
          maxLength: 1,
          decoration: InputDecoration(
            counter: SizedBox.shrink(),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          keyboardType: TextInputType.phone,
        ),
      ),
    );
  }
}
