import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketage_v2/controllers/service_controller.dart';
import 'package:marketage_v2/widgets/service_card.dart';
import 'package:provider/provider.dart';

class OfferCard extends StatelessWidget {
  // Defining Variables

  // final int id;
  // final String image;
  // final String offerTitle;
  // final int user;
  // final int category;

  // const OfferCard({required this.id, required this.image, required this.offerTitle, required this.user, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFffffff),
              borderRadius: BorderRadius.circular(10.00),
            ),
            height: 200,
            width: 540,
            // color: const Color(0xFFffffff),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: double.infinity,
                  width: 180,
                  // color: Colors.red,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image.network(
                      "https://cdn.motor1.com/images/mgl/8e8Mo/s1/most-expensive-new-cars-ever.webp",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(),
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.all(15.0),
                          color: const Color(0xFFffffff),
                          child: const Text(
                            "I will design and develop \nfully customized website",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(45),
                                child: Container(
                                  height: 30,
                                  // width: 60,
                                  color: Colors.black,
                                  child: Image.network(
                                    "https://www.hollywoodreporter.com/wp-content/uploads/2019/03/avatar-publicity_still-h_2019.jpg?w=1024",
                                    fit: BoxFit.fill,
                                    width: 30,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                width: 140,
                                child: const Text(
                                  "Sakib Ovi",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: const Text("WEB DEVELOPEMENT",
                                      style: TextStyle(
                                        fontSize: 9.5,
                                      ))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          40, 0, 0, 0),
                                      child: const Text(
                                        "Clicks",
                                        style: TextStyle(
                                          fontSize: 9.5,
                                        ),
                                      )),
                                  Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                      decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 8,
                                                color: Color(0xFF3098ff))
                                          ]),
                                      child: const Text(
                                        "50",
                                        style: TextStyle(fontSize: 9.5),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: 165,
                          margin: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3098ff),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 30,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: const Text(
                              "Starting at 50\$",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF000000),
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
