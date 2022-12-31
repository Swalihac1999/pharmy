// ignore_for_file: prefer_const_constructors, lines_longer_than_80_chars

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:phaarmy/add_product/AddProduct.dart';
import 'package:phaarmy/drawer/view/drawer.dart';
import 'package:phaarmy/home_page/view/productDetails.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);
 
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  Widget appBarTitle = Text("Pharmy");
  Icon actionIcon = Icon(Icons.search);
  CollectionReference todoRef =
      FirebaseFirestore.instance.collection('product_form');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(

        backgroundColor: Color.fromARGB(255, 105, 230, 109),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: appBarTitle,
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (actionIcon.icon == Icons.search) {
                  actionIcon = Icon(Icons.close);
                  appBarTitle = TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.white)),
                  );
                } else {
                  actionIcon = Icon(Icons.search);
                  appBarTitle = Text("Pharmy");
                }
              });
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 251, 251, 250),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: StreamBuilder(
            stream: todoRef
                .where('userId', isEqualTo: _auth.currentUser!.uid)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                print('-------------------------------');
                print(snapshot.data!.docs);
                final productItems = snapshot.data!.docs;
                return GridView.builder(
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 50,
                          crossAxisSpacing: 50,
                          mainAxisExtent: 250,
                          childAspectRatio: 0.75),
                  itemCount: productItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetails(
                              product: productItems[index],),
                        ),
                      ),
                      child: Card(
                        child: ListTile(
                          title: Image.network(
                            productItems[index]['image'].toString(),
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          subtitle: Column(
                            children: [
                              Text(productItems[index]['product']
                                  .toString(),),
                              const SizedBox(
                                height: 5,
                              ),
                          
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                  productItems[index]['type'].toString(),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete),),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.edit),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color.fromARGB(255, 105, 230, 109),
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => Addproducts()));
      //   },
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}
