import 'package:boopee/screens/all_notification_.dart';
import 'package:boopee/screens/dogs_info.dart';
import 'package:boopee/screens/premium.dart';
import 'package:boopee/screens/user_inscription.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final _focusNode = FocusNode();
  // create a function to dismiss the keyboard

bool focus=true;

  void _name_showBottomSheet(BuildContext context) {
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

              _focusNode.hasFocus?
              height*0.8:
              height*0.5
              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.0185,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("Edit name",
                      style: myStyle.inter_252525(height*0.0184,FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("For safety purposes, you can only change your name once every 30 days.",
                      style: myStyle.inter_252525(height*0.018,FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: height*0.0185,),
                  InkWell(
                    onTap: (){
                      FocusScope.of(context).requestFocus(_focusNode);
                    },
                    child: Container(
                      height: height*0.07,
                      width: width*1,
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: TextField(
                        autofocus: focus,
                        focusNode: _focusNode,
                        style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
                        decoration: InputDecoration(
                          hintText:"Name",
                          isDense: true,
                          alignLabelWithHint: true,
                          hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                          labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
                          focusedBorder: OutlineInputBorder(),
                          border: InputBorder.none,
                          labelText: "Marco Verrati",

                        ),
                      ),
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
  void _username_showBottomSheet(BuildContext context) {
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

              _focusNode.hasFocus?
              height*0.8:
              height*0.5
              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.0185,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("Edit username",
                      style: myStyle.inter_252525(height*0.0184,FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("For safety purposes, you can only change your name once every 30 days.",
                      style: myStyle.inter_252525(height*0.018,FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: height*0.0185,),
                  InkWell(
                    onTap: (){
                      FocusScope.of(context).requestFocus(_focusNode);
                    },
                    child: Container(
                      height: height*0.07,
                      width: width*1,
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: TextField(
                        autofocus: focus,
                        focusNode: _focusNode,
                        style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
                        decoration: InputDecoration(
                          hintText:"Username",
                          isDense: true,
                          alignLabelWithHint: true,
                          hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                          labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
                          focusedBorder: OutlineInputBorder(),
                          border: InputBorder.none,
                          labelText: "Marco_labs_pollo06",

                        ),
                      ),
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
  void _email_address_showBottomSheet(BuildContext context) {
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

              _focusNode.hasFocus?
              height*0.8:
              height*0.5
              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.0185,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("Edit email address",
                      style: myStyle.inter_252525(height*0.0184,FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("How are we going to proceed with changing the email?",
                      style: myStyle.inter_252525(height*0.018,FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: height*0.0185,),
                  InkWell(
                    onTap: (){
                      FocusScope.of(context).requestFocus(_focusNode);
                    },
                    child: Container(
                      height: height*0.07,
                      width: width*1,
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: TextField(
                        autofocus: focus,
                        focusNode: _focusNode,
                        style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
                        decoration: InputDecoration(
                          hintText:"your@email.com",
                          isDense: true,
                          alignLabelWithHint: true,
                          hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                          labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
                          focusedBorder: OutlineInputBorder(),
                          border: InputBorder.none,
                          labelText: "Email Address",

                        ),
                      ),
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

  void _birthday_showBottomSheet(BuildContext context) {
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

              _focusNode.hasFocus?
              height*0.8:
              height*0.5
              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.0185,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("Edit username",
                      style: myStyle.inter_252525(height*0.0184,FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("For safety purposes, you can only change your name once every 30 days.",
                      style: myStyle.inter_252525(height*0.018,FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: height*0.0185,),
                  InkWell(
                    onTap: (){
                      FocusScope.of(context).requestFocus(_focusNode);
                    },
                    child:   Container(
                      height: height*0.07,
                      width: width*1,
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: TextField(
                        focusNode: _focusNode,
                        autofocus: focus,
                        style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
                        decoration: InputDecoration(
                            hintText:"Birthday",
                            isDense: true,
                            alignLabelWithHint: true,
                            hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                            labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
                            focusedBorder: OutlineInputBorder(),
                            border: InputBorder.none,
                            labelText: "Feb 09, 2023",
                            suffixIcon:

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("images/calender.png",height: height*0.0185,),
                              ],
                            )
                        ),
                      ),
                    )
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


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
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
                  child: Text("Settings",
                    style: myStyle.poppin_57534E(height*0.0184,FontWeight.w600),
                  ),
                ),
              ),
              Text(""),
            ],
          ),
          SizedBox(height: height*0.035,),


          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05,bottom: height*0.0185),
            child: ListTile(
              dense: true,
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return DogsInfoScreen();
                }));
              },
              tileColor: Color(0xffFEF3F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              title: Text("Verify your account by completing the documents of your dog.",style: myStyle.inter_D92D20(height*0.017, FontWeight.w400)),

              leading: Image.asset("images/about.png",color: Color(0xffD92D20),height: height*0.0185),
            ),
          ),
          SizedBox(height: height*0.015,),

          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.1),
            child: Text("My Account",
              style: myStyle.inter_252525(height*0.0182,FontWeight.w500),
            ),
          ),
              SizedBox(height: height*0.015,),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
              dense: true,
              onTap: (){
                print("hello");
                _name_showBottomSheet(context);
              },
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), 

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Name",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),
              title:  Text("Jimmy Doggo",style: myStyle.inter_51525C(height*0.018, FontWeight.w500)),
              trailing: InkWell(
                  onTap: (){

                  },
                  child: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185)),
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
              onTap: (){
                _username_showBottomSheet(context);
              },
              dense: true,
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Username",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),
              title:  Text("Jimmy12353",style: myStyle.inter_51525C(height*0.018, FontWeight.w500)),
              trailing: InkWell(
                  onTap: (){

                    _name_showBottomSheet(context);
                  },
                  child: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185)),
            ),
          ),    SizedBox(height: height*0.015,),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
              onTap: (){
                _birthday_showBottomSheet(context);
              },
              dense: true,
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Birthday",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),
              title:  Text("03 - 23 - 1998",style: myStyle.inter_51525C(height*0.018, FontWeight.w500)),
              trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185),
            ),
          ),    SizedBox(height: height*0.015,),

          Container(alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
              dense: true,
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Phone number",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),
              title:  Text("+212 63-234-532",style: myStyle.inter_51525C(height*0.018, FontWeight.w500)),
              trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185),
            ),
          ),    SizedBox(height: height*0.015,),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
      onTap: (){
        _email_address_showBottomSheet(context);
      },
              dense: true,
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Email Address",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),
              title:  Text("jimmy@doggo.com",style: myStyle.inter_51525C(height*0.018, FontWeight.w500)),
              trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185),
            ),
          ),    SizedBox(height: height*0.015,),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
              dense: true,
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return AllNotificationScreen();
                }));
              },
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Notification",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),

              trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185),
            ),
          ),    SizedBox(height: height*0.015,),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
              dense: true,
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Password",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),

              trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185),
            ),
          ),

          SizedBox(height: height*0.015,),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return PremiumScreen();
                }));
              },
              dense: true,
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Premium",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),

              trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185),
            ),
          ),

          SizedBox(height: height*0.015,),


          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05,bottom: height*0.0185),
            child: ListTile(
              dense: true,
              tileColor: Color(0xffFEF3F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Chien perdu",style: myStyle.inter_D92D20(height*0.017, FontWeight.w400)),

              trailing: Image.asset("images/about.png",color: Color(0xffD92D20),height: height*0.0185),
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: width*0.1),
            child: Text("Privacy Control",
              style: myStyle.inter_252525(height*0.0184,FontWeight.w500),
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListTile(
              dense: true,
              tileColor: Color(0xffFAFAFA),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
              minLeadingWidth: width*0.025,
              leading: Text("Profile (Public)",style: myStyle.inter_79716B(height*0.017, FontWeight.w400)),

              trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff252525),size: height*0.0185),
            ),
          ),
          SizedBox(height: height*0.05,),
      ],
      ),
    );
  }
}
