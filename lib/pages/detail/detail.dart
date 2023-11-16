import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 480,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/map2.png'), fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 25,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 376,
            decoration: const ShapeDecoration(
              color: Color(0xFF282931),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  margin: const EdgeInsets.only(top: 100),
                  height: 276,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 16, bottom: 14),
                        child: Text(
                          'Features',
                          style: GoogleFonts.getFont('Barlow').copyWith(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 28),
                          width: MediaQuery.sizeOf(context).width,
                          height: 89,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                _listItem('assets/gas.svg', 'Diesel',
                                    'Common Rail Fuel Injection'),
                                const SizedBox(width: 14),
                                _listItem('assets/kilometr.svg', 'Acceleration',
                                    '0 - 100km / 11s'),
                                const SizedBox(width: 14),
                                _listItem('assets/cold.svg', 'Cool Seat',
                                    'Temp Control on seat'),
                              ],
                            ),
                          )),
                      const SizedBox(height: 39),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$45',
                                    style: GoogleFonts.getFont('Barlow')
                                        .copyWith(
                                            color: const Color(0xFF292D32),
                                            fontSize: 33,
                                            fontWeight: FontWeight.w700),
                                  ),
                                  TextSpan(
                                    text: ',00',
                                    style: GoogleFonts.getFont('Barlow')
                                        .copyWith(
                                            color: const Color(0xFF292D32),
                                            fontSize: 33,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text: '/day',
                                    style: GoogleFonts.getFont('Barlow')
                                        .copyWith(
                                            color: const Color(0xFF292D32),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 147,
                              height: 54,
                              decoration: ShapeDecoration(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Barlow',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
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
                Positioned(
                    right: MediaQuery.sizeOf(context).width * 0.06,
                    top: MediaQuery.sizeOf(context).height * 0.04,
                    child: Image.asset("assets/car_detail.png",
                        width: 188, height: 111.49)),
                Positioned(
                    left: MediaQuery.sizeOf(context).width * 0.08,
                    top: MediaQuery.sizeOf(context).height * 0.027,
                    child: Text(
                      "Fortuner GR",
                      style: GoogleFonts.getFont('Barlow').copyWith(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    )),
                Positioned.fill(
                  left: MediaQuery.sizeOf(context).width * 0.08,
                  top: MediaQuery.sizeOf(context).height * 0.076,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "assets/km.svg",
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "> 870km",
                        style: GoogleFonts.getFont('Barlow').copyWith(
                            color: const Color(0xFFDADADA),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(width: 17),
                      SvgPicture.asset(
                        "assets/gas.svg",
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.srcIn),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "50L",
                        style: GoogleFonts.getFont('Barlow').copyWith(
                            color: const Color(0xFFDADADA),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const Positioned(
            top: 44,
            left: 15,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
      ]),
    );
  }
}

_listItem(String image, String title, String description) {
  return Container(
      width: 136,
      height: 89,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE7E7E7)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 9),
          child: SvgPicture.asset(
            image,
            width: 32,
            height: 32,
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(title,
              style: GoogleFonts.getFont('Barlow').copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text(description,
              style: GoogleFonts.getFont('Barlow').copyWith(
                  color: const Color(0xFF898A8D),
                  fontSize: 8,
                  fontWeight: FontWeight.w700)),
        )
      ]));
}
