
import 'package:boopee/screens/Group/EmptyState.dart';
import 'package:boopee/screens/conversation.dart';
import 'package:boopee/screens/discover.dart';
import 'package:boopee/screens/myprofile.dart';
import 'package:boopee/screens/open_camerA.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';




int restuarent_current_index=0;
class MyHomeNavBar extends StatefulWidget {
  const MyHomeNavBar({Key? key}) : super(key: key);

  @override
  State<MyHomeNavBar> createState() => _MyHomeNavBarState();
}

class _MyHomeNavBarState extends State<MyHomeNavBar> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return NavigationBarTheme(
      data: NavigationBarThemeData(

          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.all(
              TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter-Regular',
                  color: Colors.white

              )
          )
      ),
      child: NavigationBar(

        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        animationDuration: Duration(seconds: 3),
        selectedIndex: restuarent_current_index,

        onDestinationSelected: (index){
          setState(() {
            restuarent_current_index=index;
          });
          if(restuarent_current_index==0){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return DiscoverScreen();
            }));
          }
          if(restuarent_current_index==1){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return EmptyStateScreen();
            }));
          }


          if(restuarent_current_index==2){

            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return OpenCameraScreen();
            }));
          }


          if(restuarent_current_index==3){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return ConversationScreen();
            }));

          }
          if(restuarent_current_index==4){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return MyProfile();
            }));
          }


          print(restuarent_current_index);
        },
        backgroundColor: Colors.black,
        destinations: [

          NavigationDestination( icon:  Image.asset("images/nav/Solid (5).png",
          height: height*0.025,
          ),
            label: "Vandaag",),


          NavigationDestination( icon:
          Image.asset("images/nav/Solid (6).png",
            height: height*0.025,
          ),
              label: "Toevoegen"),

          NavigationDestination( icon: Image.asset("images/nav/Solid (7).png",
            height: height*0.025,
          ),label: "Filter"),

          NavigationDestination( icon: Image.asset("images/nav/message-notification-circle.png",
            height: height*0.025,
          ),label: "Filter"),

          NavigationDestination( icon: Image.asset("images/nav/play (1).png",
            height: height*0.025,
          ),label: "Filter"),


        ],
      ),
    );
  }
}
