import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phaarmy/home_page/view/DetailsTile.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, required this.product});
  var product; 
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
   final FirebaseAuth _auth1 = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DeatilsTile(productData: widget.product),
              ],
            )
          ],
        ),);
  }
}