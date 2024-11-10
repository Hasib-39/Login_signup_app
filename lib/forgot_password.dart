import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                  "Password Recovery",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter'
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Enter your mail",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter'
              ),
            ),
            Expanded(
                child: Form(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10),
                    child: ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70, width: 2),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextFormField(
                            validator: (value){
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Email';
                              }
                              return null;
                            },
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter'
                            ),
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Inter'
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white70,
                                size: 30,
                              ),
                              border: InputBorder.none
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            width: 140,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Send Email",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Inter'
                              ),
                            ),
                            SizedBox(width: 5,),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const Signup())
                                );
                              },
                              child: Text(
                                "Create",
                                style: TextStyle(
                                  color: Color.fromARGB(225, 184, 166, 6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter'
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
