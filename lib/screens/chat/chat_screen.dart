
import 'package:boopee/screens/chat/bubble.dart';
import 'package:boopee/screens/chat/chatmessage.dart';
import 'package:boopee/screens/setting.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


enum MessageType{
  Sender,
  Receiver,
}
class Chat_Screen extends StatefulWidget {


MyUser ? user;
Chat_Screen({required this.user});
  static const kMessageTextFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    hintText: 'Type your message here...',
    border: InputBorder.none,
  );

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  TextEditingController message = TextEditingController();

  void _chat_showBottomSheet(BuildContext context) {
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


              height*0.4
              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.05,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Text("Chat settings",
                      style: myStyle.inter_414141(height*0.018, FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.025,),
                  Container(
                    height: height*0.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                        color: Colors.white,
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

                        Text("Block Boubeeia",
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
  void _attach_showBottomSheet(BuildContext context) {
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
                  SizedBox(height: height*0.05,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Text("Attache media",
                      style: myStyle.inter_414141(height*0.018, FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.025,),
                  Container(
                    height: height*0.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    padding:  EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Row(
                      children: [
                        Image.asset("images/camera.png",
                          height: height*0.025,
                        ),
                        SizedBox(width: width*0.025,),

                        Text("Use camera",
                          style: myStyle.inter_252525(height*0.018, FontWeight.w500),
                        ),
                      ],

                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    height: height*0.06,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                    padding:  EdgeInsets.only(left: width*0.05,right: width*0.05),
                    child: Row(
                      children: [
                        Image.asset("images/file.png",
                          height: height*0.025,
                        ),
                        SizedBox(width: width*0.025,),

                        Text("Choose from files",
                          style: myStyle.inter_252525(height*0.018, FontWeight.w500),
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

  List<ChatMessage> messages_list=[
    ChatMessage(message: "Hi",type: MessageType.Sender,),
    ChatMessage(message: "Hello",type: MessageType.Receiver),
    ChatMessage(message: "How are you?",type: MessageType.Sender),
    ChatMessage(message: "Fine",type: MessageType.Receiver)
  ];
  String chatid = '1334';





  @override
  void dispose() {
    // TODO: implement dispose
    message.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("step1");
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


    return Scaffold(

floatingActionButton:  Container(
  margin: EdgeInsets.only(
      left: width * 0.05, right: width * 0.05),
width: width*1,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.only(
              left: width * 0.05,),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffF7F7F7)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: width * 0.55,
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
              ),
              InkWell(
                onTap: (){
                  _attach_showBottomSheet(context);
                },
                child: CircleAvatar(
                    radius: height*0.027,
                    backgroundColor: Color(0xffD7D3D0).withOpacity(0.2),
                    child: Image.asset("images/attach.png")
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: width*0.015,),
      InkWell(
        onTap: (){
         _chat_showBottomSheet(context);
        },
        child: CircleAvatar(
          backgroundColor: mycolor,
          child: Icon(Icons.keyboard_voice,color: Colors.white,),
        ),
      )

    ],
  ),
),


      body: //body
      ListView(
        children: [

Card(
  child: Column(
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
              margin: EdgeInsets.only(left: width*0.05,top: height*0.02),
              child: CircleAvatar(
                radius: height*0.02,
                backgroundColor: Color(0xffD7D3D0),
                child: Container (
                    margin: EdgeInsets.only(left: width*0.015),
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return SettingScreen();
              }));

            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(right: width*0.05,top: height*0.02),
              child: CircleAvatar(
                radius: height*0.02,
                backgroundColor: Color(0xffD7D3D0),
                child: Icon(Icons.settings,color: Colors.white,size: 20,),
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: height*0.01,),
      ListTile(
        dense: true,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(widget.user!.imageurl!),
        ),
        title: Text(widget.user!.username!,
          style: myStyle.inter_252525(height*0.022, FontWeight.w700),
        ),
        subtitle: Text("Last seen 32min ago.",
          style: myStyle.inter_79716B(height*0.017, FontWeight.w400),
        ),
      ),
      SizedBox(height: height*0.015,),
    ],
  ),
),
          Container(
            height: height*0.8,

            child: ListView(

              children: [


                //chat screen

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(

                      children: List.generate(messages_list.length, (index) =>
                          ChatBubble(
                            chatMessage: ChatMessage(
                                message:messages_list[index].message,
                                type:
                                messages_list[index].type

                            ),
                          )
                      ),
                    )

                  ],
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
