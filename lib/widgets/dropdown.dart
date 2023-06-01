import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final String ? labelText;
  final List<String> ? items;
  final String ? value;
  final Function(String) ? onChanged;

  CustomDropdownButton({this.labelText, this.items, this.value, this.onChanged});

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String ? _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value ?? widget.items!.first;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return

      Card(
        elevation: 1.5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        margin: EdgeInsets.only(left: width*0.05,right: width*0.05),
        child: Container(
            height: height*0.07,
            width: width*1,

            padding: EdgeInsets.only(left: width*0.025,right: width*0.025),

            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _value,
                items: widget.items!.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String ? newValue) {
                  setState(() {
                    _value = newValue;
                  });
                  if (widget.onChanged != null) {
                    widget.onChanged!(newValue!);
                  }
                },
                isExpanded: true,
                icon: Icon(Icons.keyboard_arrow_down_sharp),
                hint: Text(widget.labelText!),
              ),
            )
        ),
      );

  }
}
