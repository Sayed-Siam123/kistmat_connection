import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/models/drop_down_item.dart';
import 'package:kistmat_connection/screens/SecterianDivisionScreen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EthinicOriginScreen.dart';

class ReligionScreen extends StatefulWidget {
  static String ID = "/religion_screen";

  @override
  _ReligionScreenState createState() => _ReligionScreenState();
}

class _ReligionScreenState extends State<ReligionScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
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
                            Navigator.pushNamed(context, SecterianDivision.ID);
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
                BackWithProgress(
                  onBackClick: () {
                    Navigator.pop(context);
                  },
                  progress: 0.318,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 60.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/svg/religion.svg",
                            width: svgSize, height: svgSize),
                        SizedBox(height: 20),
                        CenterText(
                            isBold: true,
                            textStyle: GoogleFonts.poppins(),
                            text: "What is your religion?",
                            textColor: Colors.black,
                            fontSize: fontsize2),
                        SizedBox(height: 30),
                        CustomDropDown(
                          text: "Select your religion",
                          items: [
                            DropDownItem(
                                "Islam", "assets/svg/islam.svg", "Islam"),
                            DropDownItem(
                                "Hinduism", "assets/svg/hindu.svg", "sa"),
                            DropDownItem(
                                "Christianity", "assets/svg/church.svg", "sa"),
                            DropDownItem(
                                "Sikhism", "assets/svg/sikhism.svg", "sa"),
                            DropDownItem(
                                "Buddhism", "assets/svg/buddha.svg", "sa"),
                            DropDownItem("Zoroastrianism",
                                "assets/svg/zoroastrianism.svg", "sa"),
                            DropDownItem(
                                "Jainism", "assets/svg/jainism.svg", "sa"),
                            DropDownItem("Other", "assets/svg/anahata.svg", "sa"),
                          ],
                        )
                      ],
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

class CustomDropDown extends StatefulWidget {


  CustomDropDown({this.text, this.items, this.selectedValue, this.selectedCountry});

  String text;
  List<DropDownItem> items;
  Function(String selectedValue) selectedValue;
  String selectedCountry;

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  bool isClicked = false;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 300,
        child: Stack(
          children: [
            Visibility(
              visible: isClicked,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(width: kBorderWidth, color: kBorderColor),
                      borderRadius: BorderRadius.circular(kBorderRadius)),
                  child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Scrollbar(
                        thickness: 10,
                        controller: controller,
                        isAlwaysShown: true,
                        radius: Radius.circular(10),
                        child: ListView.builder(
                            padding: EdgeInsets.all(5),
                            itemCount: widget.items.length,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        widget.selectedCountry = widget.items[index].text;
                                        this.isClicked = false;
                                      });
                                      widget.selectedValue(widget.items[index].text);
                                    },
                                    child: Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Visibility(
                                          visible:
                                              widget.items[index].svg != null,
                                          child: SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: SvgPicture.asset(
                                                widget.items[index].svg ?? "",
                                                width: 30,
                                                height: 30),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        CenterText(
                                            maxLines: 2,
                                            text:
                                                widget.items[index].text ?? "",
                                            isBold: true,
                                            textColor: Colors.black,
                                            fontSize: 16),
                                        SizedBox(height: 50)
                                      ],
                                    ),
                                  ),
                                ],
                              );
                              ;
                            }),
                      )
                      /*     child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ...widget.items.map((e) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        widget.selectedCountry = e.text;
                                        this.isClicked = false;
                                      });
                                      widget.selectedValue(e.text);
                                    },
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(e.svg ?? "",
                                            width: 30, height: 30),
                                        SizedBox(width: 10),
                                        CenterText(
                                            maxLines: 2,
                                            text: e.text ?? "",
                                            isBold: true,
                                            textColor: Colors.black,
                                            fontSize: 18),
                                        SizedBox(height: 40)
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }).toList()
                          ],
                        ),
                      ),
                    ),*/
                      ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  this.isClicked = !this.isClicked;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 6.0,
                          offset: Offset(0.0, 0.5))
                    ],
                    border: Border.all(
                        width: 2, color: Colors.grey.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10),
                      CenterText(
                          text: this.widget.selectedCountry ?? this.widget.text,
                          textColor: Colors.black,
                          isBold: true,
                          fontSize: 14),
                      Spacer(),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
