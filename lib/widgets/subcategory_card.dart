import 'package:flutter/material.dart';


class SubCategoryCard extends StatelessWidget {

  final int id;
  final String subTitle;
  final String subImg;


  const SubCategoryCard({
    required this.id,
    required this.subTitle,
    required this.subImg
});


  // const SubCategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Card(
        elevation: 5.0,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              child: Image.network("https://marketage.io/$subImg/", fit: BoxFit.fill),
            ),
            Text(subTitle, textAlign: TextAlign.center,
            style: const TextStyle(
              letterSpacing: 2,

            ),

            ),
          ],
        ),
      ),
    );
  }
}
