import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                child: Form(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                        decoration: BoxDecoration(
                          color: Color(0xFFedf0f8),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextFormField(
                          validator: (value){
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name",
                            hintStyle: TextStyle(
                              color: Color(0xffb2b7bf),
                              fontSize: 18
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                        decoration: BoxDecoration(
                            color: Color(0xFFedf0f8),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextFormField(
                          validator: (value){
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  color: Color(0xffb2b7bf),
                                  fontSize: 18
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 30),
                        decoration: BoxDecoration(
                            color: Color(0xFFedf0f8),
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextFormField(
                          validator: (value){
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Color(0xffb2b7bf),
                                  fontSize: 18
                              )
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
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35,),
              Text(
                "or Login with",
                style: TextStyle(
                  color: Color(0xff073727),
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                      "images/google.png",
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 30,),
                  Image.asset(
                    "images/apple.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Color(0xff8c8e98),
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login())
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xff073727),
                        fontSize: 20,
                        fontWeight: FontWeight.w500
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
