import 'package:flutter/material.dart';

class FirstOnBoardingScreen extends StatefulWidget {
  const FirstOnBoardingScreen({super.key});

  @override
  State<FirstOnBoardingScreen> createState() => _FirstOnBoardingScreenState();
}



class _FirstOnBoardingScreenState extends State<FirstOnBoardingScreen> {

 final imageOffset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Text(
              'Deliver',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Text(
              'Deliver & Delight: Your Worl. Your Order, your Wev',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          Transform(
            transform: Matrix4.translationValues(imageOffset.dx,0,0),
            child: SizedBox(
              width: 350,
              height: 350,
              child: Image.asset('assets/character-1.png'),
            ),
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width - 80,
            height: 88,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadiusDirectional.circular(40),
            ),
            child: Stack(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 80,
                      height: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.chevron_right,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
