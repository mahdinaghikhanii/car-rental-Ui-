import 'package:car_rental/pages/detail/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

Widget detailCar(context) {
  return Column(children: [
    const SizedBox(height: 10),
    Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 28),
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width,
        height: 234,
        decoration: ShapeDecoration(
          color: const Color(0xFFF3F3F3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailPage()));
          },
          child: Column(
            children: [
              const SizedBox(height: 17),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 22),
                  Text(
                    'NEAREST CAR',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.getFont('Barlow').copyWith(
                        color: const Color(0xFF787878),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 9),
              ShowUpAnimation(
                delayStart: const Duration(seconds: 0),
                animationDuration: const Duration(seconds: 1),
                curve: Curves.slowMiddle,
                direction: Direction.horizontal,
                offset: 0.10,
                child: Image.asset(
                  "assets/car.png",
                  width: 302.03,
                  height: 124.55,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 22),
                  Text(
                    'Fortuner GR',
                    style: GoogleFonts.getFont('Barlow').copyWith(
                        color: const Color(0xFF2C2B34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/km.svg"),
                    const SizedBox(width: 5),
                    Text(
                      "> 870km",
                      style: GoogleFonts.getFont('Barlow').copyWith(
                          color: const Color(0xFF787878),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 17),
                    SvgPicture.asset("assets/gas.svg"),
                    const SizedBox(width: 5),
                    Text(
                      "50L",
                      style: GoogleFonts.getFont('Barlow').copyWith(
                          color: const Color(0xFF787878),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Text(
                      "\$ 45,00/h",
                      style: GoogleFonts.getFont('Barlow').copyWith(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    const SizedBox(height: 22)
  ]);
}
