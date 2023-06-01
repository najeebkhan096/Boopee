import 'package:boopee/screens/user_inscription.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DogsInfoScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(

        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width*0.05,top: height*0.025),
                  child: CircleAvatar(
                    radius: height*0.027,
                    backgroundColor: Color(0xffD7D3D0),
                    child: Container (
                        margin: EdgeInsets.only(left: width*0.015),
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: width*0.1,top: height*0.025),
                child: Center(
                  child: Text("Settings",
                    style: myStyle.poppin_57534E(height*0.02,FontWeight.w600),
                  ),
                ),
              ),
              Text(""),
            ],
          ),
          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(left: width*0.1),
            child: Text("Dog’s informations",
              style: myStyle.inter_252525(height*0.02,FontWeight.w500),
            ),
          ),
          SizedBox(height: height*0.025,),
          Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
             color: Color(0xffFAFAFA),

            margin: EdgeInsets.only(left: width*0.05,right: width*0.1),
            child: Padding(
       padding: EdgeInsets.only(left: width*0.05,top: height*0.015,bottom: height*0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(

                    child: Text("Carnet medical",
                      style: myStyle.inter_51525C(height*0.02,FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: height*0.025,),
                  Row(
                    children: [
                      Container(
                        height: height*0.1,
                        width: width*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("images/item1.png"))
                        ),
                      ),
                      SizedBox(width: width*0.025,),
                      Container(
                        height: height*0.1,
                        width: width*0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("images/item1.png"))
                        ),
                      ),
                      SizedBox(width: width*0.025,),
                      DottedBorder(
                        dashPattern: [6, 3, 2, 3],
                       color: Color(0xffE8E8E8),
                        child: Container(
                          height: height*0.1,
                          width: width*0.17,
child: Icon(Icons.add,color: Color(0xff969696)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.025,),


          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            color: Color(0xffFAFAFA),

            margin: EdgeInsets.only(left: width*0.05,right: width*0.1),
            child: Padding(
              padding: EdgeInsets.only(left: width*0.05,top: height*0.015,bottom: height*0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      Text("Document 2",
                        style: myStyle.inter_51525C(height*0.02,FontWeight.w500),
                      ),
                      SizedBox(width: width*0.015,),
                      Image.asset("images/about.png",height: height*0.02,)
                    ],
                  ),
                  SizedBox(height: height*0.025,),
                  Row(
                    children: [

                      DottedBorder(
                        dashPattern: [6, 3, 2, 3],
                        color: Color(0xffE8E8E8),
                        child: Container(
                          height: height*0.1,
                          width: width*0.17,
                          child: Icon(Icons.add,color: Color(0xff969696)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.025,),


          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            color: Color(0xffFAFAFA),

            margin: EdgeInsets.only(left: width*0.05,right: width*0.1),
            child: Padding(
              padding: EdgeInsets.only(left: width*0.05,top: height*0.015,bottom: height*0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Document 3",
                    style: myStyle.inter_51525C(height*0.02,FontWeight.w500),
                  ),
                  SizedBox(height: height*0.025,),
                  Row(
                    children: [
                      DottedBorder(
                        dashPattern: [6, 3, 2, 3],
                        color: Color(0xffE8E8E8),
                        child: Container(
                          height: height*0.1,
                          width: width*0.17,
                          child: Icon(Icons.add,color: Color(0xff969696)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.025,),





        ],
      ),
    );
  }
}
