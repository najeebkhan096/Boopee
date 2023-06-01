import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/material.dart';

class ChechGroupdMembers extends StatefulWidget {
  @override
  State<ChechGroupdMembers> createState() => _ChechGroupdMembersState();
}

class _ChechGroupdMembersState extends State<ChechGroupdMembers> with SingleTickerProviderStateMixin{
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
      'emoji':'images/Frame (4).png'
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid ',
      'subtitle':'Are you ready for today’s part..',
      'date':'08-02-2022',
      'emoji':'images/Frame (5).png'
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John ',
      'subtitle':'I’am sending you a parcel rece..',
      'date':'25 min ago',
      'emoji':'images/Frame (6).png'
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica ',
      'subtitle':'Hope you’re doing well today..',
      'date':'1 hour ago',
      'emoji':''
    },
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith ',
      'subtitle':'Hi, David. Hope you’re doing....',
      'date':'2 hour ago',
      'emoji':''
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid preparations',
      'subtitle':'Are you ready for today’s part..',
      'date':'3 hour ago',
      'emoji':''
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
              InkWell(
                onTap: (){

                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(right: width*0.05,top: height*0.025),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffD7D3D0),
                    child: Container (

                        child: Icon(Icons.more_horiz,color: Colors.white,size: 20,)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height*0.025,),



          Container(
            margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
            child: Text("Chiwawa Lovers Members",
              style: myStyle.poppin_57534E(height*0.024,FontWeight.w600),
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
            margin: EdgeInsets.only(right: width*0.025),
            child: Column(
              children: List.generate(data.length, (index) => Column(
                children: [
                  ListTile(
                    dense: true,
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
                    title: Text(data[index]['title'],
                      style: myStyle.inter_252525(height*0.015, FontWeight.w600  ),
                    ),
                    subtitle: Text(data[index]['title']+"@gmail.com",
                      style: myStyle.inter_252525(height*0.015, FontWeight.w500  ),
                    ),
                    trailing:
                    (data[index]['emoji'].toString().isNotEmpty)?
                    Container(
                      width: width*0.3,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(data[index]['emoji'],
                            height: height*0.03,
                          ),
                          SizedBox(width: 10,),
                          Text("1423 pts",
                            style: myStyle.inter_252525(height*0.015, FontWeight.w500  ),
                          ),
                        ],
                      ),
                    ):Text(''),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: Divider(color: Color(0xffE4E4E7))),
                ],
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
