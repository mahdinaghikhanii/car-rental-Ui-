import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget aboutUser() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28),
    child: Row(
      children: [
        Expanded(
            child: Container(
          decoration: ShapeDecoration(
            color: const Color(0xFFF3F3F3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          height: 170,
          child: Column(
            children: [
              Container(
                width: 73,
                height: 73,
                margin: const EdgeInsets.only(top: 27, bottom: 7),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: AssetImage('assets/mahdi.jpg'))),
              ),
              Text(
                "Mahdi naghikhani",
                style: GoogleFonts.getFont('Barlow').copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 2),
              Text(
                "\$ 4,257",
                style: GoogleFonts.getFont('Barlow').copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        )),
        const SizedBox(width: 15),
        Expanded(
            child: Container(
          decoration: ShapeDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/Maps.png'), fit: BoxFit.cover),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          height: 170,
        ))
      ],
    ),
  );
}
