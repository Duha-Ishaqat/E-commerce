import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          //resizeToAvoidBottomInset: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
          ),

          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  //margin: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search products',
                            hintStyle: TextStyle(fontFamily: 'Muli', fontSize: 15),
                            prefixIcon: SvgPicture.asset('assets/icons/Search Icon.svg', fit: BoxFit.scaleDown)
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade100
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset('assets/icons/Cart Icon.svg')
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade100,
                        ),
                        child: IconButton(
                          onPressed: (){},
                          icon: SvgPicture.asset('assets/icons/Bell.svg'),
                        ),
                      )
                    ],
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          //margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF5f3d8a),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'A Summer Surprise',
                                style: TextStyle(
                                  fontFamily: 'Muli',
                                  fontSize: 18,
                                  color: Colors.white
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'Cashback 20%',
                                style: TextStyle(
                                  fontFamily: 'Muli',
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]
                          ),
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: MaterialButton(
                                    onPressed: (){},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    color: Colors.orange.shade50,
                                    elevation: 0,
                                    child:
                                    SvgPicture.asset('assets/icons/Flash Icon.svg'),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                    width: 40,
                                    child: Text(
                                      'Flash Deal',
                                      textAlign: TextAlign.center,
                                    )
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: MaterialButton(
                                    onPressed: (){},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    color: Colors.orange.shade50,
                                    elevation: 0,
                                    child:
                                    SvgPicture.asset('assets/icons/Bill Icon.svg'),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                    width: 40,
                                    child: Text(
                                      'Bill',
                                      textAlign: TextAlign.center,
                                    )
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: MaterialButton(
                                    onPressed: (){},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    color: Colors.orange.shade50,
                                    elevation: 0,
                                    child:
                                    SvgPicture.asset('assets/icons/Game Icon.svg'),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                    width: 40,
                                    child: Text(
                                      'Game',
                                      textAlign: TextAlign.center,
                                    )
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: MaterialButton(
                                    onPressed: (){},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    color: Colors.orange.shade50,
                                    elevation: 0,
                                    child:
                                    SvgPicture.asset('assets/icons/Gift Icon.svg'),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                    width: 40,
                                    child: Text(
                                      'Daily Gift',
                                      textAlign: TextAlign.center,
                                    )
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: MaterialButton(
                                    onPressed: (){},
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    color: Colors.orange.shade50,
                                    elevation: 0,
                                    child:
                                    SvgPicture.asset('assets/icons/Discover.svg'),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                    width: 40,
                                    child: Text(
                                      'More',
                                      textAlign: TextAlign.center,
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Special for you',
                              style: TextStyle(
                                fontFamily: 'Muli',
                                fontSize: 20,
                              ),
                            ),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'See more',
                                  style: TextStyle(
                                    fontFamily: 'Muli',
                                    fontSize: 16,
                                    color: Colors.grey
                                  ),

                                )
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                height: 100,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/Image Banner 2.png'),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken)
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Smartphone',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '18 Brands',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                               ),
                              SizedBox(width: 20),
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                                height: 100,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/Image Banner 3.png'),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken)
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fashion',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      '24 Brands',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Products',
                              style: TextStyle(
                                fontFamily: 'Muli',
                                fontSize: 20,
                              ),
                            ),
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  'See more',
                                  style: TextStyle(
                                      fontFamily: 'Muli',
                                      fontSize: 16,
                                      color: Colors.grey
                                  ),

                                )
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [


                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset('assets/images/Image Popular Product 1.png'),
                                  ),

                                  SizedBox(
                                    width: 140,
                                    child: Text(
                                      'Wireless Controller for PS4',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$64.99',
                                          style: TextStyle(
                                            fontFamily: 'Muli',
                                            fontSize: 16,
                                            color: Colors.deepOrange,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        IconButton(
                                          onPressed: (){},
                                          icon: SvgPicture.asset('assets/icons/Heart Icon.svg')
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(width: 20),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset('assets/images/Image Popular Product 2.png'),
                                  ),

                                  SizedBox(
                                    width: 140,
                                    child: Text(
                                      'Nike Sport White - Man Pants',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$50.5',
                                          style: TextStyle(
                                            fontFamily: 'Muli',
                                            fontSize: 16,
                                            color: Colors.deepOrange,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        IconButton(
                                            onPressed: (){},
                                            icon: SvgPicture.asset('assets/icons/Heart Icon.svg')
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(width: 20),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.asset('assets/images/Image Popular Product 3.png'),
                                  ),

                                  SizedBox(
                                    width: 140,
                                    child: Text(
                                      'Gloves',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$36.5',
                                          style: TextStyle(
                                            fontFamily: 'Muli',
                                            fontSize: 16,
                                            color: Colors.deepOrange,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        IconButton(
                                            onPressed: (){},
                                            icon: SvgPicture.asset('assets/icons/Heart Icon.svg')
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),


                            ],
                          ),
                        ),

                      ]
                    ),
                  ),
                ),
              ]
            ),
          ),

          bottomNavigationBar: Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: SvgPicture.asset('assets/icons/Shop Icon.svg'),
                ),
                IconButton(
                  onPressed: (){},
                  icon: SvgPicture.asset('assets/icons/Heart Icon.svg'),
                ),
                IconButton(
                  onPressed: (){},
                  icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg'),
                ),
                IconButton(
                  onPressed: (){},
                  icon: SvgPicture.asset('assets/icons/User Icon.svg'),
                ),
              ],
            ),
          ),
        )
    );
  }
}
