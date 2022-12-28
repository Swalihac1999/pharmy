// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlidingImages extends StatefulWidget {
  const SlidingImages({Key? key}) : super(key: key);

  @override
  State<SlidingImages> createState() => _SlidingImagesState();
}

class _SlidingImagesState extends State<SlidingImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 105, 230, 109),),
      backgroundColor: Color.fromARGB(255, 251, 251, 250),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                hintText: 'Serach',
                suffixIcon: const Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  //width: MediaQuery.of(context).size.width,
                  //color: Colors.yellow,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.dailyneeddelivery.com/wp-content/uploads/2020/07/Medicine-Delivery.jpg'),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  //width: MediaQuery.of(context).size.width,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.dailyneeddelivery.com/wp-content/uploads/2020/07/Medicine-Delivery.jpg'),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  //width: MediaQuery.of(context).size.width,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.dailyneeddelivery.com/wp-content/uploads/2020/07/Medicine-Delivery.jpg'),
                          fit: BoxFit.fill)),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  //width: MediaQuery.of(context).size.width,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.dailyneeddelivery.com/wp-content/uploads/2020/07/Medicine-Delivery.jpg'),
                          fit: BoxFit.fill)),
                ),
                // Container(
                //   height:
                //   MediaQuery.of(context).size.height / 2,
                //   //width: MediaQuery.of(context).size.width,
                //   //color: Colors.yellow,
                //   decoration: BoxDecoration(
                //      borderRadius: BorderRadius.circular(45),
                //       image: DecorationImage(
                //           image: AssetImage('https://www.dailyneeddelivery.com/wp-content/uploads/2020/07/Medicine-Delivery.jpg'),
                //           fit: BoxFit.fill,),),
                // )
              ],
              options: CarouselOptions(
                height: 250,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.decelerate,
                // enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: SizedBox(
                height: 50,
                width: 50,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder:(context)=> Cus_Serviceprovider()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[300],
                        side: BorderSide(width: 0.1)),
                    child: Text('Get started')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
