import 'package:boopee/screens/Group/invite.dart';
import 'package:boopee/screens/gender.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatelessWidget {


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
              child: Container(
                margin: EdgeInsets.only(bottom: height*0.025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
                          child: Text("Creating a group",
                            style: myStyle.poppin_57534E(height*0.028,FontWeight.w600),
                          ),
                        ),
                        SizedBox(height: height*0.015,),
                        Container(
                          margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
                          child: Text("What shall we call your dogs group?",
                            style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
                          ),
                        ),
                        SizedBox(height: height*0.05,),
                        BuildTextField(context: context, label: "Name", hint: "Enter your group name"),
                        SizedBox(height: height*0.015,),


                      ],
                    ),

                    BlueButton(text: "Next ->", onpress: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context){
                            return GroupInviteMemberScreen();
                          })
                      );
                    })
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
