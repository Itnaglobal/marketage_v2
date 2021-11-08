import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketage_v2/controllers/service_controller.dart';
import 'package:marketage_v2/widgets/offer_card.dart';
import 'package:marketage_v2/widgets/service_card.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 30,
          ),
          const ListTile(
            leading: Icon(Icons.design_services),
            title: Text('Graphics & Design'),
          ),
          const ListTile(
            leading: Icon(Icons.coffee_maker),
            title: Text('Lifestyle'),
          ),
          const ListTile(
            leading: Icon(Icons.business_center),
            title: Text('Business'),
          ),
          const ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Music & Audio'),
          ),
          const ListTile(
            leading: Icon(Icons.video_library),
            title: Text('Video & Animation'),
          ),
          const ListTile(
            leading: Icon(Icons.pages),
            title: Text('Writing & Translation'),
          ),
          const ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Digital Marketing'),
          ),
          const ListTile(
            leading: Icon(Icons.code),
            title: Text('Programing & Tech'),
          ),
          const ListTile(
            leading: Icon(Icons.data_usage),
            title: Text('Data'),
          ),
        ],
      ),
    );
  }
}
