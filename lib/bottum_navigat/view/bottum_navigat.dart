// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';
import 'package:phaarmy/add_product/addProduct.dart';
import 'package:phaarmy/drawer/view/drawer.dart';
import 'package:phaarmy/home_page/homePage.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // ignore: prefer_final_fields
  List<Widget> _widgets = [
     HomePage(),
    Addproducts(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton:FloatingActionButton( 
        backgroundColor:  Color.fromARGB(255, 105, 230, 109) ,
          onPressed: (){
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => Addproducts(),),);
          },
          child: Icon(Icons.add,color: Colors.white,), //icon inside button
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    
      body: _widgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Color.fromARGB(115, 121, 118, 118)),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.category),
          //   label: 'category',
          // ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'view order',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.account_box),
          //   label: 'Account',
          // ),
          // BottomNavigationBarItem(

          //   icon: Icon(Icons.person),
          //   label: 'Profile',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:  Color.fromARGB(255, 105, 230, 109),
        onTap: _onItemTapped,
      ),
    );
  }
}
