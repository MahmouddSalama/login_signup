import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Size size;
  final String text;

  const MyButton({required this.size,required this.text}) ;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Container(
        width: size.width*.5,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff0147A6),
              offset: Offset(1,0),
            ),
          ],
          color: Color(0xff0147A6),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(text,style: TextStyle(
            fontSize: 18,
            color: Colors.white
        ),),
      ),
    );
  }
}

class MyButton2 extends StatelessWidget {
  final Size size;
  final Color color;
  final String text;
  final IconData iconData;
  const MyButton2({required this.size,required this.color,required this.text,required this.iconData}) ;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: size.width * .35,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,color: Colors.white,),
            SizedBox(width: 5,),
            Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

