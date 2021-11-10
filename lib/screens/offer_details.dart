// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:marketage_v2/controllers/offer_controller.dart';
import 'package:marketage_v2/widgets/offer_card.dart';
import 'package:provider/provider.dart';

class OfferDetails extends StatelessWidget {
  static const routeName = "/offer-details";

  const OfferDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments;
    final offer_details =
        Provider.of<OfferController>(context).offerDetails(id);
    final offer = Provider.of<OfferController>(context).offers;

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Carousel(
              dotBgColor: Colors.transparent,
              dotSize: 0.0,
              autoplay: false,
              animationDuration: const Duration(milliseconds: 2000),
              images: [
                Image.network(
                  'https://marketage.io/${offer_details.image}',
                  fit: BoxFit.cover,
                ),
                // Image.network(
                //   'https://i.insider.com/5ca389adc6cc503c5a53fd96?width=500&format=jpeg&auto=webp',
                //   fit: BoxFit.cover,
                // ),
                // Image.network(
                //   'https://i.insider.com/5ca389adc6cc503c5a53fd96?width=500&format=jpeg&auto=webp',
                //   fit: BoxFit.cover,
                // ),
                // Image.network(
                //   'https://i.insider.com/5ca389adc6cc503c5a53fd96?width=500&format=jpeg&auto=webp',
                //   fit: BoxFit.cover,
                // ),
                // Image.network(
                //   'https://i.insider.com/5ca389adc6cc503c5a53fd96?width=500&format=jpeg&auto=webp',
                //   fit: BoxFit.cover,
                // ),
              ],
            ),
          ),
          Container(
            height: 15,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFe8e8e8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://marketage.io/${offer_details.image}"),
                  backgroundColor: Color(0xFF797a7d),
                ),
                Text(
                  '${offer_details.user}',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text(
              '${offer_details.offerTitle}',
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 15,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'bla bla bla bla',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 15,
          ),
        ],
      ),
    );
  }
}
