import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/screens/login_with_phone.dart';
import 'package:kistmat_connection/screens/phone_verification_screen.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class AccountRecovery extends StatefulWidget {
  static String ID = "/account_recovery";

  @override
  _AccountRecoveryState createState() => _AccountRecoveryState();
}

class _AccountRecoveryState extends State<AccountRecovery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("assets/svg/back.svg",
                      width: 20, height: 20),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: SvgPicture.asset(
                  "assets/svg/account_recovery.svg",
                  width: MediaQuery.of(context).size.width * 0.60,
                  height: MediaQuery.of(context).size.width * 0.60,
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: CenterText(
                    isBold: true,
                    text: "Account Recovery",
                    textColor: Colors.black,
                    fontSize: fontsize2),
              ),
              SizedBox(height: 10),
              Center(
                child: CenterText(
                    isCenter: true,
                    isBold: false,
                    text: "Lost access to your email or Facebook account?",
                    textColor: Colors.black,
                    fontSize: 14),
              ),
              SizedBox(height: 10),
              Center(
                child: CenterText(
                    isBold: false,
                    isCenter: true,
                    text:
                        "Not to worry, we can help you log in with your phone number.",
                    textColor: Colors.black,
                    fontSize: 14),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, LoginWithPhoneScreen.ID);
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
            ],
          ),
        ),
      ),
    );
  }
}
