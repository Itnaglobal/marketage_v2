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
        onTap: () {
          Navigator.of(context).pushNamed(
            '/offer-details-screens',
            arguments: id,
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Image.network(
            "https://marketage.io/$img",
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
      ),
      footer: GridTileBar(
        backgroundColor: null,
        title: Text(title,
            style:
                const TextStyle(fontSize: 16.00, fontWeight: FontWeight.bold)),
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
