import 'package:boopee/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BlueButton extends StatelessWidget {
  final String ? text;
  final VoidCallback ? onpress;
  BlueButton({required this.text,required this.onpress});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onpress!,
      child: Container(
        width: width*1,
        height: height*0.066,
        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
        decoration: BoxDecoration(
            image: DecorationImage(image:
           AssetImage("images/pic3.png")
            )
        ),
        child: Center(child: Text(text!,
          style: myStyle.poppin_white(height*0.016, FontWeight.w600),
        )),
      ),
    );
  }
}

class LightBlueButton extends StatelessWidget {
  final String ? text;
  final VoidCallback ? onpress;
  LightBlueButton({required this.text,required this.onpress});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onpress!,
      child: Container(
        width: width*1,
        height: height*0.066,
        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
        decoration: BoxDecoration(
            image: DecorationImage(image:
            AssetImage("images/lightblue.png")
            )
        ),
        child: Center(child: Text(text!,
          style: myStyle.inter_mycolor(height*0.016, FontWeight.w600),
        )),
      ),
    );
  }
}



class whiteButton extends StatelessWidget {
  final String ? text;
  final VoidCallback ? onpress;
  whiteButton({this.text,this.onpress});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onpress!,
      child: Container(
        width: width*1,
        height: height*0.066,
        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
        decoration: BoxDecoration(
            image: DecorationImage(image:
            AssetImage("images/whitebg.png")
            )
        ),
        child: Center(child: Text(text!,
          style: myStyle.inter_515151(height*0.016, FontWeight.w500),
        )),
      ),
    );
  }

}
Widget BuildTextField({required BuildContext? context,required String ? hint,required String label,bool ? date}){
  final width = MediaQuery.of(context!).size.width;
  final height = MediaQuery.of(context).size.height;
  return     Container(
    height: height*0.07,
    width: width*1,
    decoration: BoxDecoration(
      color: Colors.white,

    ),
    padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
    child: TextField(
      autofocus: true,
style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
      decoration: InputDecoration(
          hintText:hint,
          isDense: true,
          alignLabelWithHint: true,
          hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
          labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
          focusedBorder: OutlineInputBorder(),
          border: InputBorder.none,
          labelText: label,
      suffixIcon: 
      date==null?
          Text(""):
          date==false?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("kg",style: myStyle.inter_57534E(height*0.016, FontWeight.w500),),
                ],
              )

          :
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/calender.png",height: height*0.025,),
        ],
      )
      ),
    ),
  );
}

Widget BuildSheetTextField({required BuildContext? context,required String ? hint,required String label,bool ? date}){
  final width = MediaQuery.of(context!).size.width;
  final height = MediaQuery.of(context).size.height;
  return     Container(
    height: height*0.07,
    width: width*1,
    decoration: BoxDecoration(
      color: Colors.white,

    ),
    padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
    child: TextField(
      autofocus: false,
      style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
      decoration: InputDecoration(
          hintText:hint,
          isDense: true,
          alignLabelWithHint: true,
          hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
          labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
          focusedBorder: OutlineInputBorder(),
          border: InputBorder.none,
          labelText: label,
          suffixIcon:
          date==null?
          Text(""):
          date==false?
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("kg",style: myStyle.inter_57534E(height*0.016, FontWeight.w500),),
            ],
          )

              :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/calender.png",height: height*0.025,),
            ],
          )
      ),
    ),
  );
}


Widget BuildphoneTextField({required BuildContext? context,required String ? hint,required String label,bool ? date}){
  final width = MediaQuery.of(context!).size.width;
  final height = MediaQuery.of(context).size.height;
  return     Container(
    height: height*0.07,
    width: width*1,
    decoration: BoxDecoration(
      color: Colors.white,

    ),
    padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
    margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
    child: TextField(
      autofocus: true,
style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
      decoration: InputDecoration(
          hintText:hint,
          isDense: true,
          alignLabelWithHint: true,
          hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
          labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
          focusedBorder: OutlineInputBorder(),
          border: InputBorder.none,
          labelText: label,
          prefixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("+322",
                style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
              ),
            ],
          ),
          suffixIcon:
          date==null?
          Text(""):
          date==false?
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("kg",style: myStyle.inter_57534E(height*0.016, FontWeight.w500),),
            ],
          )

              :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/calender.png",height: height*0.025,),
            ],
          )
      ),
    ),
  );
}

Color mycolor=Color(0xff6ECCB9);