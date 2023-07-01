import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_2/first.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),

          body: Container(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                              child: BackButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (
                                        context) => const FirstScreen()),
                                  );
                                },
                              )
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('4.8 '),
                                Icon(Icons.star, color: Colors.amber, size: 20,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 200,
                            height: 200,
                            child: Image.asset('assets/images/ps4_console_white_1.png', fit: BoxFit.fitWidth,)
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.deepOrange)
                                  ),
                                child: InkWell(
                                  onTap: (){},
                                  child: Image.asset('assets/images/ps4_console_white_1.png'),
                                ),
                              ),
                              Container(
                                  width: 60,
                                  height: 60,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: (){},
                                      child: Image.asset('assets/images/ps4_console_white_2.png')
                                  ),
                              ),
                              Container(
                                  width: 60,
                                  height: 60,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                      child: Image.asset('assets/images/ps4_console_white_3.png')
                                  ),
                              ),
                              Container(
                                  width: 60,
                                  height: 60,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                      child: Image.asset('assets/images/ps4_console_white_4.png')
                                  ),
                              ),
                            ],
                          ),
                        Container(
                          width: double.infinity,
                          //height: 250,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)
                              ),
                              color: Colors.white
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                                child: Text('Wireless Controller for PS4', style: TextStyle(fontFamily: 'Muli',fontWeight: FontWeight.bold, fontSize: 22),),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFE6E6),
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  child: SvgPicture.asset('assets/icons/Heart Icon_2.svg', color: Colors.red,),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 50, 0),
                                  child: Text(
                                    'Wireless Controller for PS4 gives you what you want in your gaming from over precision control your game to sharing ...',
                                    style: TextStyle(fontFamily: 'Muli',fontSize: 16)
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Text('See More Details >', style: TextStyle(color: Colors.deepOrange,fontSize: 16)),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)
                                  ),
                                  color: Colors.grey.shade200,
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: Colors.transparent)
                                            ),
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: Colors.transparent)
                                            ),
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.purple,
                                                  shape: BoxShape.circle
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: Colors.transparent)
                                            ),
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFBDA87E),
                                                  shape: BoxShape.circle
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: Colors.deepOrange)
                                            ),
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle
                                            ),
                                            child: IconButton(
                                              onPressed: (){},
                                              icon: Icon(Icons.remove, size: 20),
                                              color: Colors.deepOrange,
                                            ),
                                          ),
                                          SizedBox(width: 15),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle
                                            ),
                                            child: IconButton(
                                              onPressed: (){},
                                              icon: Icon(Icons.add, size: 20),
                                              color: Colors.deepOrange,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.fromLTRB(60, 30, 60, 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                                        color: Colors.white,
                                      ),
                                      child: MaterialButton(
                                        padding: EdgeInsets.all(10),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        onPressed: () {},
                                        color: Colors.deepOrangeAccent,
                                        textColor: Colors.white,
                                        child: Text('Add To Cart', style: TextStyle(fontFamily: 'Muli', color: Colors.white, fontSize: 16), textAlign: TextAlign.center,),

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ]
            ),
          ),
        )
    );
  }
}
