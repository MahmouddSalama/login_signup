import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final Size size;
  final int type;
  final String hText;
  final IconData iconData;

  const MyField({required this.size, required this.type,required this.hText,required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Container(
        width: size.width - 50,
        height: 70,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            onChanged: (v) {},
            style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            decoration: InputDecoration(
                prefixIcon: Icon(
                  iconData,
                  size: 30,
                ),
                hintText: hText,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blueAccent)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical:20)),
          ),
        ),
      ),
    );
  }
}
