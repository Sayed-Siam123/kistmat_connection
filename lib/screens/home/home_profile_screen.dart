import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kistmat_connection/screens/edit_profile.dart';
import 'package:kistmat_connection/screens/help_center_1.dart';
import 'package:kistmat_connection/screens/premuim_screen.dart';
import 'package:kistmat_connection/screens/report_problem.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:kistmat_connection/screens/home/settings_Screen.dart';
import 'package:kistmat_connection/screens/view_personal_profile.dart';
import 'package:responsive_screen/responsive_screen.dart';

class HomeProfileScreen extends StatefulWidget {
  @override
  _HomeProfileScreenState createState() => _HomeProfileScreenState();
}

class _HomeProfileScreenState extends State<HomeProfileScreen> {

  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    SizeConfig().init(context);
    // Throw an exception and capture it with the Sentry client:

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          child: Container(
            height: SizeConfig.screenHeight*.45,
            width: double.infinity,
            child: Image.asset(
              "assets/images/women_photo.png",
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: SizeConfig.screenHeight*.45,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 75),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset(
                    "assets/images/women_photo.png",
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CenterText(
                text: "Carol Winters",
                textColor: Colors.white,
                fontSize: fontSize,
                isBold: true,
              ),
              CenterText(
                text: "Doctor",
                textColor: Colors.white,
                fontSize: fontSize,
                isBold: true,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    size: fontSize,
                    color: Colors.white,
                  ),
                  SizedBox(width: wp(2),),
                  CenterText(
                    text: "Glasgow, USA",
                    textColor: Colors.white,
                    fontSize: fontSize,
                    isBold: true,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        spreadRadius: 2.5,
                        blurRadius: 3.5,
                        offset: Offset(0, 1.5), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(hp(2)),
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ViewPersonalProfile.ID);
                            },
                            child: getSeetingItem(
                                Icons.remove_red_eye, "View profile")),
                        SizedBox(height: 5),
                        Divider(),
                        SizedBox(height: 5),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, EditProfileScreen.ID);
                            },
                            child: getSeetingItem(Icons.edit, "Edit Profile")),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        spreadRadius: 2.5,
                        blurRadius: 3.5,
                        offset: Offset(0, 1.5), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, SettingsScreen.ID);
                            },
                            child: getSeetingItem(Icons.settings, "Settings")),
                        SizedBox(height: 5),
                        Divider(),
                        SizedBox(height: 5),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, PremiumScreen.ID);
                            },
                            child: getSeetingItem(Icons.badge, "Premium")),
                        SizedBox(height: 5),
                        Divider(),
                        SizedBox(height: 5),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, HelpCenter1.ID);
                            },
                            child: getSeetingItem(Icons.help, "Help Center")),
                        SizedBox(height: 5),
                        Divider(),
                        SizedBox(height: 5),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, ReportAProblem.ID);
                            },
                            child: getSeetingItem(
                                Icons.warning, "Report Problem")),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90),
            ],
          ),
        )
      ],
    );
  }

  Widget getSeetingItem(IconData remove_red_eye, String s) {
    return Row(
      children: [
        Icon(
          remove_red_eye,
          color: Colors.grey,
          size: fontSize-1,
        ),
        SizedBox(width: 10),
        CenterText(
          isCenter: false,
          text: s,
          textColor: Colors.black,
          fontSize: fontSize-1,
          isBold: true,
        ),
        Spacer(),
        Icon(
          Icons.chevron_right,
          color: Colors.grey,
        ),
      ],
    );
  }
}
