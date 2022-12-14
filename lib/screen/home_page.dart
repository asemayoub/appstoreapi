import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  static String id = 'homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          IconButton(onPressed: (){
            print('Cart Pressed');
          },
              icon: FaIcon(FontAwesomeIcons.cartShopping,color: Colors.black,),

          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Trend Now', style: TextStyle(color: Colors.black),),
      ),
      body: Column(),
    );
  }
}
