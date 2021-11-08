// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketage_v2/controllers/category_controller.dart';
import 'package:marketage_v2/controllers/offer_controller.dart';
import 'package:marketage_v2/controllers/service_controller.dart';
import 'package:marketage_v2/models/offer_model.dart';
import 'package:marketage_v2/unitTests/offer_test.dart';
import 'package:marketage_v2/widgets/category_card.dart';
import 'package:marketage_v2/widgets/navbar.dart';
import 'package:marketage_v2/widgets/offer_card.dart';
import 'package:marketage_v2/widgets/service_card.dart';
import 'package:provider/provider.dart';
import 'package:marketage_v2/widgets/bottom_nav.dart';

// import 'package:marketage_v2/widgets/bottom_nav.dart'
class HomeScreen extends StatefulWidget {
  static const routName = "/home-screens";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _init = true;
  bool _isLoding = false;
  bool _isLoadingOffer = false;
  bool _isCategory = false;
  @override
  void didChangeDependencies() async {
    if (_init) {
      // Provider.of<CartState>(context).getCartDatas();
      // Provider.of<CartState>(context).getoldOrders();
      _isLoding = await Provider.of<ServiceController>(context).getServices();
      _isLoadingOffer =
          await Provider.of<OfferController>(context, listen: false)
              .getOffers();
      _isCategory =
          await Provider.of<CategoryController>(context, listen: false)
              .getCategories();
      setState(() {});
    }
    _init = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final services = Provider.of<ServiceController>(context).service;
    final offers = Provider.of<OfferController>(context).offers;
    final category = Provider.of<CategoryController>(context).category;

    if (!_isLoding && _isLoadingOffer && _isCategory) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color(0xFFf5fbff),
        // drawer: NavBar(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blueGrey),
          toolbarHeight: 75.00,
          elevation: 0.0,
          backgroundColor: const Color(0xFFf5fbff),
          title: const Center(
            child: Text(
              "MARKETAGE",
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFF111111),
                letterSpacing: 3.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // bottomNavigationBar: BottomBar(),
        body: ListView(
          children: [
            Container(height: 5, color: const Color(0xFFffffff)),
            Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                    color: Color(0xFFffffff),
                    border: Border.all(
                      width: 2.0,
                      color: Color(0xFFffffff),
                    ),
                    borderRadius: BorderRadius.circular(10.00),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 7,
                        // offset: Offset(-10, 20),
                      ),
                    ]),
                child: Container(
                  height: 30,
                  margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      // fillColor: Color(0xFFffffff),
                      hintText: "",
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                  ),
                )),
            //sliders
            Container(
              height: 5,
              color: const Color(0xFFffffff),
            ),

            Container(
              margin: EdgeInsets.all(15.00),
              height: 26,
              child: Text(
                "Popular Services",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(8.0),
              height: 300,
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: List.generate(services.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ServiceCard(
                        id: services[i].id,
                        title: services[i].title,
                        subTitle: services[i].subTitle,
                        img: services[i].img),
                  );
                }),
              ),
            ),

            // ignore: sized_box_for_whitespace
            Container(color: const Color(0xFFf5f5f5), height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 25,
                child: const Text(
                  "Top Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 180,
              padding: const EdgeInsets.all(13.0),
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: List.generate(category.length, (i) {
                  if (!_isCategory) {
                    return const Text("Something is wrong");
                  }
                  return Categorycard(
                    id: category[i].id,
                    slug: category[i].slug,
                    title: category[i].title,
                    icon: category[i].icon,
                  );
                }),
              ),
            ),

            Container(color: const Color(0xFFf5f5f5), height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 35,
                child: Text(
                  "Top Offers",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(8.0),
              height: 350,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 1,

                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                children: List.generate(offers.length, (i) {
                  return OfferCard(
                    id: offers[i].id,
                    offerTitle: offers[i].offerTitle,
                    image: offers[i].image,
                    category: offers[i].category,
                    user: offers[i].user,
                    click: offers[i].click,
                  );
                }),
              ),
            ),

            // Listing Categories for testing
          ],
        ),
      );
    }
  }
}
