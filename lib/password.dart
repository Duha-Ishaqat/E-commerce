import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_2/register.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                )
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 330,
                      child: Column(
                        children: [
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                             fontFamily:'Muli',
                             fontSize: 30,
                             fontWeight: FontWeight.bold)
                          ),
                          Text(
                            'Please enter you email and we will send you a link to return your account',
                            style: TextStyle(
                              fontFamily: 'Muli',
                              fontSize: 16,
                              color: Colors.grey),
                            textAlign: TextAlign.center,
                           ),
                        ],
                      ),
                    ),
                    SizedBox(height: 70),
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
                    SizedBox(height: 100),
                    MaterialButton(
                      onPressed: (){},
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                        ),
                      ],
                    )
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
