import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_2/profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: BackButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Column(
                          children: [
                            Text(
                               'Register Account',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Muli',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                 ),
                               ),
                            Text(
                                'Complete your details or continue with social media',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Muli',
                                ),
                                textAlign: TextAlign.center,
                               ),
                          ]
                        ),
                      ),

                      SizedBox(height: 60),

                      TextField(
                        decoration: InputDecoration(
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
                      Divider(height: 30, color: Colors.transparent),
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
                           suffixIcon: SvgPicture.asset('assets/icons/Lock.svg', fit: BoxFit.scaleDown),
                         ),
                      ),
                      Divider(height: 30, color: Colors.transparent),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                          label: Text('Confirm Password'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.fromLTRB(35, 18, 0, 18),
                          hintText: 'Re-enter your password',
                          hintStyle: TextStyle(fontFamily: 'Muli', fontSize: 18),
                          suffixIcon: SvgPicture.asset('assets/icons/Lock.svg', fit: BoxFit.scaleDown),
                        ),
                      ),

                      Divider(height: 40, color: Colors.transparent),

                      MaterialButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                          MaterialPageRoute(builder: (context) => CompleteProfile())
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.deepOrangeAccent,
                        padding: EdgeInsets.all(10),
                        textColor: Colors.white,
                        minWidth: 350,
                        height: 50,
                        child: Text('Continue',
                        style: TextStyle(fontSize: 16),
                        ),
                      ),

                      Divider(height: 50, color: Colors.transparent),

                      SizedBox(
                        width: 225,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              onPressed: (){},
                              shape: CircleBorder(),
                              color: Colors.white70,
                              elevation: 1,
                              child:
                                SvgPicture.asset('assets/icons/google-icon.svg'),
                            ),
                            MaterialButton(
                              onPressed: (){},
                              shape: CircleBorder(),
                              color: Colors.white70,
                              elevation: 1,
                              child:
                                SvgPicture.asset('assets/icons/facebook-2.svg'),
                            ),
                            MaterialButton(
                              onPressed: (){},
                              shape: CircleBorder(),
                              color: Colors.white70,
                              elevation: 1,
                              child:
                                SvgPicture.asset( 'assets/icons/twitter.svg'),
                            ),
                          ],
                        ),
                      ),
                    ]
                  ),
                )
              ),

              Text(
                'By continuing you confirm that you agree',
                style: TextStyle(fontFamily: 'Muli'),
              )
            ]
          ),
        ),
    );
  }
}

