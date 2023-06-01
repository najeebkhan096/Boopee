import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/screens/conversation.dart';
import 'package:boopee/screens/user_inscription.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/user.dart';
import 'package:flutter/material.dart';
import 'package:boopee/screens/notification.dart';
import 'package:boopee/screens/postDetail.dart';
import 'package:boopee/screens/setting.dart';
import 'package:boopee/screens/user_inscription.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:flutter/material.dart';

class MyProfile2 extends StatefulWidget {
  @override
  State<MyProfile2> createState() => _MyProfile2State();
}

class _MyProfile2State extends State<MyProfile2> {


  void _qr_showBottomSheet(BuildContext context) {
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

              height*0.7

              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.0175,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("Share QR code",
                      style: myStyle.inter_252525(height*0.0174,FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("Let your others scan your QR code",
                      style: myStyle.inter_252525(height*0.017,FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: height*0.015,),

                  Container(
                      margin: EdgeInsets.only(left: width*0.15,right: width*0.15),
                      child: Image.asset("images/qr.png",height: height*0.35,fit: BoxFit.fill,width: width*1,)),
                  SizedBox(height: height*0.015,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("You’ve earned 324 points by booping with 38 people using QR code",
                      style: myStyle.inter_252525(height*0.017,FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: height*0.0175,),


                ],
              ),
            ),
          );
        });
      },
    );
  }
  List<String> dogs = [
    "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_1280.jpg",
    "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/03/12/18/pug-crufts.jpg?quality=75&width=1200&auto=webp",
    "https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg",
    "https://petkeen.com/wp-content/uploads/2022/06/a-labrador-dog-wearing-a-collar_tookapic_Pixabay-760x507.jpg",
    "https://www.thesprucepets.com/thmb/4gz3D42PNWta_W7xY5-aaas2bl0=/1500x0/filters:no_upscale():strip_icc()/breed_profile_germansheperd_1118000_profile_2608-d7a78e7c1cf049879bec1ec19113ee42.jpg",
    "https://www.ellevetsciences.com/wp-content/uploads/2022/07/ev-blog-BMD-header_2-1024x683.jpg",
    "https://www.petplace.com/static/13f543f6b95f2721e69c5837a93e8d2a/5f007/shutterstock_553932688.jpg",
    "https://www.veterinarians.org/wp-content/uploads/2022/10/The-History-and-Characteristics-of-The-Bernese-Mountain-Dog.jpg",
    "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_1280.jpg",
    "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/03/12/18/pug-crufts.jpg?quality=75&width=1200&auto=webp",
    "https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg",
    "https://petkeen.com/wp-content/uploads/2022/06/a-labrador-dog-wearing-a-collar_tookapic_Pixabay-760x507.jpg",
    "https://www.thesprucepets.com/thmb/4gz3D42PNWta_W7xY5-aaas2bl0=/1500x0/filters:no_upscale():strip_icc()/breed_profile_germansheperd_1118000_profile_2608-d7a78e7c1cf049879bec1ec19113ee42.jpg",
    "https://www.ellevetsciences.com/wp-content/uploads/2022/07/ev-blog-BMD-header_2-1024x683.jpg",
    "https://www.petplace.com/static/13f543f6b95f2721e69c5837a93e8d2a/5f007/shutterstock_553932688.jpg",
    "https://www.veterinarians.org/wp-content/uploads/2022/10/The-History-and-Characteristics-of-The-Bernese-Mountain-Dog.jpg"

  ];
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

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: MyHomeNavBar(),
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
                  margin: EdgeInsets.only(left: width*0.05,top: height*0.0175),
                  child: CircleAvatar(
                    radius: height*0.02,
                    backgroundColor: Color(0xffD7D3D0),
                    child: Container (
                        margin: EdgeInsets.only(left: width*0.015),
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: height*0.0175,),
          Container(
            margin: EdgeInsets.only(left: width*0.05),
            child: Row(
mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage("https://alpha.aeon.co/images/acd6897d-9849-4188-92c6-79dabcbcd518/header_essay-final-gettyimages-685469924.jpg"),
                ),

                SizedBox(width: width*0.025,),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: height*0.01,),
                      Text("Boubeeia",
                        style: myStyle.inter_51525C(height*0.0174, FontWeight.w800),
                      ),
                      Text("@boubeeia_Official",
                        style: myStyle.inter_79716B(height*0.017, FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width*0.1,),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: width*0.05,top: height*0.0175),
                  child: CircleAvatar(
                    radius: height*0.02,
                    backgroundColor: Color(0xffD7D3D0),
                    child: Container (

                        child: Icon(Icons.more_horiz,color: Colors.white,size: 20,)),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: height*0.015,),

          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Text("Meet Boubee, the most wholesome and cute dog of the country, Don’t hesitate to say hi! maybe hangout too?",
              style: myStyle.inter_79716B(height*0.015, FontWeight.w400),
            ),
          ),
          SizedBox(height: height*0.015,),
          InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return Chat_Screen(user:
                MyUser("242352", 'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x',
              "najeeb","Hi, David. Hope you’re doing...."
                )
                );
              }));
            },
            child: Container(
              margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
              height: height*0.06,
              width: width*1,
              decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff51525C))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Send message",
                  style: myStyle.inter_51525C(height*0.018, FontWeight.w500),
                  ),
                  SizedBox(width: width*0.015,),
                  Image.asset("images/send.png",height: height*0.02,)
                ],
              ),
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            height: height*0.1,
            width: width*1,
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: characterList.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Chip(
                        backgroundColor:
                        characterList[index]['status']?
                        mycolor:Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color:
                              characterList[index]['status']?
                              mycolor:
                              Color(0xff49454F)
                              ,
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        label: InkWell(
                          onTap: (){
                            setState(() {

                              characterList[index]['status']=!characterList[index]['status'];
                            });
                          },
                          child: Text(characterList[index]['text'].toString(),
                            style:

                            characterList[index]['status']?
                            myStyle.inter_white(height*0.016, FontWeight.w600)
                                :
                            myStyle.inter_424242(height*0.016, FontWeight.w600),
                          ),
                        )),
                  );
                }),
          ),
          SizedBox(height: height*0.015,),
          Container(
            margin: EdgeInsets.only(left: width*0.1),
            child: Text("Groups (13)",
              style: myStyle.inter_424242(height*0.0174,FontWeight.w500),
            ),
          ),

          SizedBox(height: height*0.0175,),
          Container(
            height: height*0.28,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: width*0.6,
                  margin: EdgeInsets.only(left: width*0.05),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: mycolor.withOpacity(0.05),
                      border: Border.all(color: mycolor)
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage("https://alpha.aeon.co/images/acd6897d-9849-4188-92c6-79dabcbcd518/header_essay-final-gettyimages-685469924.jpg"),
                          ),
                          SizedBox(width: width*0.025,),

                          Container(
                            width: width*0.35,
                            child: Text("French cool dogs owners",
                              style: myStyle.inter_424242(height*0.015, FontWeight.w600),
                            ),
                          )

                        ],
                      ),
                      SizedBox(height: height*0.015,),
                      Container(

                        child: Text("Club for french people only, f..." ,style: myStyle.inter_79716B(height*0.017, FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: height*0.0175,),
                      Image.asset("images/avatar.png",height: height*0.05,)


                    ],
                  ),
                ),

                Container(
                  width: width*0.6,
                  margin: EdgeInsets.only(left: width*0.05),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  Color(0xffFAFAFA),
                      border: Border.all(color:Color(0xffE4E4E7),width: 1)
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage("https://alpha.aeon.co/images/acd6897d-9849-4188-92c6-79dabcbcd518/header_essay-final-gettyimages-685469924.jpg"),
                          ),

                          SizedBox(width: width*0.025,),

                          Container(
                            width: width*0.35,
                            child: Text("Orange color dog clu - Morocco",
                              style: myStyle.inter_424242(height*0.017, FontWeight.w600),
                            ),
                          )

                        ],
                      ),
                      SizedBox(height: height*0.015,),
                      Container(

                        child: Text("Join the biggest group in Morocco of dogs, meet new people" ,style: myStyle.inter_79716B(height*0.015, FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: height*0.0175,),
                      Image.asset("images/avatar.png",height: height*0.0175,)


                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.0175,),
          Container(
            margin: EdgeInsets.only(left: width*0.1),
            child: Row(

              children: [
                Text("Profile",
                  style: myStyle.inter_424242(height*0.0174,FontWeight.w600),
                ),


              ],
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
            child: Divider(
              color: Color(0xffE5E5E5),
            ),
          ),
          SizedBox(height: height*0.015,),
          Container(
            margin: EdgeInsets.only(left: width*0.025),
            child: Wrap(
                children: List.generate(dogs.length, (index) => InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return PostDetail(url: dogs[index],);
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: width*0.025,bottom: height*0.015),
                    width: width*0.29,
                    height: height*0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: NetworkImage(dogs[index]),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ))),
          )



        ],
      ),
    );
  }
}

// class MyProfile22 extends StatefulWidget {
//   @override
//   State<MyProfile22> createState() => _MyProfile22State();
// }
//
// class _MyProfile22State extends State<MyProfile22> {
//
//
//   void _qr_showBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       enableDrag: true,
//       isScrollControlled: true,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(10),
//               topLeft: Radius.circular(10)
//           )
//       ),
//       builder: (BuildContext context) {
//         final height=MediaQuery.of(context).size.height;
//         final width=MediaQuery.of(context).size.width;
//         return StatefulBuilder(builder: (context,mystate){
//           return GestureDetector(
//             onTap: (){
//               final currentFocus = FocusScope.of(context);
//               if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
//                 currentFocus.focusedChild!.unfocus();
//                 mystate((){
//
//                 });
//               }
//             },
//             child: Container(
//               height:
//
//               height*0.7
//
//               ,
//               child: ListView(
//
//                 children: [
//                   SizedBox(height: height*0.025,),
//                   Container(
//                     margin: EdgeInsets.only(left: width*0.1),
//                     child: Text("Share QR code",
//                       style: myStyle.inter_252525(height*0.028,FontWeight.w600),
//                     ),
//                   ),
//                   SizedBox(height: height*0.015,),
//                   Container(
//                     margin: EdgeInsets.only(left: width*0.1),
//                     child: Text("Let your others scan your QR code",
//                       style: myStyle.inter_252525(height*0.02,FontWeight.w400),
//                     ),
//                   ),
//                   SizedBox(height: height*0.015,),
//
//                   Container(
//                       margin: EdgeInsets.only(left: width*0.15,right: width*0.15),
//                       child: Image.asset("images/qr.png",height: height*0.35,fit: BoxFit.fill,width: width*1,)),
//                   SizedBox(height: height*0.015,),
//                   Container(
//                     margin: EdgeInsets.only(left: width*0.1),
//                     child: Text("You’ve earned 324 points by booping with 38 people using QR code",
//                       style: myStyle.inter_252525(height*0.02,FontWeight.w400),
//                     ),
//                   ),
//                   SizedBox(height: height*0.025,),
//
//
//                 ],
//               ),
//             ),
//           );
//         });
//       },
//     );
//   }
//   List<String> dogs = [
//     "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_1280.jpg",
//     "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/03/12/18/pug-crufts.jpg?quality=75&width=1200&auto=webp",
//     "https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg",
//     "https://petkeen.com/wp-content/uploads/2022/06/a-labrador-dog-wearing-a-collar_tookapic_Pixabay-760x507.jpg",
//     "https://www.thesprucepets.com/thmb/4gz3D42PNWta_W7xY5-aaas2bl0=/1500x0/filters:no_upscale():strip_icc()/breed_profile_germansheperd_1118000_profile_2608-d7a78e7c1cf049879bec1ec19113ee42.jpg",
//     "https://www.ellevetsciences.com/wp-content/uploads/2022/07/ev-blog-BMD-header_2-1024x683.jpg",
//     "https://www.petplace.com/static/13f543f6b95f2721e69c5837a93e8d2a/5f007/shutterstock_553932688.jpg",
//     "https://www.veterinarians.org/wp-content/uploads/2022/10/The-History-and-Characteristics-of-The-Bernese-Mountain-Dog.jpg",
//     "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_1280.jpg",
//     "https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/03/12/18/pug-crufts.jpg?quality=75&width=1200&auto=webp",
//     "https://i.pinimg.com/originals/01/87/f1/0187f11bc9ba234c59a43f018a3920dd.jpg",
//     "https://petkeen.com/wp-content/uploads/2022/06/a-labrador-dog-wearing-a-collar_tookapic_Pixabay-760x507.jpg",
//     "https://www.thesprucepets.com/thmb/4gz3D42PNWta_W7xY5-aaas2bl0=/1500x0/filters:no_upscale():strip_icc()/breed_profile_germansheperd_1118000_profile_2608-d7a78e7c1cf049879bec1ec19113ee42.jpg",
//     "https://www.ellevetsciences.com/wp-content/uploads/2022/07/ev-blog-BMD-header_2-1024x683.jpg",
//     "https://www.petplace.com/static/13f543f6b95f2721e69c5837a93e8d2a/5f007/shutterstock_553932688.jpg",
//     "https://www.veterinarians.org/wp-content/uploads/2022/10/The-History-and-Characteristics-of-The-Bernese-Mountain-Dog.jpg"
//
//   ];
//   List<Map<String, dynamic>> characterList = [
//     "Playfull",
//     "Stupid",
//     "Another desc?",
//     "Description 12",
//     "Stupid",
//     "Good Dog If you made here, hi!",
//     "Another desc?",
//     "What should I put here",
//     "I don't know X",
//     "Another desc?",
//
//   ].map((character) => {
//     "text": character,
//     "status":false
//   }).toList();
//
//   @override
//   Widget build(BuildContext context) {
//     final height=MediaQuery.of(context).size.height;
//     final width=MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: ListView(
//
//         children: [
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               InkWell(
//                 onTap: (){
//                   Navigator.of(context).pop();
//                 },
//                 child: Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.only(left: width*0.05,top: height*0.025),
//                   child: CircleAvatar(
//                     radius: height*0.027,
//                     backgroundColor: Color(0xffD7D3D0),
//                     child: Container (
//                         margin: EdgeInsets.only(left: width*0.015),
//                         child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,)),
//                   ),
//                 ),
//               ),
//               Container(
//                   margin: EdgeInsets.only(right: width*0.05,top: height*0.025),
//                   child: Row(
//                     children: [
//                       InkWell(
//                         onTap: (){
//                           _qr_showBottomSheet(context);
//                         },
//                         child: Container(
//                           alignment: Alignment.centerLeft,
//                           margin: EdgeInsets.only(left: width*0.025,top: height*0.025),
//                           child: CircleAvatar(
//                             radius: height*0.027,
//                             backgroundColor: Color(0xffD7D3D0),
//                             child: CircleAvatar(
//                               radius: height*0.017,
//                               backgroundColor: Color(0xffD7D3D0),
//
//                               backgroundImage: AssetImage("images/qr-code-02.png"),
//                               // child: Container (
//                               //     margin: EdgeInsets.only(left: width*0.015),
//                               //     child: Image.asset("images/settings-01.png",
//                               //       height: height*0.027,
//                               //     )
//                               // ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         alignment: Alignment.centerLeft,
//                         margin: EdgeInsets.only(left: width*0.025,top: height*0.025),
//                         child: CircleAvatar(
//                           radius: height*0.027,
//                           backgroundColor: Color(0xffD7D3D0),
//                           child: CircleAvatar(
//                             radius: height*0.016,
//                             backgroundColor: Color(0xffD7D3D0),
//
//                             backgroundImage: AssetImage("images/notification.png"),
//                             // child: Container (
//                             //     margin: EdgeInsets.only(left: width*0.015),
//                             //     child: Image.asset("images/settings-01.png",
//                             //       height: height*0.027,
//                             //     )
//                             // ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         alignment: Alignment.centerLeft,
//                         margin: EdgeInsets.only(left: width*0.025,top: height*0.025),
//                         child: CircleAvatar(
//                           radius: height*0.027,
//                           backgroundColor: Color(0xffD7D3D0),
//                           child: CircleAvatar(
//                             radius: height*0.017,
//                             backgroundColor: Color(0xffD7D3D0),
//
//                             backgroundImage: AssetImage("images/settings-01.png"),
//                             // child: Container (
//                             //     margin: EdgeInsets.only(left: width*0.015),
//                             //     child: Image.asset("images/settings-01.png",
//                             //       height: height*0.027,
//                             //     )
//                             // ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//               ),
//
//             ],
//           ),
//           SizedBox(height: height*0.025,),
//           Container(
//             margin: EdgeInsets.only(left: width*0.05),
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   radius: 30,
//                   backgroundImage: NetworkImage("https://alpha.aeon.co/images/acd6897d-9849-4188-92c6-79dabcbcd518/header_essay-final-gettyimages-685469924.jpg"),
//                 ),
//
//                 SizedBox(width: width*0.025,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Text("Boubeeia",
//                           style: myStyle.inter_51525C(height*0.028, FontWeight.w800),
//                         ),
//                         SizedBox(width: width*0.025,),
//                         Image.asset("images/check-verified-02.png"),
//                         SizedBox(width: width*0.015,),
//                         Image.asset("images/check-verified-02 (1).png"),
//                       ],
//                     ),
//                     Text("@@boubeeia_Official",
//                       style: myStyle.inter_79716B(height*0.018, FontWeight.w400),
//                     ),
//                   ],
//                 )
//
//               ],
//             ),
//           ),
//           SizedBox(height: height*0.015,),
//
//           Container(
//             margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
//             child: Text("Meet Boubee, the most wholesome and cute dog of the country, Don’t hesitate to say hi! maybe hangout too?",
//               style: myStyle.inter_79716B(height*0.02, FontWeight.w400),
//             ),
//           ),
//           SizedBox(height: height*0.015,),
//           Container(
//             margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
//             height: height*0.06,
//             width: width*1,
//             decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
//               border: Border.all(color: Color(0xff51525C))
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text("Send message",
//                 style: myStyle.inter_51525C(height*0.024, FontWeight.w500),
//                 ),
//                 SizedBox(width: width*0.015,),
//                 Image.asset("images/send.png",height: height*0.025,)
//               ],
//             ),
//           ),
//           SizedBox(height: height*0.015,),
//           Container(
//             height: height*0.1,
//             width: width*1,
//             margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
//             child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: characterList.length,
//                 itemBuilder: (context,index){
//                   return Container(
//                     margin: EdgeInsets.only(left: 10),
//                     child: Chip(
//                         backgroundColor:
//                         characterList[index]['status']?
//                         mycolor:Colors.white,
//                         shape: RoundedRectangleBorder(
//                             side: BorderSide(
//                               color:
//                               characterList[index]['status']?
//                               mycolor:
//                               Color(0xff49454F)
//                               ,
//                             ),
//                             borderRadius: BorderRadius.circular(20)
//                         ),
//                         label: InkWell(
//                           onTap: (){
//                             setState(() {
//
//                               characterList[index]['status']=!characterList[index]['status'];
//                             });
//                           },
//                           child: Text(characterList[index]['text'].toString(),
//                             style:
//
//                             characterList[index]['status']?
//                             myStyle.inter_white(height*0.016, FontWeight.w600)
//                                 :
//                             myStyle.inter_424242(height*0.016, FontWeight.w600),
//                           ),
//                         )),
//                   );
//                 }),
//           ),
//           SizedBox(height: height*0.015,),
//           Container(
//             margin: EdgeInsets.only(left: width*0.1),
//             child: Text("Groups (13)",
//               style: myStyle.inter_424242(height*0.028,FontWeight.w500),
//             ),
//           ),
//
//           SizedBox(height: height*0.025,),
//           Container(
//             height: height*0.28,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Container(
//                   width: width*0.6,
//                   margin: EdgeInsets.only(left: width*0.05),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: mycolor.withOpacity(0.05),
//                       border: Border.all(color: mycolor)
//                   ),
//                   padding: EdgeInsets.all(10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 25,
//                             backgroundImage: NetworkImage("https://alpha.aeon.co/images/acd6897d-9849-4188-92c6-79dabcbcd518/header_essay-final-gettyimages-685469924.jpg"),
//                           ),
//                           SizedBox(width: width*0.025,),
//
//                           Container(
//                             width: width*0.35,
//                             child: Text("French cool dogs owners",
//                               style: myStyle.inter_424242(height*0.02, FontWeight.w600),
//                             ),
//                           )
//
//                         ],
//                       ),
//                       SizedBox(height: height*0.015,),
//                       Container(
//
//                         child: Text("You have a cute doggo, and you’re based in France? Join our group for..." ,style: myStyle.inter_79716B(height*0.02, FontWeight.w400),
//                         ),
//                       ),
//                       SizedBox(height: height*0.025,),
//                       Image.asset("images/avatar.png",height: height*0.05,)
//
//
//                     ],
//                   ),
//                 ),
//
//                 Container(
//                   width: width*0.6,
//                   margin: EdgeInsets.only(left: width*0.05),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color:  Color(0xffFAFAFA),
//                       border: Border.all(color:Color(0xffE4E4E7),width: 1)
//                   ),
//                   padding: EdgeInsets.all(10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 25,
//                             backgroundImage: NetworkImage("https://alpha.aeon.co/images/acd6897d-9849-4188-92c6-79dabcbcd518/header_essay-final-gettyimages-685469924.jpg"),
//                           ),
//
//                           SizedBox(width: width*0.025,),
//
//                           Container(
//                             width: width*0.35,
//                             child: Text("Green color dog clu - Morocco",
//                               style: myStyle.inter_424242(height*0.02, FontWeight.w600),
//                             ),
//                           )
//
//                         ],
//                       ),
//                       SizedBox(height: height*0.015,),
//                       Container(
//
//                         child: Text("Join the biggest group in Morocco of dogs, meet new people" ,style: myStyle.inter_79716B(height*0.02, FontWeight.w400),
//                         ),
//                       ),
//                       SizedBox(height: height*0.025,),
//                       Image.asset("images/avatar.png",height: height*0.05,)
//
//
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: height*0.025,),
//           Container(
//             margin: EdgeInsets.only(left: width*0.1),
//             child: Row(
//
//               children: [
//                 Text("Profile",
//                   style: myStyle.inter_424242(height*0.028,FontWeight.w600),
//                 ),
//                 SizedBox(width: width*0.15,),
//                 Text("Mon clan",
//                   style: myStyle.inter_424242(height*0.028,FontWeight.w600),
//                 ),
//
//               ],
//             ),
//           ),
//           SizedBox(height: height*0.015,),
//           Container(
//             margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
//             child: Divider(
//               color: Color(0xffE5E5E5),
//             ),
//           ),
//           SizedBox(height: height*0.015,),
//           Container(
//             margin: EdgeInsets.only(left: width*0.025),
//             child: Wrap(
//                 children: List.generate(dogs.length, (index) => Container(
//                   margin: EdgeInsets.only(left: width*0.025,bottom: height*0.015),
//                   width: width*0.29,
//                   height: height*0.15,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(image: NetworkImage(dogs[index]),
//                           fit: BoxFit.cover
//                       )
//                   ),
//                 ))),
//           )
//
//
//
//         ],
//       ),
//     );
//   }
// }
