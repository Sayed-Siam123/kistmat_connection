import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/cache_image.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:kistmat_connection/widgets/round_button.dart';

class ItsMatchHomeScreen extends StatefulWidget {
  static String ID = "/its_match_screen";

  @override
  _ItsMatchHomeScreenState createState() => _ItsMatchHomeScreenState();
}

class _ItsMatchHomeScreenState extends State<ItsMatchHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.clear,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CenterText(
                        isCenter: true,
                        text: "It's A\nKismat Konnection",
                        textColor: Colors.white,
                        fontSize: 35),
                    Stack(
                      children: [
                        SvgPicture.asset(
                          "assets/svg/match_transparent.svg",
                          color: Color(0xFF63D4E0),
                          width: MediaQuery.of(context).size.width * 0.70,
                          height: MediaQuery.of(context).size.width * 0.70,
                        ),
                        Positioned(
                          top: 50,
                          child: AppCacheImage(
                            round:
                                (MediaQuery.of(context).size.width * 0.45) / 2,
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.width * 0.45,
                            imageUrl:
                                "https://i.pinimg.com/originals/3f/68/3b/3f683b4e00b5602375838161d0688a89.jpg",
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 50,
                          child: AppCacheImage(
                            round:
                                (MediaQuery.of(context).size.width * 0.45) / 2,
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.width * 0.45,
                            imageUrl:
                                "https://www.waytoosocial.com/wp-content/uploads/guide-to-picking-up-women.jpeg",
                          ),
                        ),
                      ],
                    ),
                    CenterText(
                        isCenter: true,
                        text: "You and Shivani have liked each other.",
                        textColor: Colors.white,
                        fontSize: 20)
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: RoundButton(
                    color: Colors.white,
                    width: 100,
                    round: 20,
                    isBold: true,
                    fontSize: 20,
                    text: "Chat to Shivani",
                    textColor: kPrimaryLightColor,
                    function: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
