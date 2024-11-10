import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/nature.png",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.38,
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                child: Form(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                          decoration: BoxDecoration(
                            color: Color(0xffedf0f8),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextFormField(
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Enter Email';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Color(0xffb2b7bf),
                                fontSize: 18,
                                fontFamily: 'Inter',

                              )
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                          decoration: BoxDecoration(
                              color: Color(0xffedf0f8),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextFormField(
                            validator: (value){
                              if(value == null || value.isEmpty){
                                return 'Please Enter Password';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Color(0xffb2b7bf),
                                    fontSize: 18,
                                  fontFamily: 'Inter'
                                ),
                            ),
                            obscureText: true,
                          ),
                        ),
                        SizedBox(height: 30,),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
                            decoration: BoxDecoration(
                              color: Color(0xff073727),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter'
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  )
                ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){

                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Color(0xFF8c8e98),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter'
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Text(
                "or Login with",
                style: TextStyle(
                  color: Color(0xff073727),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter'
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset(
                      "images/google.png",
                      height: 45,
                      width: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Image.asset(
                      "images/apple.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color(0xff8c8e98),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter'
                    ),
                  ),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup())
                      );
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        color: Color(0xff073727),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter'
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
