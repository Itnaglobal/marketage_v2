import 'package:flutter/material.dart';

class ServiceWiseOffer extends StatelessWidget {
  static const routeName = '/offer-details-screens';

  const ServiceWiseOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.00,
        backgroundColor: Color(0xFFfffffff),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
    );
  }
}
