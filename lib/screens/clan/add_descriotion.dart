import 'package:boopee/screens/clan/request_join_group.dart';
import 'package:boopee/screens/gender.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:flutter/material.dart';

class AddClanDescriptionScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: MyHomeNavBar(),
      body: ListView(

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
                backgroundColor: Color(0xffD7D3D0),
                child: Container (
                    margin: EdgeInsets.only(left: width*0.015),
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
              ),
            ),
          ),
          SizedBox(height: height*0.05,),

          Container(
            margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
            child: Text("Add a description",
              style: myStyle.poppin_57534E(height*0.028,FontWeight.w600),
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            margin: EdgeInsets.only(left: width*0.075,right: width*0.05),
            child: Text("What shall we call your dogs group?",
              style: myStyle.poppin_79716B(height*0.016,FontWeight.w400),
            ),
          ),
          SizedBox(height: height*0.05,),

          // BuildTextField(context: context, label: "Description", hint: "What you group is going to be about?"),
          //

          Container(

            width: width*1,
            decoration: BoxDecoration(
              color: Colors.white,

            ),
            padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: TextField(
              autofocus: true,
              minLines: 5,
              maxLines: 20,

              style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
              decoration: InputDecoration(
                hintText:"",
                hintMaxLines: 5,
                isDense: true,
                alignLabelWithHint: true,
                hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
                focusedBorder: OutlineInputBorder(),
                border: InputBorder.none,
                labelText: "Description",
              ),
            ),
          ),
          SizedBox(height: height*0.28,),
BlueButton(text: "Create my group", onpress: (){  Navigator.of(context).push(MaterialPageRoute(builder: (context){
  return RequestJoinGroup();
}));})
        ],
      ),
    );
  }
}
