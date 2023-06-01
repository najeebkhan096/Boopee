import 'dart:async';

import 'package:boopee/map/map2.dart';
import 'package:boopee/screens/phone_number.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
class MapSplashScreen extends StatefulWidget {
  const MapSplashScreen({Key? key}) : super(key: key);

  @override
  State<MapSplashScreen> createState() => _MapSplashScreenState();
}

class _MapSplashScreenState extends State<MapSplashScreen> {

 @override
  void initState() {
    // TODO: implement initState
 Timer(Duration(
   seconds: 3
 ), () {
   Navigator.of(context).push(
       MaterialPageRoute(builder: (context){
         return Map2Screen();
       })
   );
 });
   super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: mycolor,
      body: Container(
        width: width*1,
        height: height*1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

              CircleAvatar(
                radius: 90,
                backgroundColor: Color(0xff81E0CD),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/map-01 (1).png",height: height*0.055,),
                    Image.asset("images/Group 52.png",height: height*0.05,),
                  ],
                ),
              )

          ],
        )
      ),
    );
  }
}
