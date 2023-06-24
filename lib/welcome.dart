import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_2/password.dart';
import 'package:project_2/register.dart';

import 'first.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          body:
          Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: BackButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  )
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 330,
                        child: Column(
                          children: [
                            Text(
                                'Welcome Back',
                                style: TextStyle(
                                    fontFamily:'Muli',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)
                            ),
                            Text(
                              'Sign in with your email and password or continue with social media',
                              style: TextStyle(
                                fontFamily: 'Muli',
                                fontSize: 16,
                                color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                          label: Text('Email'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.fromLTRB(35, 18, 0, 18),
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(fontFamily: 'Muli', fontSize: 18),
                          suffixIcon: SvgPicture.asset('assets/icons/Mail.svg', fit: BoxFit.scaleDown),
                        ),
                      ),
                      Divider(height: 20, color: Colors.transparent),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                            label: Text('Password'),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.fromLTRB(35, 18, 0, 18),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(fontFamily: 'Muli', fontSize: 18),
                            suffixIcon: SvgPicture.asset('assets/icons/Lock.svg', fit: BoxFit.scaleDown)
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 45,
                            child: Checkbox(
                              value: false,
                              onChanged: (newValue) {
                                 setState((){});
                              },
                            ),
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(fontFamily: 'Muli', fontSize: 14),
                          ),
                          SizedBox(width: 75),
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ForgotPassword()),
                              );
                            },
                            child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontFamily: 'Muli',
                                  fontSize: 14,
                                  decoration: TextDecoration.underline
                                )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                            MaterialPageRoute(builder: (context) => FirstScreen()),
                          );
                        },
                        color: Colors.deepOrangeAccent,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        minWidth: 400,
                        height: 45,
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontFamily: 'Muli',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        width: 225,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              onPressed: (){},
                              color: Colors.white70,
                              elevation: 1,
                              shape: CircleBorder(),
                              child: SvgPicture.asset('assets/icons/google-icon.svg'),
                            ),
                            MaterialButton(
                              onPressed: (){},
                              color: Colors.white70,
                              elevation: 1,
                              shape: CircleBorder(),
                              child: SvgPicture.asset('assets/icons/facebook-2.svg'),
                            ),
                            MaterialButton(
                              onPressed: (){},
                              color: Colors.white70,
                              elevation: 1,
                              shape: CircleBorder(),
                              child: SvgPicture.asset('assets/icons/twitter.svg'),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontFamily: 'Muli',
                              fontSize: 17,
                              color: Colors.black
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const RegisterScreen()),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontFamily: 'Muli',
                                  fontSize: 17,
                                  color: Colors.deepOrange),
                            )
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
