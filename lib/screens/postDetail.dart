import 'package:boopee/screens/notification.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';

class PostDetail extends StatelessWidget {
  final String url;
  PostDetail({required this.url});
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

      body: ListView(
        children: [
          Container(
            width: width*1,
            height: height*0.65,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(url,
                  height: height*1,
                  fit: BoxFit.cover,
                ),
         Positioned(
           top: 0,
           child: Container(
             width: width*1,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.of(context).pop();
                   },
                   child: Container(
                     alignment: Alignment.centerLeft,
                     margin: EdgeInsets.only(left: width*0.05,top: height*0.05),
                     child: CircleAvatar(
                       radius: 20,
                       backgroundColor: Colors.black.withOpacity(0.25),
                       child: Container (
                           margin: EdgeInsets.only(left: width*0.015),
                           child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                     ),
                   ),
                 ),

                 InkWell(
                   onTap: (){
                     Navigator.of(context).pop();
                   },
                   child: Container(
                     alignment: Alignment.centerLeft,
                     margin: EdgeInsets.only(right: width*0.05,top: height*0.05),
                     child: CircleAvatar(
                       radius: 20,
                       backgroundColor: Colors.black.withOpacity(0.25),
                       child: Container (
                           margin: EdgeInsets.only(left: width*0.015),
                           child: Icon(Icons.more_horiz,color: Colors.white,size: 20,)),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
                Positioned(

                  bottom: height*0.025,
                  child: Container(
                    width: width*1,
                    height: height*0.1,

                    child: Row(

                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black.withOpacity(0.25),
                            child: Container (

                                child: Image.asset("images/fav.png",height: height*0.025,)
                            ),
                          ),
                        ),


                        Text("1.5k",
                        style: myStyle.inter_white(height*0.02, FontWeight.w500),
                        ),

                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black.withOpacity(0.25),
                            child: Container (

                                child: Image.asset("images/comment (2).png",height: height*0.03,)
                            ),
                          ),
                        ),
                        Text("3.2k",
                          style: myStyle.inter_white(height*0.02, FontWeight.w500),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: width*0.05,right: height*0.025),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black.withOpacity(0.25),
                            child: Container (

                                child: Image.asset("images/share (3).png",height: height*0.03,)
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.025,),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Text("This ma dog Jimmy, show some love guys!\nPosted 3 days ago",style: myStyle.inter_A9A29D(height*0.02, FontWeight.w400),
            ),
          ),
          SizedBox(height: height*0.015,),
          InkWell(
            onTap: (){
              _comments_showBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              child: Text("Show all 192 comments",style: myStyle.inter_51525C(height*0.02, FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
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
    );
  }
}
