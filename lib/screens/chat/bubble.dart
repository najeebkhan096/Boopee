
import 'package:boopee/screens/chat/chat_screen.dart';
import 'package:boopee/screens/chat/chatmessage.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChatBubble extends StatefulWidget{
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      widget.chatMessage.type == MessageType.Receiver?
      MainAxisAlignment.start:MainAxisAlignment.end,
      children: [
        if(      widget.chatMessage.type == MessageType.Receiver)
        Container(
          margin: EdgeInsets.only(left: 10),
          child: CircleAvatar(radius: 20,
            backgroundImage: NetworkImage('https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x'),
          ),
        ),

        Container(
          padding: EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
          child: Align(
            alignment: (widget.chatMessage.type == MessageType.Receiver?Alignment.topLeft:Alignment.topRight),
            child:

            Container(
              decoration:

              widget.chatMessage.type == MessageType.Receiver?
              BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color: mycolor
              ):
              BoxDecoration(borderRadius:
              BorderRadius.circular(10),
                  color:
                  Color(0xffEDEDED)
              ),
              padding: EdgeInsets.all(16),
              child: Text(widget.chatMessage.message,
                style:
                widget.chatMessage.type == MessageType.Receiver?
                myStyle.inter_white(MediaQuery.of(context).size.height*0.018, FontWeight.w500):
                myStyle.inter_252525(MediaQuery.of(context).size.height*0.018, FontWeight.w500)
                ,
              ),
            ),
          ),
        ),
        if(      widget.chatMessage.type == MessageType.Sender)
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(radius: 20,
              backgroundImage: NetworkImage('https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x'),
            ),
          ),
      ],
    );
  }
}



//Background
@immutable
class BubbleBackground extends StatelessWidget {
  const BubbleBackground({
    Key? key,
    required this.colors,
    this.child,
  }) : super(key: key);


  final List<Color> colors;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BubblePainter(
        colors: colors,
        scrollable: Scrollable.of(context),
        bubbleContext: context,
      ),
      child: child,
    );
  }
}

class BubblePainter extends CustomPainter {
  BubblePainter({
    required ScrollableState scrollable,
    required BuildContext bubbleContext,
    required List<Color> colors,
  })   : _scrollable = scrollable,
        _bubbleContext = bubbleContext,
        _colors = colors;

  final ScrollableState _scrollable;
  final BuildContext _bubbleContext;
  final List<Color> _colors;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO:
  }

  @override
  bool shouldRepaint(BubblePainter oldDelegate) {
    return oldDelegate._scrollable != _scrollable ||
        oldDelegate._bubbleContext != _bubbleContext ||
        oldDelegate._colors != _colors;
  }

}