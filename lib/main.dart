import 'package:flutter/material.dart';
import 'package:marketage_v2/controllers/category_controller.dart';
import 'package:marketage_v2/controllers/offer_controller.dart';
import 'package:marketage_v2/controllers/service_controller.dart';
import 'package:marketage_v2/screens/category_wise_offers.dart';
import 'package:marketage_v2/screens/home_screen.dart';
import 'package:marketage_v2/screens/offer_details.dart';
import 'package:marketage_v2/screens/service_wise_offer.dart';
import 'package:provider/provider.dart';

import 'controllers/child_category_controller.dart';
import 'controllers/subcategory_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ServiceController()),
        ChangeNotifierProvider(create: (ctx) => OfferController()),
        ChangeNotifierProvider(create: (ctx) => CategoryController()),
        ChangeNotifierProvider(create: (ctx) => SubcategoryController()),
        ChangeNotifierProvider(create: (ctx) => ChildSubCategoryController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
        //  ProductDetailsScreens.routeName: (ctx) => ProductDetailsScreens(),

        // Routes//

        routes: {
          HomeScreen.routName: (ctx) => const HomeScreen(),
          ServiceWiseOffer.routeName: (ctx) => const ServiceWiseOffer(),
          OfferDetails.routeName: (ctx) => OfferDetails(),
          CategoryWiseOffer.routeName: (ctx) => CategoryWiseOffer(),
        },
      ),
    );
  }
}
