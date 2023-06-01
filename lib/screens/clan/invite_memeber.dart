import 'package:boopee/screens/add-cover.dart';
import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/material.dart';

class ClanInviteMemberScreen extends StatefulWidget {
  @override
  State<ClanInviteMemberScreen> createState() => _ClanInviteMemberScreenState();
}

class _ClanInviteMemberScreenState extends State<ClanInviteMemberScreen> with SingleTickerProviderStateMixin{


  bool show=true;



  List<Map> data=[
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith',
      'subtitle':'Hi, David. Hope you’re doing....',
      'date':'20 min ago',
      'status':true,
      'emoji':'images/s1.png'
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid ',
      'subtitle':'Are you ready for today’s part..',
      'date':'08-02-2022',
      'emoji':'images/s2.png',
      'status':false,
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John ',
      'subtitle':'I’am sending you a parcel rece..',
      'date':'25 min ago',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica ',
      'subtitle':'Hope you’re doing well today..',
      'date':'1 hour ago',
      'emoji':'images/s3.png',
      'status':false,
    },
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith ',
      'subtitle':'Hi, David. Hope you’re doing....',
      'date':'2 hour ago',
      'status':false,
      'emoji':'images/s4.png'
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid preparations',
      'subtitle':'Are you ready for today’s part..',
      'date':'3 hour ago',
      'status':false,
      'emoji':'images/s1.png'
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John Walton',
      'subtitle':'I’am sending you a parcel rece..',
      'date':'4 hour ago',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica Randawa',
      'subtitle':'Hope you’re doing well today..',
      'date':'5 hour ago',
      'status':false,
      'emoji':''
    },
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith Mathew',
      'subtitle':'Hi, David. Hope you’re doing....',
      'date':'6 hour ago',
      'status':false,
      'emoji':''
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid preparations',
      'subtitle':'Are you ready for today’s part..',
      'date':'7 hour ago',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John Walton',
      'subtitle':'I’am sending you a parcel rece..',
      'date':'8 hour ago',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica Randawa',
      'subtitle':'Hope you’re doing well today..',
      'date':'9 hour ago',
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
              margin: EdgeInsets.only(left: width*0.05,top: height*0.025),
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
            margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
            child: Text("Invite members to your clan.",
              style: myStyle.poppin_57534E(height*0.028,FontWeight.w600),
            ),
          ),
          SizedBox(height: height*0.01,),
          Container(
            margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
            child: Text("This will help people identify your group.",
              style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
            ),
          ),

          SizedBox(height: height*0.01,),
          Container(
            height: height*0.06,
            width: width*1,
            decoration: BoxDecoration(
              color: Color(0xffA0A0AB).withOpacity(0.25),
              borderRadius: BorderRadius.circular(30)

            ),
            padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: TextField(
              style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
              decoration: InputDecoration(
                prefixIconConstraints: BoxConstraints(
                  minWidth: width*0.075
                ),
                prefixIcon: Container(


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/search_.png",
                      height: height*0.017,
                      ),
                    ],
                  ),
                ),
                hintText:"search for members..",
                alignLabelWithHint: true,
                hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),

                border: InputBorder.none,

              ),
            ),
          ),
          SizedBox(height: height*0.025,),
          Container(
            height: height*0.46,
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
                      trailing:  data[index]['status']?Container(
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
                            Text("Sent",
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
                          child: Text("Add",
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
            }
            ),
          ),
          SizedBox(height: height*0.025,),
          BlueButton(text: "Next ->", onpress: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return AddCoverScreen();
            }));
          })
        ],
      ),
    );
  }
}
