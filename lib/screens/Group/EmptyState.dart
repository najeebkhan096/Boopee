import 'package:boopee/screens/Group/all_groups.dart';
import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/screens/clan/clan_home.dart';
import 'package:boopee/screens/create_group.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/material.dart';

class EmptyStateScreen extends StatefulWidget {
  @override
  State<EmptyStateScreen> createState() => _EmptyStateScreenState();
}

class _EmptyStateScreenState extends State<EmptyStateScreen> with SingleTickerProviderStateMixin{
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
      'title':'Dallas Dog lovers Club ',
      'subtitle':'5k members',
      'status':true,
      'emoji':'images/Frame (4).png'
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Sicilian Chess Dogs..',
      'subtitle':'10k members',
      'status':false,
      'emoji':'images/Frame (5).png'
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John ',
      'subtitle':'15k members',
      'status':false,
      'emoji':'images/Frame (6).png'
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica ',
      'subtitle':'20k members',
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
      'subtitle':'25k members',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John Walton',
      'subtitle':'35k members',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica Randawa',
      'subtitle':'40k members.',
      'status':false,
      'emoji':''
    },
    {
      'url':'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
      'title':'Smith Mathew',
      'subtitle':'45k members',
      'status':false,
      'emoji':''
    },
    {
      'url':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
      'title':'Eid preparations',
      'subtitle':'50k members',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg',
      'title':'John Walton',
      'subtitle':'55k members',
      'status':false,
      'emoji':''
    },   {
      'url':'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
      'title':'Monica Randawa',
      'subtitle':'23k',
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

          SizedBox(height: height*0.025,),
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


                  ],
                ),


                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return CreateGroup();
                    }));
                  },
                  child: Container(
                    width: width*0.3,
                    height: height*0.05,
                    margin: EdgeInsets.only(right: width*0.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image:
                        AssetImage("images/pic3.png"),
                          fit: BoxFit.fill
                        )
                    ),
                    child: Center(child: Text("Create Group",
                      style: myStyle.poppin_white(height*0.014, FontWeight.w600),
                    )),
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: height*0.02,),

          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ClanHomeScreen();
              }));
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              decoration: BoxDecoration(
                border: Border.all(
                  color: mycolor,
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Text("Join or create your clan",
                      style: myStyle.inter_27534A(height*0.02,FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Text("Don’t know what a clan is? get ready to witness the best dog activity",
                      style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                ],
              ),
            ),
          ),

          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Group Suggestions",

                  style: myStyle.inter_252525(height*0.02, FontWeight.w700),

                ),
                InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return AllGroupsScreen();
                      }));
                    },
                    child: Icon(Icons.more_horiz,color: Color(0xff70707B),))

              ],
            ),
          ),
          SizedBox(height: height*0.025,),
          Container(
            height: height*0.22,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: height*0.22,
                  width: width*0.85,
                  margin: EdgeInsets.only(left: width*0.05),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: mycolor.withOpacity(0.05),

                  ),

                  child: Stack(
                    children: [


                      Image.asset("images/dog2.1.png",
                        fit: BoxFit.fill,
                        height: height*0.22,
                        width: width*0.85,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: width*0.025,top: height*0.015,right: width*0.025),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  width: width*0.4,
                                  child: Text("Chiwawa Lovers Club - France",
                                    style: myStyle.inter_white(height*0.02, FontWeight.w600),
                                  ),
                                )
,                                Container(
                                  width: width*0.2,
                                  height: height*0.05,
                                  margin: EdgeInsets.only(right: width*0.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(image:
                                      AssetImage("images/pic3.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                  child: Center(child: Text("Join",
                                    style: myStyle.poppin_white(height*0.014, FontWeight.w600),
                                  )),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(height: height*0.071,),
                          Container(
                              margin: EdgeInsets.only(left: width*0.025),
                              child: Image.asset("images/Avatar2.png",height: height*0.035,))
,
                          Container(
                            margin: EdgeInsets.only(left: width*0.025,top: height*0.01),
                            width: width*0.4,
                            child: Text("2.3K members",
                              style: myStyle.inter_white(height*0.014, FontWeight.w600),
                            ),
                          )
                        ],
                      ),


                    ],
                  ),
                ),


                Container(
                  height: height*0.22,
                  width: width*0.85,
                  margin: EdgeInsets.only(left: width*0.05),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: mycolor.withOpacity(0.05),

                  ),

                  child: Stack(
                    children: [


                      Image.asset("images/dog2.1.png",
                        fit: BoxFit.fill,
                        height: height*0.22,
                        width: width*0.85,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: width*0.025,top: height*0.015,right: width*0.025),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Container(
                                  width: width*0.4,
                                  child: Text("Chiwawa Lovers Club - France",
                                    style: myStyle.inter_white(height*0.02, FontWeight.w600),
                                  ),
                                )
                                ,                                Container(
                                  width: width*0.2,
                                  height: height*0.05,
                                  margin: EdgeInsets.only(right: width*0.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(image:
                                      AssetImage("images/pic3.png"),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                  child: Center(child: Text("Join",
                                    style: myStyle.poppin_white(height*0.014, FontWeight.w600),
                                  )),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(height: height*0.071,),
                          Container(
                              margin: EdgeInsets.only(left: width*0.025),
                              child: Image.asset("images/Avatar2.png",height: height*0.035,))
                          ,
                          Container(
                            margin: EdgeInsets.only(left: width*0.025,top: height*0.01),
                            width: width*0.4,
                            child: Text("2.3K members",
                              style: myStyle.inter_white(height*0.014, FontWeight.w600),
                            ),
                          )
                        ],
                      ),


                    ],
                  ),
                ),


              ],
            ),
          ),

          SizedBox(height: height*0.025,),

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
                        height: height*0.022,
                      ),
                    ],
                  ),
                ),
                hintText:"search for a group..",
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
                        style: myStyle.inter_252525(height*0.018, FontWeight.w500  ),
                      ),
                      subtitle: Text(data[index]['subtitle'],
                        style: myStyle.inter_252525(height*0.015, FontWeight.w400  ),
                      ),
                      trailing:

                      Container(
                        width: width*0.11,
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
                          child: Text("Join",
                            style: myStyle.inter_3F3F46(height*0.011, FontWeight.w500),
                          ),
                        ),
                      )
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