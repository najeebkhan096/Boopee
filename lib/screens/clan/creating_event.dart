import 'dart:io';

import 'package:boopee/modal/post_item.dart';
import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/screens/create_clan.dart';
import 'package:boopee/screens/postDetail.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatingEventScreen extends StatefulWidget {
  @override
  State<CreatingEventScreen> createState() => _CreatingEventScreenState();
}

class _CreatingEventScreenState extends State<CreatingEventScreen> with SingleTickerProviderStateMixin{

  List<File> ? choosedfiles=[];
  String  ? choosedfile_url='';
  Future<File?> getfilename(int choice) async {
    File ? selected_file;
    if (choice == 1) {
      final image =
      await ImagePicker.platform.getImage(source: ImageSource.camera);
      await    image!.length().then((value) {

      });

      setState(() {
        choosedfiles!.add(File(image.path));
      });


    } else {
      final image =
      await ImagePicker.platform.getImage(source: ImageSource.gallery);
      setState(() {
        choosedfiles!.add(File(image!.path));
      });
    }
    return selected_file;
  }


  Future<File?> _show_my_Dialog() async{
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    File ? choosedfile;
    await  showDialog(
        context: context,
        builder: (ctx) => AlertDialog(

            content: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    onTap: () async{
                      await  getfilename(1).then((value) async {
                        choosedfile=value;
                        Navigator.pop(context,value);
                      });
                    },
                    leading: Icon(
                      Icons.camera,
                      color: mycolor,
                    ),
                    title: Text( "Camera",
                      style: myStyle.inter_252525(height*0.018, FontWeight.w700),
                    ),
                  ),
                  ListTile(
                    onTap: () async{
                      await getfilename(2).then((value) {
                        choosedfile=value;
                        Navigator.pop (context,value);
                      });
                    },
                    leading: Icon(
                      Icons.image,
                      color: mycolor,
                    ),
                    title: Text( "Gallery",
                      style: myStyle.inter_252525(height*0.018, FontWeight.w700),
                    ),
                  )
                ],
              ),
            )));
    return choosedfile;
  }

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
              height*0.47
              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.025,),
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

                        Text("Manage something",
                          style: myStyle.inter_252525(height*0.018, FontWeight.w500),
                        ),
                      ],

                    ),
                  ),
                  SizedBox(height: height*0.015,),

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

                        Text("Manage another thing",
                          style: myStyle.inter_252525(height*0.018, FontWeight.w500),
                        ),
                      ],

                    ),
                  ),
                  SizedBox(height: height*0.015,),

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

                        Text("Group settings",
                          style: myStyle.inter_252525(height*0.018, FontWeight.w500),
                        ),
                      ],

                    ),
                  ),
                  SizedBox(height: height*0.015,),

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
                        Image.asset("images/eye.png",
                          height: height*0.025,
                        ),
                        SizedBox(width: width*0.025,),

                        Text("Not interested",
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

                        Text("Leave group",
                          style: myStyle.inter_D92D20(height*0.018, FontWeight.w500),
                        ),
                      ],

                    ),
                  ),
                  SizedBox(height: height*0.015,),
                ],
              ),
            ),
          );
        });
      },
    );
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


          Container(
            height: height*0.3,
            width: width*1,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/kutta.png",
                ),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                          backgroundColor: Color(0xff366c88),
                          child: Container (
                              margin: EdgeInsets.only(left: width*0.015),
                              child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        _share_showBottomSheet(context);
                      },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(right: width*0.05,top: height*0.025),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xff366c88),
                          child: Container(
                              child: Icon(Icons.more_horiz,color: Colors.white,size: 20,)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*0.1,),

                Container(
                  height: height*0.1,
                  width: width*1,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: width*0.05,right: width*0.05,top: height*0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Chiwawa Lovers",
                              style: myStyle.inter_252525(height*0.02, FontWeight.w600),
                            )
                            ,
                            Container(
                              width: width*0.15,
                              height: height*0.03,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 0.3),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text("Joined",
                                  style: myStyle.inter_white(height*0.012, FontWeight.w600),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: width*0.05,top: height*0.01),
                        child: Row(
                          children: [
                            Image.asset("images/Avatar2.png",
                              height: height*0.03,
                            ),
                            SizedBox(width: width*0.025,),
                            Text("5k members",
                              style: myStyle.inter_525252(height*0.014, FontWeight.w500),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height*0.02,),

          // Container(
          //   height: height*0.13,
          //
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       SizedBox(width: width*0.05,),
          //       Container(
          //         height: height*0.15,
          //         width: width*0.3,
          //
          //         alignment: Alignment.bottomCenter,
          //         child: Stack(
          //           children: [
          //             Container(
          //               height: height*0.12,
          //               width: width*0.3,
          //
          //               decoration: BoxDecoration(
          //
          //                   borderRadius: BorderRadius.circular(10),
          //                   image: DecorationImage(image:
          //                   NetworkImage("https://wallpapers.com/images/featured/nbatpvqy5jur2jhh.jpg"),
          //                       fit: BoxFit.fill
          //                   )
          //               ),
          //               alignment: Alignment.bottomLeft,
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text("Mon clan Best name",
          //
          //                   style: myStyle.inter_white(height*0.014, FontWeight.w600),
          //                 ),
          //               ),
          //             ),
          //
          //             Positioned(
          //               top: 0,
          //               right: 0,
          //               child: CircleAvatar(
          //                 backgroundColor: mycolor,
          //                 radius: 13,
          //                 child: Image.asset("images/flag-04.png",height: height*0.02,),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //       SizedBox(width: 10,),
          //       Container(
          //         height: height*0.15,
          //         width: width*0.3,
          //
          //         alignment: Alignment.bottomCenter,
          //         child: Stack(
          //           children: [
          //             Container(
          //               height: height*0.12,
          //               width: width*0.3,
          //
          //               decoration: BoxDecoration(
          //
          //                   borderRadius: BorderRadius.circular(10),
          //                   image: DecorationImage(image:
          //                   NetworkImage("https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/rockcms/2022-08/220805-border-collie-play-mn-1100-82d2f1.jpg"),
          //                       fit: BoxFit.fill
          //                   )
          //               ),
          //               alignment: Alignment.bottomLeft,
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text("Mon clan Best name",
          //
          //                   style: myStyle.inter_white(height*0.014, FontWeight.w600),
          //                 ),
          //               ),
          //             ),
          //
          //             Positioned(
          //               top: 0,
          //               right: 0,
          //               child: CircleAvatar(
          //                   backgroundColor: mycolor,
          //                   radius: 13,
          //                   child: Text("3",
          //                     style: myStyle.inter_white(height*0.018, FontWeight.w500),
          //                   )
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //       SizedBox(width: 10,),
          //       Container(
          //         height: height*0.15,
          //         width: width*0.3,
          //         alignment: Alignment.bottomCenter,
          //         child: Stack(
          //           children: [
          //             Container(
          //               height: height*0.12,
          //               width: width*0.3,
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(10),
          //                   image: DecorationImage(image:
          //                   NetworkImage("https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/rockcms/2022-08/220805-border-collie-play-mn-1100-82d2f1.jpg"),
          //                       fit: BoxFit.fill
          //                   )
          //               ),
          //               alignment: Alignment.bottomLeft,
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text("Mon clan Best name",
          //                   style: myStyle.inter_white(height*0.014, FontWeight.w600),
          //                 ),
          //               ),
          //             ),
          //             Positioned(
          //               top: 0,
          //               right: 0,
          //               child: CircleAvatar(
          //                   backgroundColor: mycolor,
          //                   radius: 13,
          //                   child: Text("2",
          //                     style: myStyle.inter_white(height*0.018, FontWeight.w500),
          //                   )
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          //
          // SizedBox(height: height*0.025,),

          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child:   Text("Introduction",

              style: myStyle.inter_252525(height*0.02, FontWeight.w700),

            ),
          ),
          SizedBox(height: height*0.025,),
          Container(
              margin:EdgeInsets.only(left: width*0.05,right:width*0.05),
              child: Text("Welcome to chiwawa lovers group, be friendly and post your dogs photo.",style:myStyle.inter_79716B(height*0.014, FontWeight.w400))),
          SizedBox(height: height*0.01,),
          Divider(color: Color(0xffE4E4E7),),
          SizedBox(height: height*0.01,),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffE4E4E7),
                ),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: height*0.1,
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  child: Row(
                    children: [

                      CircleAvatar(
                        radius: 13,
                        backgroundColor: Color(0xffD7D3D0).withOpacity(0.5),
                        child: Container (
                            margin: EdgeInsets.only(left: width*0.015),
                            child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,)),
                      ),
                      SizedBox(width: width*0.02,),
                      Expanded(
                        child: Container(
                          height: height*0.06,
                          decoration: BoxDecoration(

                          ),
                          padding: EdgeInsets.only(left: width*0.025),
                          alignment: Alignment.center,
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                hintText: 'What’s the event about?',
                                border: InputBorder.none,
                                hintStyle: myStyle.inter_79716B(height*0.016, FontWeight.w400  )
                            ),
                          ),
                        ),
                      )


                    ],
                  ),
                ),

                Container(
                  height: height*0.05,
                  width: width*1,
                  decoration: BoxDecoration(
                    color: Colors.white,
borderRadius: BorderRadius.circular(10),
border: Border.all(
  color: Color(0xffE4E4E7),
)
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
                    decoration: InputDecoration(
                        hintText:"Lieu de la balade",
                        prefixIconConstraints: BoxConstraints(
                          minWidth: width*0.09
                        ),
                        prefixIcon: Container(
                          width: width*0.05,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/Icon (14).png",height: height*0.023),
                            ],
                          ),
                        ),
                        isDense: true,
                        alignLabelWithHint: true,
                        hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                        labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
                        focusedBorder: OutlineInputBorder(),
                        border: InputBorder.none,

                    ),
                  ),
                ),
                SizedBox(height: height*0.02,),
                Container(
                  height: height*0.05,
                  width: width*1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffE4E4E7),
                      )
                  ),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
                  margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
                    decoration: InputDecoration(
                      hintText:"Date du balade",
                      prefixIconConstraints: BoxConstraints(
                          minWidth: width*0.09
                      ),
                      prefixIcon: Container(
                        width: width*0.05,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/Solid (2).png",height: height*0.023),
                          ],
                        ),
                      ),
                      isDense: true,
                      alignLabelWithHint: true,
                      hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                      labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
                      focusedBorder: OutlineInputBorder(),
                      border: InputBorder.none,

                    ),
                  ),
                ),

                SizedBox(height: height*0.02,),
                BlueButton(text: "Create", onpress: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return CreateClanScreen();
                  }));
                }),

                SizedBox(height: height*0.02,),
              ],
            ),
          ),


          Column(
            children: List.generate(data.length, (index){
              return PostItem(
                postImg: data[index]['url'],
                profileImg: '',
                name: "Najeeb khan",
                caption: "Some caption",
                isLoved: true,
                viewCount: "26",
                likescount: "23",
                votingcount: "56",
              );

            }),
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
                            ),
                            color: Colors.white
                        ),
                        child: Center(
                          child: Text("Joined",
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