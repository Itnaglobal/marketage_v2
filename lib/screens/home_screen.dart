import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketage_v2/controllers/service_controller.dart';
import 'package:marketage_v2/widgets/service_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _init = true;
  bool _isLoding = false;

  @override
  void didChangeDependencies() async {
    if (_init) {
      // Provider.of<CartState>(context).getCartDatas();
      // Provider.of<CartState>(context).getoldOrders();
      _isLoding = await Provider.of<ServiceController>(context).getServices();
      setState(() {});
    }
    _init = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final services = Provider.of<ServiceController>(context).service;

    if (!_isLoding) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color(0xFFf6f6f6),
        appBar: AppBar(
          toolbarHeight: 75.00,
          elevation: 0.0,
          backgroundColor: const Color(0xFFffffff),
          title: const Center(
            child: Text(
              "MARKETAGE",
              style: TextStyle(
                color: Color(0xFF111111),
                letterSpacing: 3.0,
              ),
            ),
          ),
        ),
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.all(20.00),
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

            // Divider(),
            // ignore: sized_box_for_whitespace
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
          ],
        ),
      );
    }
  }
}
