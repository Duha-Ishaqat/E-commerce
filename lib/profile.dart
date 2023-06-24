import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
                  child: BackButton()
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
                        width: 270,
                        child: Column(
                          children: [
                            Text(
                                'Complete Profile',
                                style: TextStyle(fontFamily:'Muli', fontSize: 30, fontWeight: FontWeight.bold)
                            ),
                            Text(
                              'Complete your details or continue with social media',
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
                        height: 40,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                          label: Text('First Name'),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.fromLTRB(35, 18, 0, 18),
                          hintText: 'Enter your first name',
                          hintStyle: TextStyle(fontFamily: 'Muli', fontSize: 18),
                          suffixIcon: SvgPicture.asset('assets/icons/User.svg', fit: BoxFit.scaleDown)
                        ),
                      ),
                      Divider(height: 25, color: Colors.transparent),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                            label: Text('Last Name'),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.fromLTRB(35, 18, 0, 18),
                            hintText: 'Enter your last name',
                            hintStyle: TextStyle(fontFamily: 'Muli', fontSize: 18),
                            suffixIcon: SvgPicture.asset('assets/icons/User.svg', fit: BoxFit.scaleDown)
                        ),
                      ),
                      Divider(height: 25, color: Colors.transparent),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                            label: Text('Phone Number'),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.fromLTRB(35, 18, 0, 18),
                            hintText: 'Enter your phone number',
                            hintStyle: TextStyle(fontFamily: 'Muli', fontSize: 18),
                            suffixIcon: SvgPicture.asset('assets/icons/Phone.svg', fit: BoxFit.scaleDown)
                        ),
                      ),
                      Divider(height: 25, color: Colors.transparent),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                            label: Text('Address'),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            contentPadding: EdgeInsets.fromLTRB(35, 18, 0, 18),
                            hintText: 'Enter your phone address',
                            hintStyle: TextStyle(fontFamily: 'Muli', fontSize: 18),
                            suffixIcon: SvgPicture.asset('assets/icons/Location point.svg', fit: BoxFit.scaleDown)
                        ),
                      ),

                      SizedBox(height: 35),

                      MaterialButton(
                        onPressed: (){},
                        padding: EdgeInsets.all(10),
                        color: Colors.deepOrangeAccent,
                        textColor: Colors.white,
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: Text(
                  "By continuing you confirm that you agree with our Terms and Conditions",
                  style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 12,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        )
    );
  }
}
