import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/screens/myprofile2.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/material.dart';

class ConversationScreen extends StatefulWidget {
  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> with SingleTickerProviderStateMixin{
  late TabController _controller;

  bool show=true;

  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

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
          SizedBox(height: height*0.0155,),
          Container(

            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return MyProfile2();
                        }));

                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xffEDB506),
                        child: Center(
                          child: CircleAvatar(
                              radius: 19,
                              backgroundImage: AssetImage("images/dog1.png" )),
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: width*0.025),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xff70707B).withOpacity(0.1),
                        child: Image.asset("images/search.png",height: height*0.0173,color: Color(0xff70707B)),
                      ),
                    ),
                  ],
                ),


                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width*0.025),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                    child: Image.asset("images/notification.png",height: height*0.02,
                      color: Color(0xff70707B),
                    ),
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: height*0.0175,),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Text("New Matches",
              style: myStyle.inter_252525(height*0.015, FontWeight.w600  ),
            ),
          ), 
          SizedBox(height: height*0.017,),
          Container(
            margin: EdgeInsets.only(left: width*0.025),
            height: height*0.145,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(data[index]['url']),
                    ),
                    SizedBox(height: height*0.015,),
                    Container(
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: Text(data[index]['title'],
                        style: myStyle.inter_252525(height*0.015, FontWeight.w600  ),
                      ),
                    ),
                  ],
                ); 
              }),
          ),

          SizedBox(height: height*0.01,),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Text("Recent",
              style: myStyle.inter_252525(height*0.015, FontWeight.w600  ),
            ),
          ),
          SizedBox(height: height*0.015,),
          Column(
            children: List.generate(data.length, (index) => Container(
              margin: EdgeInsets.only(bottom: 10),
              child: ListTile(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context){
                        return Chat_Screen(
                          user: MyUser('24', data[index]['url'], data[index]['title'],
                              'Active Now'
                          ),
                        );
                      })
                  );
                },
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(data[index]['url']),
                ),
                title: Row(
                  children: [
                    Text(data[index]['title'],
                    style: myStyle.inter_252525(height*0.015, FontWeight.w600  ),
                    ),
                    if(data[index]['emoji'].toString().isNotEmpty)
                      Image.asset(data[index]['emoji'],
                      height: height*0.0155,
                      )
                  ],
                ),
                subtitle: Text(data[index]['subtitle'],
                  style: myStyle.inter_252525(height*0.015, FontWeight.w500  ),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.015,),
                    Text("23-02-2022",style: myStyle.inter_252525(height*0.0145, FontWeight.w400)),
                  ],
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
