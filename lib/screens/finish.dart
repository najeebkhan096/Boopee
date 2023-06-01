import 'package:boopee/screens/notification.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/googglemap.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BoopeeFinish extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            margin: EdgeInsets.only(left: width*0.05,
                right: width*0.05
            ),
            height: height*0.7,
            width: width*1,
            decoration: BoxDecoration(
                border: Border.all(color: mycolor,width: 2),
                borderRadius: BorderRadius.circular(10),
             image: DecorationImage(image: NetworkImage("https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-08/220805-border-collie-play-mn-1100-82d2f1.jpg"),
             fit: BoxFit.fill
             )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: height*0.025),
                  child: Text("New match!",
                    style: myStyle.inter_white(height*0.018, FontWeight.w600),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: height*0.05),
                  child: Column(
                    children: [
                      Container(
                        height: height*0.18,
                        width: width*0.4,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height*0.015,),
                            CircleAvatar(
                              radius: 30,
                            backgroundImage: NetworkImage("https://i0.wp.com/flickside.com/wp-content/uploads/2022/11/highest-paid-actors.jpg?fit=1200%2C900&ssl=1"),
                            ),
                            
                            SizedBox(height: height*0.015,),
                            Text("Fred’s Doggo",
                              style: myStyle.inter_white(height*0.014, FontWeight.w400),
                            ),

                            SizedBox(height: height*0.015,),

                            Text("@fre1231alpha",
                              style: myStyle.inter_white(height*0.014, FontWeight.w400),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: height*0.015,),
                      BlueButton(text: "Say hi!", onpress: (){}),
                    ],
                  ),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
