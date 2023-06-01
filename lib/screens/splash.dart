import 'package:boopee/screens/phone_number.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
        width: width*1,
height: height*1,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("images/dog.png",
            height: height*1,
              fit: BoxFit.cover,
            ),
            Container(
              width: width*1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(height: height*0.06,),

                      Image.asset("images/boopee.png",
                        height: height*0.05,
                        fit: BoxFit.fill,
                      ),

                      SizedBox(height: height*0.015,),
                      Text("Find your pet companion.",
                      style: myStyle.inter_4A4A4A(height*0.018,FontWeight.w500),
                      )



                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: height*0.05),
                    child: Column(
                      children: [
                        BlueButton(
                          onpress: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context){
                                  return PhoneNumberScreen();
                                })
                            );
                            },
                          text: 'Create account',
                        ),

                        SizedBox(height: height*0.015,),
                        whiteButton(
                          onpress: (){

                          },
                          text: 'Sign in',
                        ),

                        SizedBox(height: height*0.025,),

                        Container(
                          margin: EdgeInsets.only(left: width*0.1,right: width*0.1),
                          child: Text("By tapping “Create account” or “Sign in” you agree on our terms of condition.",
                            style: myStyle.inter_636363(height*0.0135, FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
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
    );
  }
}
