import 'package:boopee/map/map1.dart';
import 'package:boopee/screens/notification.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/googglemap.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map2Screen extends StatelessWidget {
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
              bottom: height*0.025,
              width: width*1,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context){
                        return Map1Screen();
                      })
                  );
                },
                child: CircleAvatar(
                  radius: height*0.035,
                 backgroundColor: Color.fromRGBO(122, 210, 192, 0.2),
                  child: Image.asset("images/Mask group.png",
                  color: Color(0xff18453C),
                    height: height*0.03,
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