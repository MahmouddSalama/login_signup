import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/screens/regester_screen.dart';
import 'package:login_signup/widget/my_button.dart';
import 'package:login_signup/widget/my_filed.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              Container(
                width: size.width * .6,
                height: size.height * .25,
                child: Image.asset(
                  "assets/images/welcome2.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 7),
              buildText("Log in to your existant account of Q Allure"),
              SizedBox(
                height: size.height * .04,
              ),
              MyField(
                size: size,
                type: 0,
                hText: 'email',
                iconData: Icons.person_outline_sharp,
              ),
              MyField(
                size: size,
                type: 0,
                hText: 'password',
                iconData: Icons.lock_open_rounded,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              MyButton(size: size,text: 'LOG IN',),
              SizedBox(
                height: 10,
              ),
              buildText("Or connect using"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyButton2(
                    size: size,
                    color: Color(0xff375C8F),
                    text: "Facebook",
                      iconData: Icons.facebook_sharp,
                  ),
                  MyButton2(
                    size: size,
                    color: Color(0xffF34336),
                    text: "Google",
                    iconData: Icons.android_outlined,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don`t have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>RegesterScreen()));
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  Text buildText(text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color(0xffC3C3C3),
      ),
    );
  }
}
