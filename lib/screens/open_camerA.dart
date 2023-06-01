import 'package:boopee/main.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/nav.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
class OpenCameraScreen extends StatefulWidget {
  const OpenCameraScreen({Key? key}) : super(key: key);

  @override
  State<OpenCameraScreen> createState() => _OpenCameraScreenState();
}

class _OpenCameraScreenState extends State<OpenCameraScreen> {
  List<Map> data=[
    {
      'text':'Cute',
      'status':true
    },
    {
      'text':'Funny',
      'status':false
    },
    {
      'text':'Lovely',
      'status':false
    },
  ];
  final _focusNode = FocusNode();
  // create a function to dismiss the keyboard

  bool focus=true;
bool _ss=false;
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

              height*0.8
              ,
              child: ListView(

                children: [
                  SizedBox(height: height*0.0185,),
                  Container(
                    margin: EdgeInsets.only(left: width*0.1),
                    child: Text("Share publication in",
                      style: myStyle.inter_252525(height*0.0184,FontWeight.w600),
                    ),
                  ),

                  SizedBox(height: height*0.025,),
                  InkWell(
                    onTap: (){
                      FocusScope.of(context).requestFocus(_focusNode);
                    },
                    child: Container(
                      height: height*0.25,
                      width: width*1,
                      decoration: BoxDecoration(
                        color: Colors.white,

                      ),
                      padding: EdgeInsets.only(left: width*0.025,right: width*0.025),
                      margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
                      child: TextField(
                        maxLines: 20,
                        minLines: 10,
                        autofocus: focus,
                        focusNode: _focusNode,
                        style: myStyle.inter_1C1B1F(height*0.016, FontWeight.w400),
                        decoration: InputDecoration(
                          hintText:"Description",
                          isDense: true,
                          alignLabelWithHint: true,
                          hintStyle: myStyle.inter_A9A29D(height*0.016, FontWeight.w400),
                          labelStyle: myStyle.inter_49454F(height*0.016, FontWeight.w400),
                          focusedBorder: OutlineInputBorder(),
                          border: InputBorder.none,
                          labelText: "What you post is going to be about?",

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.025,),
                  Container(
                    margin: EdgeInsets.only(
                        left: width*0.075,
                        right: width*0.075
                    ),
                    child: Row(
                      children: List.generate(data.length, (index) => InkWell(
                        onTap: (){
                          mystate((){
data[index]['status']=!data[index]['status'];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: data[index]['status']?mycolor.withOpacity(0.2):Colors.white
                          ),
                          child: Row(

                            children: [
                              Text(data[index]['text'],
                              style: myStyle.inter_51525C(height*0.017, FontWeight.w500),
                              ),
                              SizedBox(width: width*0.015,),
                              data[index]['status']?
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: mycolor,
                                child: Icon(Icons.done,color: Colors.white,size: 14,),
                              ):  CircleAvatar(
                                radius: 8,
                                backgroundColor: Color(0xffD1D1D6),
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.white,
                                )
                              )

                            ],
                          ),
                        ),
                      ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.025,),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.only(
                      left: width*0.075,
                      right: width*0.075
                    ),
                    child: Container(
                      width: width*1,
                      height: height*0.06,
                      padding: EdgeInsets.only(left: width*0.05),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("tagger mon @clan",
                          style: myStyle.inter_51525C(height*0.018, FontWeight.w500),
                          )
               ,
                          Switch(
                              activeColor: mycolor,
                              activeTrackColor: mycolor.withOpacity(0.5),
                              value: _ss, onChanged: (val){
                            mystate(() {
                              _ss=val;
                            });
                          })
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.025,),
                  Container(
                    width: width*1,
                    child: BlueButton(text: "Publish photo ->", onpress: (){

                    }),
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
  late CameraController controller;

  @override
  void initState() {
  super.initState();
  controller = CameraController(cameras[0], ResolutionPreset.medium);
  controller.initialize().then((_) {
  if (!mounted) {
  return;
  }
  setState(() {});
  });
  }

  @override
  void dispose() {
  controller.dispose();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  if (!controller.value.isInitialized) {
  return Container();
  }
  return Scaffold(
  bottomNavigationBar: MyHomeNavBar(),
    body: Container(
      height: MediaQuery.of(context).size.height*1,
      child: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height*1,
              child: CameraPreviewWidget(controller: controller)),

          Positioned(
            bottom: 20,
            width: MediaQuery.of(context).size.width*1,
            child: InkWell(
              onTap: (){
                _name_showBottomSheet(context);
              },
              child: Container(
                height: MediaQuery.of(context).size.height*0.08,
                 width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3
                  ),
                  color: Colors.transparent
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            width: MediaQuery.of(context).size.width*1,
            child: Container(
              height: MediaQuery.of(context).size.height*0.08,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(217, 217, 217, 0.3)
              ),
            child: Center(child: Image.asset("images/flash.png",height:
            MediaQuery.of(context).size.height*0.035,)),
            ),
          ),
        ],
      )),
  );
  }


}
class CameraPreviewWidget extends StatelessWidget {
  final CameraController controller;

  const CameraPreviewWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: CameraPreview(controller),
    );
  }
}
