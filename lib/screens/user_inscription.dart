import 'package:boopee/screens/username.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';

class UserInscriptionScreen extends StatelessWidget {


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
                  SizedBox(height: height*0.05,),

Expanded(
  child:   Container(
    margin: EdgeInsets.only(bottom: height*0.05),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Container(
          margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
          child: Text("Let’s start by knowing the owner of the dog",
            style: myStyle.poppin_57534E(height*0.028,FontWeight.w600),
          ),
        ),

        Center(
          child: Image.asset("images/user_circle.png",height: height*0.15,),
        ),

        BlueButton(text: "Next ->", onpress: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context){
                return UsernameScreen();
              })
          );
        }),

      ],
    ),
  ),
)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
