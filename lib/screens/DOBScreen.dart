import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/models/list_item.dart';
import 'package:kistmat_connection/screens/gender_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EthinicOriginScreen.dart';

class DOBScreen extends StatefulWidget {
  static String ID = "/dob_screen";

  @override
  _DOBScreenState createState() => _DOBScreenState();
}

class _DOBScreenState extends State<DOBScreen> {
  List<ListItem> _days = [
    ListItem(1, "DD"),
    ListItem(1, "1"),
    ListItem(2, "2"),
    ListItem(3, "3"),
  ];

  List<ListItem> _months = [
    ListItem(1, "DD"),
    ListItem(1, "1"),
    ListItem(2, "2"),
    ListItem(3, "3"),
  ];

  List<ListItem> _years = [
    ListItem(1, "YYYY"),
    ListItem(1, "1995"),
    ListItem(2, "1996"),
    ListItem(3, "1997"),
  ];

  List<DropdownMenuItem<ListItem>> _dropdownDaysItems;
  List<DropdownMenuItem<ListItem>> _dropdownMonthsItems;
  List<DropdownMenuItem<ListItem>> _dropdownYearsItems;

  ListItem _selectedDayItem;
  ListItem _selectedMonthItem;
  ListItem _selectedYearItem;

  void initState() {
    super.initState();
    _dropdownDaysItems = buildDropDownMenuItems(_days);
    _dropdownMonthsItems = buildDropDownMenuItems(_months);
    _dropdownYearsItems = buildDropDownMenuItems(_years);

    _selectedDayItem = _dropdownDaysItems[0].value;
    _selectedMonthItem = _dropdownMonthsItems[0].value;
    _selectedYearItem = _dropdownYearsItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

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
                            print("asaas");
                            Navigator.pushNamed(context, GenderScreen.ID);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                kPrimaryLightColor,
                                kPrimaryDarkColor,
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
                  progress: 0.12,
                ),
                Container(
                  width: SizeConfig.screenWidth,
                  margin: EdgeInsets.only(top: 0.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/svg/dob.svg",
                                width: 100, height: 100),
                            SizedBox(height: 20),
                            CenterText(
                                isBold: true,
                                textStyle: GoogleFonts.poppins(),
                                text: "When were you born?",
                                textColor: Colors.black,
                                fontSize: 16),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 80,
                                      height: kBorderHeight,
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(kBorderRadius),
                                          color: Colors.white,
                                          border: Border.all(
                                              width: kBorderWidth,
                                              color: kBorderColor)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                            value: _selectedDayItem,
                                            items: _dropdownDaysItems,
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedDayItem = value;
                                              });
                                            }),
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: kBorderHeight,
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(kBorderRadius),
                                          color: Colors.white,
                                          border: Border.all(
                                              width: kBorderWidth,
                                              color: kBorderColor)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                            value: _selectedMonthItem,
                                            items: _dropdownMonthsItems,
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedMonthItem = value;
                                              });
                                            }),
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: kBorderHeight,
                                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(kBorderRadius),
                                          color: Colors.white,
                                          border: Border.all(
                                              width: kBorderWidth,
                                              color: kBorderColor)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                            value: _selectedYearItem,
                                            items: _dropdownYearsItems,
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedYearItem = value;
                                              });
                                            }),
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
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
