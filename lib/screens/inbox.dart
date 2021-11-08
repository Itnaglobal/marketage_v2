import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(),
      // bottomNavigationBar: BottomBar(),
      body: Container(child: Text("Inbox Page")),
    );
  }
}
