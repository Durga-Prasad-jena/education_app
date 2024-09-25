import 'package:education_app/home_screen.dart';
import 'package:education_app/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.53,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.53,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      // For image
                      image: DecorationImage(
                          image: AssetImage("Images/image.png"),
                          fit: BoxFit.cover),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.88,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Images/image.png"), fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.88,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      const Text(
                        "Learning Everywhere",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Learn with pleasure with\n    us weher ,you are!!",
                        style: TextStyle(color: Colors.black54, fontSize: 18),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 60),
                        child: Row(
                          children: [
                            Container(
                              height: 16,
                              width: currentIndex == 0 ? 35 : 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                color: currentIndex == 0
                                    ? primaryColor
                                    : Colors.white,
                                border: Border.all(
                                  width: 1.5,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 16,
                              width: currentIndex == 1 ? 35 : 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                color: currentIndex == 1
                                    ? primaryColor
                                    : Colors.white,
                                border: Border.all(
                                  width: 1.5,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 16,
                              width: currentIndex == 2 ? 35 : 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(200),
                                color: currentIndex == 2
                                    ? primaryColor
                                    : Colors.white,
                                border: Border.all(
                                  width: 1.5,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = currentIndex + 1;
                                });

                                if (currentIndex > 2) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                }
                              },
                              child: Container(
                                height: 65,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: primaryColor),
                                child: Center(
                                  child: Text(
                                    currentIndex < 2 ? "Next" : "Get Started",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
