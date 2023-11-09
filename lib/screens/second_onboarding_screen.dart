import 'package:flutter/material.dart';

import '../AnimatingCircles.dart';

class SecondOnBoardingScreen extends StatefulWidget {
  const SecondOnBoardingScreen({super.key});

  @override
  State<SecondOnBoardingScreen> createState() => _SecondOnBoardingScreenState();
}

class _SecondOnBoardingScreenState extends State<SecondOnBoardingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<String> onBoardingLines = [
    "1111111111112222222333334144455555",
    "11111111111122222223333341444",
    "111111111111222222233333",
    "1111111111112222222",
    "111111111111",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AnimatingCircles(),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (BuildContext context, Widget? child) {
                    return Transform.translate(
                      offset: Offset(
                        0,
                        _controller.value * -60,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/character-2.png',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "It´s not just the packages we deliver, but the care we put into every delivery.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.builder(
                  itemCount: onBoardingLines.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        Icons.check_circle,
                        color: Colors.teal,
                      ),
                      title: Text(
                        onBoardingLines[index],
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  'Order now',
                  style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
