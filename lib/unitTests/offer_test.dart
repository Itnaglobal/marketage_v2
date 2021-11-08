// // ignore_for_file: sized_box_for_whitespace

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:marketage_v2/controllers/category_controller.dart';
// import 'package:marketage_v2/controllers/offer_controller.dart';
// import 'package:marketage_v2/controllers/service_controller.dart';
// import 'package:marketage_v2/models/offer_model.dart';
// import 'package:marketage_v2/unitTests/offer_test.dart';
// import 'package:marketage_v2/widgets/category_card.dart';
// import 'package:marketage_v2/widgets/navbar.dart';
// import 'package:marketage_v2/widgets/offer_card.dart';
// import 'package:marketage_v2/widgets/service_card.dart';
// import 'package:provider/provider.dart';
// // import 'package:marketage_v2/widgets/bottom_nav.dart';

// // import 'package:marketage_v2/widgets/bottom_nav.dart'
// class OfferTest extends StatefulWidget {
//   static const routName = "/home-screens";

//   const OfferTest({Key? key}) : super(key: key);

//   @override
//   _OfferTestState createState() => _OfferTestState();
// }

// class _OfferTestState extends State<OfferTest> {
//   bool _init = true;
//   bool _isLoding = false;

//   @override
//   void didChangeDependencies() async {
//     if (_init) {
//       // Provider.of<CartState>(context).getCartDatas();
//       // Provider.of<CartState>(context).getoldOrders();
//       _isLoding = await Provider.of<OfferController>(context).getOffers();

//       setState(() {});
//     }
//     _init = false;
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final offers = Provider.of<OfferController>(context).offers;

//     if (!_isLoding) {
//       return const Scaffold(
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     } else {
//       return Scaffold(
//         backgroundColor: const Color(0xFFf6f6f6),
//         drawer: NavBar(),
//         appBar: AppBar(
//           iconTheme: IconThemeData(color: Colors.blueGrey),
//           toolbarHeight: 75.00,
//           elevation: 0.0,
//           backgroundColor: const Color(0xFFffffff),
//           title: const Center(
//             child: Text(
//               "MARKETAGE",
//               style: TextStyle(
//                 color: Color(0xFF111111),
//                 letterSpacing: 3.0,
//               ),
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomAppBar(),
//         body: ListView(
//           // mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//                 margin: const EdgeInsets.all(20.00),
//                 decoration: BoxDecoration(
//                     color: Color(0xFFffffff),
//                     border: Border.all(
//                       width: 2.0,
//                       color: Color(0xFFffffff),
//                     ),
//                     borderRadius: BorderRadius.circular(10.00),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color(0xFF000000).withOpacity(0.1),
//                         spreadRadius: 1,
//                         blurRadius: 7,
//                         // offset: Offset(-10, 20),
//                       ),
//                     ]),
//                 child: Container(
//                   height: 30,
//                   margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                       // fillColor: Color(0xFFffffff),
//                       hintText: "",
//                       icon: Icon(Icons.search),
//                       border: InputBorder.none,
//                       floatingLabelBehavior: FloatingLabelBehavior.never,
//                     ),
//                   ),
//                 )),
//             //sliders
//             Container(
//               height: 5,
//               color: const Color(0xFFffffff),
//             ),

//             Container(
//               margin: EdgeInsets.all(15.00),
//               height: 20,
//               child: const Text(
//                 "POPULAR SERVICES",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),

//             Container(
//               padding: const EdgeInsets.all(8.0),
//               height: 300,
//               child: GridView.count(
//                 crossAxisCount: 1,
//                 scrollDirection: Axis.horizontal,
//                 shrinkWrap: true,
//                 children: List.generate(offers.length, (i) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: OfferCard(
//                       id: offers[i].id,
//                       offerTitle: offers[i].offerTitle,
//                       user: offers[i].user,
//                       click: offers[i].user,
//                       category: offers[i].category,
//                       image: offers[i].image,
//                     ),
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }
