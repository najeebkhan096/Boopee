
import 'package:boopee/widgets/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostItem extends StatefulWidget {
  final String ? profileImg;
  final String ? name;
  final String ? postImg;
  final String ? caption;
  bool ? isLoved;
  final String ?likedBy;
  final String ? viewCount;
  final String ? dayAgo;
  String ? likescount;
  String ?votingcount;
  final String ? docid;
  final String ?postownerid;


  PostItem({this.profileImg, this.name, this.postImg, this.isLoved,
    this.likedBy, this.viewCount, this.dayAgo, this.caption,this.likescount,

    this.postownerid,

    this.docid,
    this.votingcount

  }) ;

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {


  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(

            padding: const EdgeInsets.only(left: 10,right: 0,top: 15,bottom: 0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                InkWell(
                  onTap: ()async{

                 },
                  child:

                  Container(

                    width: width*0.96,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                              width: 40,
                              height:40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: NetworkImage("https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("najeeb",style:myStyle.inter_79716B(height*0.018, FontWeight.w500)),
                                Text("najeeb@gmail.com",style:myStyle.inter_79716B(height*0.014, FontWeight.w400)),
                              ],
                            ),

                          ],),
                        IconButton(onPressed: ()async{

                        }, icon: Icon(Icons.more_horiz,color: Color(0xff79716B),))

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),


          SizedBox(height: height*0.01,),
          Container(
            height: (widget.postImg=='null' || widget.postImg!.isEmpty)?height*(
                widget.caption!.length>74?
                (widget.caption!.length/74).toInt():1

            )*0.05:height*0.4,
            // decoration: BoxDecoration(
            //   image: DecorationImage(image: NetworkImage(postImg!),fit: BoxFit.cover)
            // ),
            child:
            (widget.postImg=='null' || widget.postImg!.isEmpty)?
            SingleChildScrollView(
              child  : Container(
                  margin: EdgeInsets.only(left: width*0.025),
                  alignment: Alignment.centerLeft,
                  child: Text(widget.caption.toString().toString(),style: TextStyle(color: Colors.white),)),
            )
                :

            CachedNetworkImage(
              imageUrl: widget.postImg!,
              width: width*1,
              placeholder: (context, url) => Container(
                  width: width*0.1,
                  height: height*0.1,
                  child: SpinKitCircle(
                    color: Colors.white,
                  )
              ),
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[

                    widget.isLoved! ?
                    Image.asset("images/fav.png",width: 27,color: Colors.red,) :
                    Image.asset("images/fav.png",width: 27,color:  Color(0xff525252),),


                    SizedBox(width: 20,),

                    InkWell(
                        onTap: (){


                        },

                        child: SvgPicture.asset("images/svg/comment.svg",width: 27,color:  Color(0xff525252),)),


                    SizedBox(width: 20,),

                    InkWell(
                        onTap: (){


                        },

                        child: Image.asset("images/share (3).png",width: 27,color: Color(0xff525252),)),



                  ],
                ),

              ],
            ),
          ),

          SizedBox(height: 12,),
          Container(
              margin:EdgeInsets.only(left: width*0.05,right:width*0.05),
              child: Text("This ma dog Jimmy, show some love guys!",style:myStyle.inter_79716B(height*0.014, FontWeight.w400))),


          SizedBox(height: 12,),
          Container(
              margin:EdgeInsets.only(left: width*0.05,right:width*0.05),
              child: Text("Posted 3 days ago",style:myStyle.inter_A0A0AB(height*0.0125, FontWeight.w400))),
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
                    height: height*0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xffF4F4F5)
                    ),
                    padding: EdgeInsets.only(left: width*0.025),
                    alignment: Alignment.center,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          hintText: 'Write a comment..',
                          border: InputBorder.none,
                          hintStyle: myStyle.inter_79716B(height*0.016, FontWeight.w400  )
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