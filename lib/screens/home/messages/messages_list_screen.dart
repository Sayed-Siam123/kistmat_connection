import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/cache_image.dart';
import 'package:kistmat_connection/widgets/center_text.dart';
import 'package:kistmat_connection/screens/chat_messages_screen.dart';
import 'package:responsive_screen/responsive_screen.dart';

class MessagesListScreen extends StatefulWidget {
  @override
  _MessagesListScreenState createState() => _MessagesListScreenState();
}

class _MessagesListScreenState extends State<MessagesListScreen> {
  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CenterText(
                    text: "New Matches",
                    textColor: kPrimaryLightColor,
                    fontSize: fontSize-1,
                    isBold: true),
                Spacer()
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenWidth/2,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return MatachUserListItem();
                },
              ),
            ),
            CenterText(
              text: "Messages",
              textColor: Color(0xFF413E3F),
              fontSize: fontSize-1,
              isBold: true,
            ),
            UserMessagesItem(),
            UserMessagesItem(),
            UserMessagesItem(),
            UserMessagesItem(),
            UserMessagesItem(),
            UserMessagesItem(),
            UserMessagesItem(),
            UserMessagesItem(),
            UserMessagesItem(),
            UserMessagesItem(),
          ],
        ),
      ),
    );
  }
}

class UserMessagesItem extends StatelessWidget {
  const UserMessagesItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp

    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, ChatMessagesScreen.ID);
      },
      leading: AppCacheImage(
        width: hp(7),
        height: hp(7),
        round: wp(6),
        imageUrl:
            "https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/e43107fa73798ded74d1b909bafd0792-1580663169328/bc0b122a-72c6-4148-afea-710f3b53efda.jfif",
      ),
      title: CenterText(
        text: "Pankaj, 28",
        textColor: Colors.grey,
        fontSize: fontSize-2,
        isBold: true,
      ),
      subtitle: CenterText(
          text: "Hi, how are you doing? ",
          textColor: Color(0xFF413E3F),
          isBold: true,
          fontSize: fontSize-4),
      trailing: CenterText(
        text: "10:42 am",
        textColor: Colors.grey,
        fontSize: fontSize-5,
        isBold: true,
      ),
    );
  }
}

class MatachUserListItem extends StatelessWidget {
  const MatachUserListItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wp = Screen(context).wp; //specify wp
    final hp = Screen(context).hp; //specify hp

    return Padding(
      padding:const EdgeInsets.only(right: 7),
      child: Container(
        width: 85,
        child: Column(
          children: [
            ClipRRect(
              child: Container(
                width: 85,
                height: SizeConfig.screenHeight*.2,
                child: AppCacheImage(
                  width: double.infinity,
                  height: double.infinity,
                  imageUrl:
                      "https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/e43107fa73798ded74d1b909bafd0792-1580663169328/bc0b122a-72c6-4148-afea-710f3b53efda.jfif",
                ),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: CenterText(
                isCenter: true,
                maxLines: 2,
                text: "Usman Ali\n shakhs kajh\ns askajsal",
                textColor: Colors.grey,
                fontSize: 12,
                isBold: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
