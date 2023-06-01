import 'package:boopee/screens/finish.dart';
import 'package:boopee/screens/notification.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/googglemap.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PremiumNewMatchScreen extends StatelessWidget {

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
              image: DecorationImage(image: AssetImage("images/bgblur.png",),fit: BoxFit.fill)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  margin: EdgeInsets.only(top: height*0.05),
                  child: Text("New match!",
                    style: myStyle.inter_white(height*0.018, FontWeight.w600),
                  ),
                ),

                Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: mycolor,
                      child: Image.asset("images/star.png",color: Colors.white,height: height*0.05,fit: BoxFit.fill),
                    ),
                    SizedBox(height: height*0.025,),
                    Container(
                      width: width*0.4,
                      child: Text("Upgrade to see who matched with you!",
                        style: myStyle.inter_white(height*0.014, FontWeight.w400),
                      textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),



               Column(
                 children: [
                   BlueButton(text: "Upgrade to premium", onpress: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                       return BoopeeFinish();
                     }));
                   }),
                   SizedBox(height: height*0.025,),
                   Text("No thanks",
                     style: myStyle.inter_79716B(height*0.014, FontWeight.w400),
                   )
                 ],
               )
              ],
            ),
          )
        ],
      ),
    );
  }
}
