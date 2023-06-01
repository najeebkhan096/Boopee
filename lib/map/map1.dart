import 'package:boopee/screens/notification.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/googglemap.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map1Screen extends StatelessWidget {
  List<Map> data=[
    {
      'text':'Cute',
      'image':"images/dog1.png",
      "emoji":"images/em1.png"
    },
    {
      'text':'Fun',
      'image':"images/dog2.png",
      "emoji":"images/em2.png"
    },
    {
      'text':'Adorable',
      'image':"images/dog3.png",
      "emoji":"images/em3.png"
    },
    {
      'text':'Clan',
      'image':"images/dog4.png",
      "emoji":"images/em4.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height*1,
        width: width*1,
        child: Stack(
          children: [
            Image.asset("images/map3.png",height: height*1,fit: BoxFit.fill),
            Container(
              width: width*1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: height*0.075,),
                  Container(
                    width: width*1,
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [

                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xffEDB506),
                              child: Center(
                                child: CircleAvatar(
                                    radius: 17,
                                    backgroundImage: AssetImage("images/dog1.png" )),
                              ),
                            ),

                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(left: width*0.025),
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor: Color(0xffD7D3D0),
                                child: Image.asset("images/search.png",height: height*0.023,color: Colors.white),
                              ),
                            ),

                          ],
                        ),


                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: width*0.025),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Color(0xffD7D3D0),
                            child: Image.asset("images/notification.png",height: height*0.023,
                              color: Colors.white,
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),


            Positioned(
              bottom: 0,
              width: width*1,
              child: Card(
                margin: EdgeInsets.only(
                    left: width*0.05,
                    right: width*0.05,
                    bottom: height*0.05
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  width: width*1,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.025,),
                    Container(
                      margin: EdgeInsets.only(left: width*0.05),

                      child: Row(
                        children: [
                          Container(
                            height: height*0.1,
                            width: width*0.22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("images/stdog.png"),fit: BoxFit.fill)
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: width*0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Cabinet Dr. Jasmine",
                                  style: myStyle.inter_252525(height*0.016, FontWeight.w600),
                                  ),
                                  Text("11 rue les boustardidouniette, Amsterdam, Paris",
                                    style: myStyle.inter_79716B(height*0.014, FontWeight.w400),
                                  ),

                                  Row(
                                    children: [
                                      Image.asset("images/star.png",height: height*0.022),
                                      Image.asset("images/star.png",height: height*0.022),
                                      Image.asset("images/star.png",height: height*0.022),
                                      Image.asset("images/star.png",height: height*0.022),
                                      Text("+423 ratings",
                                        style: myStyle.inter_79716B(height*0.014, FontWeight.w400),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: height*0.02,),
                    Container(
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: Text("Cabinet Veterinaire qui exerce depuis 18ans, situé a 11 rue les boustardidouniette, Amsterdam, Paris. Si votre chien souffre de quelque chose n’hsiter a nous contacter!",
                        style: myStyle.inter_79716B(height*0.014, FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: height*0.02,),
                    LightBlueButton(text: "Visiter le site web", onpress: (){

                    }),
                    SizedBox(height: height*0.02,),
                    BlueButton(text: "Appeler", onpress: (){

                    }),
                    SizedBox(height: height*0.02,),
                  ],
                ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
