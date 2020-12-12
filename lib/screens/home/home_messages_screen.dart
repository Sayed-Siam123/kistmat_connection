import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kistmat_connection/screens/home/messages/messages_list_screen.dart';
import 'package:kistmat_connection/screens/home/messages/status_list_screen.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class HomeMessagesScreen extends StatefulWidget {
  @override
  _HomeMessagesScreenState createState() => _HomeMessagesScreenState();
}

class _HomeMessagesScreenState extends State<HomeMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: kPrimaryLightColor,
            unselectedLabelColor: Colors.black,
            indicatorColor: kPrimaryLightColor,
            tabs: [
              Tab(text: "Messages".toUpperCase()),
              Tab(text: "Status".toUpperCase()),
            ],
          ),
          body: TabBarView(
            children: [MessagesListScreen(), StatusListScreen()],
          ),
        ),
      ),
    );
  }
}
