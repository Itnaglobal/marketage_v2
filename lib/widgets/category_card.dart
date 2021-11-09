import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
  final int id;
  final String slug;
  final String title;
  final String icon;

  const Categorycard(
      {required this.id,
      required this.slug,
      required this.title,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed("/category-wise-offers", arguments: id);
        },
        child: Container(
          height: 130,
          // margin: const EdgeInsets.all(14.0),
          child: Card(
            elevation: 5.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 0,
                  child: Image.network("https://marketage.io/$icon",
                      width: 80, height: 60, fit: BoxFit.fill),
                ),
                SizedBox(height: 10),
                Container(
                    margin: const EdgeInsets.all(6),
                    width: double.infinity,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
