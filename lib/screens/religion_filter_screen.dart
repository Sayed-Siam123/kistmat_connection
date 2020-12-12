import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'ethnicities_filter_screen.dart';

class ReligionFilterScreen extends StatefulWidget {
  static String ID = "/religion_filter_screen";

  @override
  _ReligionFilterScreenState createState() => _ReligionFilterScreenState();
}

class _ReligionFilterScreenState extends State<ReligionFilterScreen> {
  int _index = 0;
  List<String> items = [
    "All",
    "Islam",
    "Hinduism",
    "Christianity",
    "Sikhism",
    "Buddhism",
    "Zoroastrianism",
    "Jainism",
    "Other"
  ];
  List<String> svgs = [
    "a",
    "assets/svg/islam.svg",
    "assets/svg/hindu.svg",
    "assets/svg/church.svg",
    "assets/svg/sikhism.svg",
    "assets/svg/buddha.svg",
    "assets/svg/zoroastrianism.svg",
    "assets/svg/jainism.svg",
    "assets/svg/anahata.svg",

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
                      text: "Religion",
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
                            FilterImageListItem(
                              onClick: (int value) {
                                setState(() {
                                  _index = value;
                                });
                              },
                              path: svgs[index],
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

class FilterImageListItem extends StatefulWidget {
  FilterImageListItem({
    @required this.text,
    @required this.isClicked,
    @required this.index,
    @required this.onClick,
    @required this.path,
  });

  bool isClicked;
  int index;
  Function(int index) onClick;
  String text;
  String path;

  @override
  _FilterImageListItemState createState() => _FilterImageListItemState();
}

class _FilterImageListItemState extends State<FilterImageListItem> {
  @override
  Widget build(BuildContext context) {
    widget.isClicked = widget.isClicked ?? false;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {
          widget.onClick.call(this.widget.index);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(widget.path, width: 25, height: 25),
                SizedBox(width: 10),
                Expanded(
                  child: CenterText(
                    text: this.widget.text,
                    textColor:
                        widget.isClicked ? kPrimaryLightColor : Colors.black,
                    fontSize: 20,
                    isBold: true,
                  ),
                ),
                Spacer(),
                if (widget.isClicked)
                  Icon(Icons.check, size: 40, color: kPrimaryLightColor)
              ],
            ),
            if (widget.isClicked) Divider()
          ],
        ),
      ),
    );
  }
}
