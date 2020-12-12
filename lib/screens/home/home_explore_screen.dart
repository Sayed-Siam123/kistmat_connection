import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/screens/its_latch_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/cache_image.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:responsive_screen/responsive_screen.dart';

class HomeExploreScreen extends StatefulWidget {
  @override
  _HomeExploreScreenState createState() => _HomeExploreScreenState();
}

class _HomeExploreScreenState extends State<HomeExploreScreen> {
  int selectedPage = 0;

  List<String> liked = [
    "https://images.unsplash.com/photo-1583452208101-7c1cc44c4132?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1573083816958-6bec2f4e11a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1561742139-77a5a42cc97b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1574981370294-edbbf06bb159?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1575932484214-9f4df39f7bf0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ];
  List<String> passed = [
    "https://images.unsplash.com/photo-1573483430292-5c4b813ef8d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1563987219716-dac41f2d0b3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  ];

  List<String> blocked = [
    "https://images.unsplash.com/photo-1572023172700-d2b8be55aa1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
  ];

  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30,45,30,12),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/svg/explore_filter.svg",
                      width: 25, height: 25),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryLightColor, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  /* if (selectedPage == 0)
                                    selectedPage = -1;
                                  else*/
                                  selectedPage = 0;
                                });
                              },
                              child: Container(
                                height: double.infinity,
                                decoration: BoxDecoration(
                                    color:
                                        selectedPage == 0 && selectedPage != -1
                                            ? kPrimaryLightColor
                                            : Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: CenterText(
                                  text: "Given",
                                  textColor:
                                      selectedPage == 0 && selectedPage != -1
                                          ? Colors.white
                                          : Colors.black,
                                  isBold: true,
                                )),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  /*if (selectedPage == 1)
                                    selectedPage = -1;
                                  else*/
                                  selectedPage = 1;
                                });
                              },
                              child: Container(
                                height: double.infinity,
                                decoration: BoxDecoration(
                                    color:
                                        selectedPage == 1 && selectedPage != -1
                                            ? kPrimaryLightColor
                                            : Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: CenterText(
                                    text: "Received",
                                    textColor:
                                        selectedPage == 1 && selectedPage != -1
                                            ? Colors.white
                                            : Colors.black,
                                    isBold: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/svg/broken_heart.svg",
                      width: 30, height: 30),
                ],
              ),
              if (selectedPage == 0) getGiven(),
              if (selectedPage == 1) getReceived(),
              if (selectedPage == -1) getUnMatch()
            ],
          ),
        ),
      ),
    );
  }

  Widget getUnMatch() {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: kPrimaryLightColor,
            unselectedLabelColor: Colors.black,
            indicatorColor: kPrimaryLightColor,
            tabs: [
              Tab(text: "Likes"),
              Tab(text: "Passed"),
              Tab(text: "Blocked"),
            ],
          ),
          body: TabBarView(
            children: [
              GetLikes(),
              getPassed(),
              getBlocked(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getReceived() {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: kPrimaryLightColor,
            unselectedLabelColor: Colors.black,
            indicatorColor: kPrimaryLightColor,
            tabs: [
              Tab(text: "Likes"),
              Tab(text: "Visitor"),
            ],
          ),
          body: TabBarView(
            children: [
              GetLikes(),
              getPassed(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getGiven() {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: kPrimaryLightColor,
            unselectedLabelColor: Colors.black,
            indicatorColor: kPrimaryLightColor,
            tabs: [
              Tab(text: "Likes"),
              Tab(text: "Passed"),
              Tab(text: "Blocked"),
            ],
          ),
          body: TabBarView(
            children: [
              GetLikes(),
              getPassed(),
              getBlocked(),
            ],
          ),
        ),
      ),
    );
  }

  Widget GetLikes() {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1 / 1.3,
        children: [
          ...liked.map((e) {
            return UserListCard(e);
          }).toList()
        ],
      ),
    );
  }

  Widget getBlocked() {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp

    return Padding(
      padding: EdgeInsets.only(top: hp(2)),
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1 / 1.3,
        children: [
          ...blocked.map((e) {
            return UserListCard(e);
          }).toList()
        ],
      ),
    );
  }

  Widget getPassed() {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    return Padding(
      padding: EdgeInsets.only(top: hp(2)),
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1 / 1.3,
        children: [
          ...passed.map((e) {
            return UserListCard(e);
          }).toList()
        ],
      ),
    );
  }
}

class UserListCard extends StatelessWidget {
  UserListCard(this.url);

  String url;

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, ItsMatchHomeScreen.ID);
        },
        child: Container(
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              AppCacheImage(
                imageUrl: this.url,
                width: double.infinity,
                height: double.infinity,
                showNative: true,
              ),
              Positioned(
                top: 15,
                left: 10,
                right: 10,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/user_card_list.png",
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "assets/svg/india_flag.svg",
                      height: 20,
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/svg/user_material.svg",
                          height: 10,
                        ),
                        SizedBox(width: 5),
                        CenterText(
                          text: "Carol, 22",
                          textColor: Colors.white,
                          fontSize: fontSize-4,
                          isBold: true,
                        )
                      ],
                    ),
                    CenterText(
                      text: "Accountant, Indian",
                      textColor: Colors.white,
                      fontSize: fontSize-4,
                      isBold: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        CenterText(
                          text: "Carol, 22",
                          textColor: Colors.white,
                          fontSize: fontSize-4,
                          isBold: true,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
