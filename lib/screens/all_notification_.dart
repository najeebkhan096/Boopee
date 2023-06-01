import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/screens/myprofile2.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/material.dart';

class AllNotificationScreen extends StatefulWidget {
  @override
  State<AllNotificationScreen> createState() => _AllNotificationScreenState();
}

class _AllNotificationScreenState extends State<AllNotificationScreen> with SingleTickerProviderStateMixin{

  bool show=true;


  List<Map> data=[
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith',
      'subtitle':'Hi, David. Hope you’re doing....',
      'date':'20 min ago',
      'emoji':'images/s1.png'
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid ',
      'subtitle':'Are you ready for today’s part..',
      'date':'08-02-2022',
      'emoji':'images/s2.png'
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John ',
      'subtitle':'I’am sending you a parcel rece..',
      'date':'25 min ago',
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica ',
      'subtitle':'Hope you’re doing well today..',
      'date':'1 hour ago',
      'emoji':'images/s3.png'
    },
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith ',
      'subtitle':'Hi, David. Hope you’re doing....',
      'date':'2 hour ago',
      'emoji':'images/s4.png'
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid preparations',
      'subtitle':'Are you ready for today’s part..',
      'date':'3 hour ago',
      'emoji':'images/s1.png'
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John Walton',
      'subtitle':'I’am sending you a parcel rece..',
      'date':'4 hour ago',
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica Randawa',
      'subtitle':'Hope you’re doing well today..',
      'date':'5 hour ago',
      'emoji':''
    },
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith Mathew',
      'subtitle':'Hi, David. Hope you’re doing....',
      'date':'6 hour ago',
      'emoji':''
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid preparations',
      'subtitle':'Are you ready for today’s part..',
      'date':'7 hour ago',
      'emoji':''
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John Walton',
      'subtitle':'I’am sending you a parcel rece..',
      'date':'8 hour ago',
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica Randawa',
      'subtitle':'Hope you’re doing well today..',
      'date':'9 hour ago',
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
                  margin: EdgeInsets.only(left: width*0.05,top: height*0.0185),
                  child: CircleAvatar(
                    radius: height*0.0187,
                    backgroundColor: Color(0xffD7D3D0),
                    child: Container (
                        margin: EdgeInsets.only(left: width*0.015),
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: width*0.1,top: height*0.0185),
                child: Center(
                  child: Text("Notifications",
                    style: myStyle.poppin_57534E(height*0.0184,FontWeight.w600),
                  ),
                ),
              ),
              Text(""),
            ],
          ),
          SizedBox(height: height*0.015,),


          SizedBox(height: height*0.015,),
          Column(
            children: List.generate(data.length, (index) => Card(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                child: ListTile(
                  onTap: (){

                  },
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(data[index]['url']),
                  ),
                  title: Row(
                    children: [
                      Text(data[index]['title']+"   ",
                        style: myStyle.inter_252525(height*0.015, FontWeight.w600  ),
                      ),

                        Text(data[index]['date'],
                          style: myStyle.inter_667085(height*0.014, FontWeight.w500  ),
                        ),
                    ],
                  ),
                  subtitle: Text(data[index]['subtitle'],
                    style: myStyle.inter_667085(height*0.015, FontWeight.w500  ),
                  ),
                  trailing: Icon(Icons.close,color: Color(0xff667085),size: 15,)
                ),
              ),
            ),
            ),
          ),
          SizedBox(height: height*0.1,),
        ],
      ),
    );
  }
}
