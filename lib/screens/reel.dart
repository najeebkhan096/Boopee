import 'package:boopee/screens/notification.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';

class ReelScreen extends StatefulWidget {
  final String url;
  ReelScreen({required this.url});
  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  Map _user= {
    'image':'https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg',
    'title':'Doggo.Bambou0234',
    'subtitle':'My dog is cute innit?',
    'likes':'634',
    'time':'3 days ago'
  };
  List<Map<String, dynamic>> characterList = [
    "Playfull",
    "Stupid",
    "Another desc?",
    "Description 12",
    "Stupid",
    "Good Dog If you made here, hi!",
    "Another desc?",
    "What should I put here",
    "I don't know X",
    "Another desc?",

  ].map((character) => {
    "text": character,
    "status":false
  }).toList();

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
  void _share_showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10)
          )
      ),
      builder: (BuildContext context) {
        final height=MediaQuery.of(context).size.height;
        final width=MediaQuery.of(context).size.width;
        return StatefulBuilder(builder: (context,mystate){
          return GestureDetector(
            onTap: (){
              final currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
                currentFocus.focusedChild!.unfocus();
                mystate((){

                });
              }
            },
            child: Container(
              height:


              height*0.3
              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.075,),
     Container(
       height: height*0.06,
       decoration: BoxDecoration(
         color: Color(0xffF3F4F6),
         borderRadius: BorderRadius.circular(10)
       ),
       margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
       padding:  EdgeInsets.only(left: width*0.05,right: width*0.05),
       child: Row(
         children: [
           Image.asset("images/send.png",
             height: height*0.025,
           ),
           SizedBox(width: width*0.025,),

           Text("Share Reel",
             style: myStyle.inter_252525(height*0.018, FontWeight.w500),
           ),
         ],

       ),
     ),
                  SizedBox(height: height*0.015,),
                  Container(
                    height: height*0.06,
                    decoration: BoxDecoration(
                        color: Color(0xffFEF3F2),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    padding:  EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Row(
                      children: [
                        Image.asset("images/annotation-alert.png",
                          height: height*0.025,
                        ),
                        SizedBox(width: width*0.025,),

                        Text("Report",
                          style: myStyle.inter_D92D20(height*0.018, FontWeight.w500),
                        ),
                      ],

                    ),
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
  List<Map> comments=[
    {
      'image':'https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg',
      'title':'Doggo.Bambou0234',
      'subtitle':'My dog is cute innit?',
      'likes':'634',
      'time':'3 days ago'
    },

    {
      'image':'https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg',
      'title':'Doggo.Bambou0234',
      'subtitle':'My dog is cute innit?',
      'likes':'1122',
      'time':'2 hours ago'
    },
    {
      'image':'https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg',
      'title':'Doggo.Bambou0234',
      'subtitle':'My dog is cute innit?',
      'likes':'800',
      'time':'10 minutes ago'
    },

    {
      'image':'https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg',
      'title':'Doggo.Bambou0234',
      'subtitle':'My dog is cute innit?',
      'likes':'30',
      'time':'15 seconds ago'
    },


  ];

  void _comments_showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10)
          )
      ),
      builder: (BuildContext context) {
        final height=MediaQuery.of(context).size.height;
        final width=MediaQuery.of(context).size.width;
        return StatefulBuilder(builder: (context,mystate){
          return GestureDetector(
            onTap: (){
              final currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
                currentFocus.focusedChild!.unfocus();
                mystate((){

                });
              }
            },
            child: Container(
              height: height*0.85,
              child: ListView(

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height*0.025,),
                      Container(
                        margin: EdgeInsets.only(left: width*0.1),
                        child: Text("Comments section (392)",
                          style: myStyle.inter_252525(height*0.02,FontWeight.w600),
                        ),
                      ),

                      SizedBox(height: height*0.025,),
                      Container(
                        height: height*0.65,
                        child: ListView(
                          children: List.generate(comments.length, (index) =>
                              Container(
                                margin: EdgeInsets.only(bottom: height*0.015),
                                child: ListTile(
                                  leading:
                                  CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(comments[index]['image'] ))
                                  ,
                                  title: Text(comments[index]['title'],
                                    style: myStyle.inter_252525(height*0.017,FontWeight.w600),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: height*0.005,),
                                      Text(comments[index]['subtitle'],
                                        style: myStyle.inter_3F3F46(height*0.018, FontWeight.w500),
                                      ),
                                      SizedBox(height: height*0.005,),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,

                                            child: CircleAvatar(
                                              radius: 12,
                                              backgroundColor: Color(0xffA0A0AB).withOpacity(0.2),
                                              child: Container (

                                                  child: Image.asset("images/fav.png",height: height*0.015,)
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: width*0.025,),
                                          Text(comments[index]['likes']),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.015,),

                    ],
                  ),
                  Container(
                    height: height*0.1,
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage("https://alpha.aeon.co/images/acd6897d-9849-4188-92c6-79dabcbcd518/header_essay-final-gettyimages-685469924.jpg"),
                        ),
                        SizedBox(width: width*0.02,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xffF4F4F5)
                            ),
                            padding: EdgeInsets.only(left: width*0.025),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Write a comment..',
                                  border: InputBorder.none,
                                  hintStyle: myStyle.inter_79716B(height*0.02, FontWeight.w400  )
                              ),
                            ),
                          ),
                        )


                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
        height: height*1,
        width: width*1,
        child: Stack(
          children: [
            Image.asset(widget.url,
            height: height*1,
              width: width*1,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: height*0.05,
              width: width*1,
              child: Column(
                children: [
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
                                backgroundColor: Color.fromRGBO(84, 84, 84, 0.5),
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
                            backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                            child: Image.asset("images/notification.png",height: height*0.023,
                              color: Colors.white,
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    height: height*0.05,


                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: ListView.builder(

                        scrollDirection: Axis.horizontal,
                        itemCount: characterList.length,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              setState(() {

                                characterList[index]['status']=!characterList[index]['status'];
                              });
                            },
                            child: Container(
                              width: width*0.2,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color:   characterList[index]['status']?Color.fromRGBO(84, 84, 84, 0.5):
                                  Colors.transparent
                                  ,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Center(
                                child: Text(characterList[index]['text'].toString(),
                                  style:

                                  characterList[index]['status']?
                                  myStyle.inter_white(height*0.016, FontWeight.w600)
                                      :
                                  myStyle.inter_424242(height*0.016, FontWeight.w600),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),


                ],
              ),
            ),


            Positioned(bottom: height*0.1,
              width: width*1,
              child: ListTile(
                leading:
                CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(_user['image']))
                ,
                title: Text(_user['title'],
                  style: myStyle.inter_B0B0B0(height*0.024, FontWeight.w700),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.005,),
                    Text(_user['subtitle'],
                      style: myStyle.inter_B0B0B0(height*0.018, FontWeight.w500),
                    ),

                  ],
                ),
              ),
            ),


            Positioned(
              right: width*0.05,
                bottom: height*0.125,
                child: Column(
              children: [
                InkWell(
                  onTap: (){
                    _share_showBottomSheet(context);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: width*0.025),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                      child: Image.asset("images/share (3).png",height: height*0.023,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height*0.015,),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width*0.025),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                    child: Image.asset("images/unfav.png",height: height*0.023,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: height*0.015,),
                InkWell(
                  onTap: (){
                    _comments_showBottomSheet(context);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: width*0.025),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                      child: Image.asset("images/comment (2).png",height: height*0.023,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height*0.015,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width*0.025),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                    child:Icon(Icons.more_horiz,color: Colors.white ,)
                  ),
                ),

              ],
            ))


          ],
        ),
      ),
    );
  }
}
