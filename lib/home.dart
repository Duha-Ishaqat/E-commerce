import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_2/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController carouselController = CarouselController();

  int activeIndex = 0;

  final imageList = [
    'assets/images/splash_1.png',
    'assets/images/splash_2.png',
    'assets/images/splash_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),

        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        'TOKOTO',
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange,
                        ),

                      ),
                      Text(
                        "Welcome to Tokoto, Let's shop!",
                        style: TextStyle(
                            fontFamily: 'Muli',
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: imageList.length,
                      itemBuilder: (context, index, realIndex){
                        final tokotoImg = imageList[index];
                        return buildImage(tokotoImg, index);
                      },
                      options: CarouselOptions(
                        height: 250,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      ),
                    ),
                    SizedBox(height: 10),
                    buildIndicator(),
                  ],
                ),
                SizedBox(height: 20),
                MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WelcomeScreen()),
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
              ]
          ),
        ),
      ),
    );
  }

  Widget buildImage(String tokotoImg, int index) => Container(
    decoration: BoxDecoration(
      color: Colors.transparent,
      shape: BoxShape.rectangle,
    ),
    child: Image.asset(tokotoImg, fit: BoxFit.cover,),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: imageList.length,
    effect: ExpandingDotsEffect(
        dotColor: Colors.grey,
        activeDotColor: Colors.deepOrange,
        dotHeight: 8,
        dotWidth: 8
    ),

  );
}
