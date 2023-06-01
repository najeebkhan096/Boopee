import 'package:boopee/screens/notification.dart';
import 'package:boopee/screens/reel.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
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
      bottomNavigationBar: MyHomeNavBar(),
      body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: height*0.075,),
          Container(
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
                        backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                        child: Image.asset("images/search.png",height: height*0.023,),
                      ),
                    ),

                  ],
                ),


                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width*0.025),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                    child: Image.asset("images/notification.png",height: height*0.023,
                    color: Color(0xff70707B),
                    ),
                  ),
                ),


              ],
            ),
          ),
SizedBox(height: height*0.02,),
Container(
  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
  child:   Text("Welcome to explore",

  style: myStyle.inter_252525(height*0.025, FontWeight.w700),

  ),
),
          SizedBox(height: height*0.015,),

          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child:   Text("this is a place holder",

              style: myStyle.inter_79716B(height*0.018, FontWeight.w500),

            ),
          ),
          SizedBox(height: height*0.02,),
          Container(
            height: height*0.48,
            width: width*1,
              margin: EdgeInsets.only(left: width*0.025),
            child: Wrap(
              children: List.generate(data.length, (index) =>
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return ReelScreen(url: data[index]['image'],);
                      }));
                    },
                    child: Container(
                margin: EdgeInsets.only(left: width*0.015,bottom: height*0.02),
                height: height*0.3,
                width: width*0.44,
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(data[index]['image']),
                          fit: BoxFit.fill
                      )
                ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: height*0.025,),
                        Container(

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(data[index]['emoji'],height: height*0.025,),
                              SizedBox(width: width*0.015,),
                              Text(data[index]['text'],
                                style: myStyle.inter_white(height*0.02, FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    ),
                  )),
            )
          )

        ],
      ),
    );
  }
}
