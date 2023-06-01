import 'package:boopee/screens/user_inscription.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
        width: width*1,
        height: height*1,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("images/bg2.png",

            ),
            Container(
              height: height*1,
              width: width*1,
              color: Colors.white.withOpacity(0.6),
            ),
            Container(
              width: width*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: width*0.05,top: height*0.05),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xffD7D3D0),
                        child: Container (
                            margin: EdgeInsets.only(left: width*0.015),
                            child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Center(
                        child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color.fromRGBO(110, 204, 185, 0.08),
                            child: Image.asset("images/notification_.png",height: height*0.035,)),
                      ),

                      SizedBox(height: height*0.05,),

                      Container(
                        margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
                        child: Text("Allow notifications",
                          style: myStyle.poppin_57534E(height*0.028,FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: height*0.015,),
                      Container(
                        margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
                        child: Text("We use your location to show you dog owners in your area.",
                          style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: height*0.05,),
                      BlueButton(text: "Allow notifications", onpress: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return UserInscriptionScreen();
                            })
                        );
                      }),
                      SizedBox(height: height*0.015,),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context){
                                return UserInscriptionScreen();
                              })
                          );
                        },
                        child: Center(
                          child: Text("Not now",
                            style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.05,),


                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
