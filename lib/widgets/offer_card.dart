import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketage_v2/controllers/service_controller.dart';
import 'package:marketage_v2/widgets/service_card.dart';
import 'package:provider/provider.dart';

class OfferCard extends StatelessWidget {
  // Defining Variables

  final int id;
  final String offerTitle;
  final String image;
  final int category;
  final int user;
  final int click;

  OfferCard(
      {required this.id,
      required this.offerTitle,
      required this.image,
      required this.category,
      required this.user,
      required this.click});

  @override
  Widget build(BuildContext context) {
    final TextStyle headline4 = Theme.of(context).textTheme.headline5!;
    // Testing APi
    // return Card(color: Color(0xFF000000), child: Text("asdasdasd"));
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/offer-details", arguments: id);
          },
          child: Container(
            height: 310,
            width: 290,
            child: Card(
              child: Column(
                children: [
                  Container(
                    child: Image.network(
                      "https://marketage.io/$image",
                      fit: BoxFit.fill,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 20,
                      child: Text(
                        offerTitle,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.network(
                            "https://marketage.io/$image",
                            height: 30,
                            width: 25,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(user.toString()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
