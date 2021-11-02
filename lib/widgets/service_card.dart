import 'package:flutter/material.dart';
import 'package:marketage_v2/controllers/service_controller.dart';
import 'package:marketage_v2/screens/service_wise_offer.dart';
import 'package:provider/provider.dart';

class ServiceCard extends StatelessWidget {
  final int id;
  final String title;
  final String subTitle;
  final String img;

  ServiceCard({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.img,
  });
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        // onTap: () {
        //   Navigator.of(context).pushNamed(
        //     ServiceWiseOffer.routeName,
        //     arguments: id,
        //   );
        // },
        child: Image.network(
          "https://st4.depositphotos.com/14953852/24787/v/600/depositphotos_247872612-stock-illustration-no-image-available-icon-vector.jpg",
          height: 30,
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(title),
        // leading: IconButton(
        //   onPressed: () {
        //     Provider.of<ServiceController>(context, listen: false).favoritButton(id);
        //   },
        //   icon: Icon(
        //     favorit ? Icons.favorite : Icons.favorite_border,
        //     color: Colors.red,
        //   ),
        // ),
      ),
    );
  }
}
