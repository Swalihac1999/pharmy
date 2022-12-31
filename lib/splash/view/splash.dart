// ignore_for_file: inference_failure_on_instance_creation, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:phaarmy/login_screen/view/login_Screen.dart';
import 'package:phaarmy/home_page/view/homePage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // void initState() {
  //   gotoLogin();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets9.lottiefiles.com/packages/lf20_f0i1nwjp.json',
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),);
                },
                child: const Text("Get Start",style: TextStyle(color: Colors.black),),
                ),
          ],
        ),
      ),
    );
  }

//   Future<void>gotoLogin() async{
//   await Future.delayed(const Duration(seconds: 8));
//   Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
//     return  GetStarted();
//   }));
// }
}
