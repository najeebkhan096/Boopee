import 'package:boopee/screens/add_description.dart';
import 'package:boopee/screens/gender.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CreateGroupAddCoverScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(

        body: Container(
          width: width*1,
          height: height*1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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


                  SizedBox(height: height*0.025,),
                  Container(
                    width: width*0.7,
                    margin: EdgeInsets.only(left: width*0.075),
                    child: Text("Add a photo to your group",
                      style: myStyle.poppin_57534E(height*0.028,FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
                    child: Text("This will help people identify your group.",
                      style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: height*0.05,),

                  Container(
                    width: width*1,
                    child:   Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        DottedBorder(
                          borderType: BorderType.RRect,
                          dashPattern: [5, 5, 5, 5],
                          radius: Radius.circular(12),
                          padding: EdgeInsets.all(6),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: Container(

                              width: width*0.75,
                              child: Column(
                                children: [
                                  SizedBox(height: height*0.01,),
                                  Image.asset("images/tri.png",height: height*0.22,fit: BoxFit.fill),

                                  Container(
                                    margin: EdgeInsets.only(left: width*0.075,right: width*0.075),
                                    child: Text("Format allowed: PNG, JPEG, JPG 1920:1080 (max 20mb))",
                                      style: myStyle.inter_A0A0AB(height*0.0125,FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(height: height*0.02,),
                                  whiteButton(
                                    text: "Upload photo",
                                    onpress: (){

                                    },
                                  ),
                                  SizedBox(height: height*0.02,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height*0.01,),


                      ],

                    ),
                  )

                ],
              ),

              Container(
                  margin: EdgeInsets.only(bottom: height*0.025),
                  child: BlueButton(text: "Next ->", onpress: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return AddDescriptionScreen();
                    }));
                  }))
            ],
          ),
        )
    );
  }
}
