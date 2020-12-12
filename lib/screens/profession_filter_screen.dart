import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'ethnicities_filter_screen.dart';

class ProfessionFilterScreen extends StatefulWidget {
  static String ID = "/profession_filter_screen";

  @override
  _ProfessionFilterScreenState createState() => _ProfessionFilterScreenState();
}

class _ProfessionFilterScreenState extends State<ProfessionFilterScreen> {
  int _index = 0;
  List<String> items = [
    "All",
    "Business Owner",
    "Chef",
    "Chemist",
    "Civil Engineer",
    "Computer Engineer",
    "Consultant",
    "Cosmologist",
    "Counselor"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      "assets/svg/back.svg",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Center(
                    child: CenterText(
                      text: "Profession",
                      textColor: Colors.black,
                      fontSize: 25,
                      isBold: true,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                      padding: EdgeInsets.all(5),
                      itemCount: items.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            FilterListItem(
                              onClick: (int value) {
                                setState(() {
                                  _index = value;
                                });
                              },
                              index: index,
                              text: items[index],
                              isClicked: _index == index,
                            ),
                            SizedBox(height: 10),
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
