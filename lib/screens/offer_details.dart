import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class OfferDetails extends StatelessWidget {
  static const routeName = "/offer-details";

  const OfferDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Carousel(
              dotSize: 0.0,
              autoplay: false,
              animationDuration: const Duration(milliseconds: 2000),
              images: [
                Image.asset(
                  'image/a.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'image/b.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'image/c.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'image/d.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'image/e.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'image/f.jpg',
                  fit: BoxFit.cover,
                ),
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
                const CircleAvatar(
                  backgroundColor: Color(0xFF797a7d),
                ),
                const Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  'User Level',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Text(
              'Be Your Front End Developer and Designer',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: const Text(
              'I am a professional Senior Front End developer as a PSD2HTML expert with 5+ years of experience \nIn my Five years of career, I have completed more than 300 projects in different languages and frameworks. \nI have a strong grip as a Front End developer on HTML5, CSS3, Bootstrap4, Jquery, Javascript, SASS, React. \nif you want to convert your (psd to html, xd to html, sketch to html, psd to wordpress, psd to react), then you are at the right places and we can discuss the work and continue.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
