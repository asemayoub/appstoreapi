import 'package:appstoreapi/models/product_model.dart';
import 'package:appstoreapi/services/get_all_products.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../share/components/widgets.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  static String id = 'homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                print('Cart Pressed');
              },
              icon: FaIcon(
                FontAwesomeIcons.cartShopping,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Trend Now',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder<List<ProductModel>>(
          future: AllProductServices().getAllProduct(),
          builder: (context, snapshot) {
            List<ProductModel> products = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.only(top: 80, right: 16, left: 16),
              child: GridView.builder(
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.3,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 60,
                  ),
                  itemBuilder: (context, index) {
                    return CustomProduct();
                  }),
            );
          }),
    );
  }
}
