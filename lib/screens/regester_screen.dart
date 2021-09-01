import 'package:flutter/material.dart';
import 'package:login_signup/widget/my_button.dart';
import 'package:login_signup/widget/my_filed.dart';

class RegesterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF8F8F8),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Let`s Get Started:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Create an account to Q Alutur to get all features',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xffC3C3C3),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyField(
                size: size,
                type: 0,
                hText: 'name',
                iconData: Icons.person_outline_sharp,
              ),
              MyField(
                size: size,
                type: 0,
                hText: 'email',
                iconData: Icons.email_outlined,
              ),
              MyField(
                size: size,
                type: 0,
                hText: 'phone',
                iconData: Icons.phone_android,
              ),
              MyField(
                size: size,
                type: 0,
                hText: 'password',
                iconData: Icons.lock_outline,
              ),
              MyField(
                size: size,
                type: 0,
                hText: 'confirm password',
                iconData: Icons.lock_outline,
              ),
              MyButton(size:size ,text: "CREATE",),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                    },
                    child: Text(
                      " Login here",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
