import 'package:boopee/screens/notification.dart';
import 'package:boopee/screens/premium_new_match.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/googglemap.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PremiumScreen extends StatelessWidget {

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
              gradient: LinearGradient(colors: [
                mycolor.withOpacity(0.8),
                Colors.white
              ],
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          child: Column(
            children: [
              SizedBox(height: height*0.025,),
              Text("Get Boopee Premium",
              style: myStyle.inter_white(height*0.018, FontWeight.w600),
              ),
              SizedBox(height: height*0.05,),
              CircleAvatar(
                radius: 35,
                backgroundColor: mycolor,
                child: Image.asset("images/star.png",color: Colors.white,height: height*0.05,fit: BoxFit.fill),
              ),
              SizedBox(height: height*0.025,),
              Text("Unlimited Messages",
                style: myStyle.inter_white(height*0.014, FontWeight.w400),
              ),

              SizedBox(height: height*0.05,),
              Container(
                height: height*0.2,
                width: width*0.35,
                decoration: BoxDecoration(
                  color: mycolor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(height: height*0.015,),
                    Text("Most popular",
                      style: myStyle.inter_white(height*0.014, FontWeight.w400),
                    ),
                    SizedBox(height: height*0.025,),
                    Text("1",
                      style: myStyle.inter_white(height*0.03, FontWeight.w700),
                    ),
                    SizedBox(height: height*0.015,),

                    Text("mois",
                      style: myStyle.inter_white(height*0.014, FontWeight.w400),
                    ),
                    SizedBox(height: height*0.015,),
                    Text("\$10.00",
                      style: myStyle.inter_white(height*0.024, FontWeight.w700),
                    ),
                    SizedBox(height: height*0.015,),
                  ],
                ),
              ),
              SizedBox(height: height*0.05,),
              BlueButton(text: "Upgrade to premium", onpress: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return PremiumNewMatchScreen();
                }));
              }),
              SizedBox(height: height*0.025,),
              Text("No thanks",
              style: myStyle.inter_79716B(height*0.014, FontWeight.w400),
              )
            ],
          ),
          )
        ],
      ),
    );
  }
}
