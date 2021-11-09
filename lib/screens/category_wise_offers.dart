import 'package:flutter/material.dart';
import 'package:marketage_v2/controllers/subcategory_controller.dart';
import 'package:marketage_v2/widgets/subcategory_card.dart';
import 'package:provider/provider.dart';

class CategoryWiseOffer extends StatefulWidget {
  static const routeName = "/category-wise-offers";

  const CategoryWiseOffer({Key? key}) : super(key: key);

  @override
  State<CategoryWiseOffer> createState() => _CategoryWiseOfferState();
}

class _CategoryWiseOfferState extends State<CategoryWiseOffer> {
  bool _init = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() async {
    if (!_init) {
      _isLoading = await Provider.of<SubcategoryController>(context).getSubs();
      setState(() {});
    }

    _init = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final subs = Provider.of<SubcategoryController>(context).subs;

    if (!_isLoading) {
      return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: Container(
            child: const Center(
              child: CircularProgressIndicator(
                color: Color(0xFFc3232a),
              ),
            ),
          ));
    } else {
      return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: const Color(0xFFffffff),
        ),
        body: ListView(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                color: Colors.white,
                height: 50,
                child: const Text("Subcategories",
                    style: TextStyle(
                      fontSize: 16,
                    ))),
            Container(
              height: 120,
              color: Colors.white,
              child: GridView.count(
                  crossAxisCount: 1,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(subs.length, (i) {
                    return SubCategoryCard(
                      id: subs[i].id,
                      subTitle: subs[i].subTitle,
                      subImg: subs[i].subImg,
                    );
                  })),
            ),
          ],
        ),
      );
    }
  }
}
