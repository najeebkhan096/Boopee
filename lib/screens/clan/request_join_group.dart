import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/screens/clan/clan_home.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/material.dart';

class RequestJoinGroup extends StatefulWidget {
  @override
  State<RequestJoinGroup> createState() => _RequestJoinGroupState();
}

class _RequestJoinGroupState extends State<RequestJoinGroup> with SingleTickerProviderStateMixin{

  bool show=true;


  List<Map> data=[
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith',
      'subtitle':'Hi, David. Hope you’re doing....',
      'status':true,
      'emoji':'images/Frame (4).png'
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid ',
      'subtitle':'Are you ready for today’s part..',
      'status':false,
      'emoji':'images/Frame (5).png'
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John ',
      'subtitle':'I’am sending you a parcel rece..',
      'status':false,
      'emoji':'images/Frame (6).png'
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica ',
      'subtitle':'Hope you’re doing well today..',
      'status':false,
      'emoji':''
    },
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith ',
      'subtitle':'Hi, David. Hope you’re doing....',
      'status':false,
      'emoji':''
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid preparations',
      'subtitle':'Are you ready for today’s part..',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John Walton',
      'subtitle':'I’am sending you a parcel rece..',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica Randawa',
      'subtitle':'Hope you’re doing well today..',
      'status':false,
      'emoji':''
    },
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith Mathew',
      'subtitle':'Hi, David. Hope you’re doing....',
      'status':false,
      'emoji':''
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid preparations',
      'subtitle':'Are you ready for today’s part..',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John Walton',
      'subtitle':'I’am sending you a parcel rece..',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica Randawa',
      'subtitle':'Hope you’re doing well today..',
      'status':false,
      'emoji':''
    },
  ];
  bool chat=false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
bottomNavigationBar: MyHomeNavBar(),
      backgroundColor: Colors.white,

      body: ListView(
        children: [

          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: width*0.05,top: height*0.02),
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
            child: Text("Requests to join group",
              style: myStyle.poppin_57534E(height*0.028,FontWeight.w600),
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
            child: Text("Manage request to join your group.",
              style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
            ),
          ),
          SizedBox(height: height*0.025,),

          Container(
            height: height*0.5,
              margin: EdgeInsets.only(right: width*0.025),
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context,index){
              return Column(
                children: [
                  ListTile(
                      dense: true,
                      onTap: (){

                      },
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(data[index]['url']),
                      ),
                      title: Text(data[index]['title'],
                        style: myStyle.inter_252525(height*0.015, FontWeight.w600  ),
                      ),
                      subtitle: Text(data[index]['title']+"@gmail.com",
                        style: myStyle.inter_252525(height*0.015, FontWeight.w500  ),
                      ),
                      trailing:
                      data[index]['status']?Container(
                        width: width*0.2,
                        height: height*0.035,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xffD1D1D6)
                            )
                            ,
                            color: Colors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.done,color: Colors.green,size: 13),
                            SizedBox(width: width*0.0075,),
                            Text("Accepted",
                              style: myStyle.inter_3F3F46(height*0.011, FontWeight.w500),
                            ),
                          ],
                        ),
                      ):
                      Container(
                        width: width*0.2,
                        height: height*0.035,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xffD1D1D6)
                            )
                            ,
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text("Approve",
                            style: myStyle.inter_3F3F46(height*0.011, FontWeight.w500),
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: Divider(color: Color(0xffE4E4E7))),
                ],
              );
            })
          ),
          SizedBox(height: height*0.025,),
          BlueButton(text: "Next ->", onpress: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return ClanHomeScreen();
            }));
          })
        ],
      ),
    );
  }
}