import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          child: Card(
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    'Name Of Product',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'200 $',
                        style: TextStyle(fontSize: 14),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 70,
          bottom: 250,
          child: Container(
              width: 120,
              height: 120,
              child: Image.network('assets/product/test product.png')),
        ),
      ],
    );
  }
}
