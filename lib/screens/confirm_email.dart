import 'package:boopee/screens/PhoneConfirmatiob.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';

class ConfirmEmailScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
        width: width*1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: height*0.06,),

            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.only(left: width*0.05),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffD7D3D0),
                  child: Container (
                      margin: EdgeInsets.only(left: width*0.015),
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                ),
              ),
            ),

            SizedBox(height: height*0.015,),
            Container(
              margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
              child: Text("Confirm your email address",
                style: myStyle.poppin_57534E(height*0.028,FontWeight.w600),
              ),
            ),
            SizedBox(height: height*0.015,),
            Container(
              margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
              child: Text("Enter the code we’ve sent to “your@email.com”.  Wrong number?",
                style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
              ),
            ),
            SizedBox(height: height*0.05,),
            BuildTextField(context: context, hint: "4-digit passcode", label: "Insert code"),
            SizedBox(height: height*0.05,),
            BlueButton(text: "Confirm email address ->", onpress: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return PhoneConfirmation();
                  })
              );
            }),

            SizedBox(height: height*0.05,),
            Container(
              margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
              child: Text("Your message should arrive within 30s.",
                style: myStyle.poppin_79716B(height*0.014,FontWeight.w400),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
