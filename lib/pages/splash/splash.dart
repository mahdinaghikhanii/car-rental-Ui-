import 'package:car_rental/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2C2B34),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShowUpAnimation(
                      delayStart: const Duration(seconds: 0),
                      animationDuration: const Duration(seconds: 2),
                      curve: Curves.easeIn,
                      direction: Direction.horizontal,
                      offset: 0.10,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, right: 30),
                        child: Image.asset(
                          'assets/splash_image.png',
                          fit: BoxFit.cover,
                          height: 560,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -0,
                      left: 20,
                      child: ShowUpAnimation(
                        delayStart: const Duration(seconds: 0),
                        animationDuration: const Duration(seconds: 1),
                        curve: Curves.bounceIn,
                        direction: Direction.vertical,
                        offset: 0.10,
                        child: Text(
                          'Premium cars.\nEnjoy the luxury',
                          style: GoogleFonts.getFont('Barlow').copyWith(
                              color: Colors.white,
                              fontSize: 35.20,
                              height: 1.1,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
                ShowUpAnimation(
                  delayStart: const Duration(seconds: 0),
                  animationDuration: const Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  direction: Direction.vertical,
                  offset: 0.10,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 12),
                    child: Text(
                      'Premium and prestige car daily rental. Experience the thrill at a lower price',
                      style: GoogleFonts.getFont('Barlow').copyWith(
                        color: const Color(0xFF8E8E8E),
                        fontSize: 15,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
            ShowUpAnimation(
              delayStart: const Duration(seconds: 0),
              animationDuration: const Duration(seconds: 1),
              curve: Curves.bounceIn,
              direction: Direction.vertical,
              offset: 0.10,
              child: Container(
                margin: const EdgeInsets.only(bottom: 34, right: 28, left: 28),
                width: MediaQuery.sizeOf(context).width,
                height: 54,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                          (route) => false);
                    },
                    child: Center(
                      child: Text(
                        "Let's Go",
                        style: GoogleFonts.getFont('Barlow').copyWith(
                          color: const Color(0xFF2C2B34),
                          fontSize: 20,
                          fontFamily: 'Barlow',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ));
  }
}
