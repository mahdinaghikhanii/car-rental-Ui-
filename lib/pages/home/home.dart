import 'package:car_rental/pages/home/widget/detail_car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/about_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showLoading = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 0)).then((value) {
      setState(() {
        showLoading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: appbar(),
        ),
        backgroundColor: Colors.white,
        body: showLoading == false
            ? const Center(
                child: CircularProgressIndicator(color: Color(0xFF282931)))
            : Column(
                children: [
                  detailCar(context),
                  aboutUser(),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 219,
                    margin: const EdgeInsets.only(top: 22, right: 28, left: 28),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF282931),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "More Cars",
                                style: GoogleFonts.getFont('Barlow').copyWith(
                                    color: const Color(0xFFD4D4D4),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Icon(Icons.more_horiz,
                                  color: Color(0xFF787878))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 4),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset("assets/km.svg",
                                          colorFilter: const ColorFilter.mode(
                                              Color(0xFFD8D8D8),
                                              BlendMode.srcIn)),
                                      const SizedBox(width: 5),
                                      Text(
                                        "> 870km",
                                        style: GoogleFonts.getFont('Barlow')
                                            .copyWith(
                                                color: const Color(0xFFD7D7D7),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(width: 17),
                                      SvgPicture.asset("assets/gas.svg",
                                          colorFilter: const ColorFilter.mode(
                                              Color(0xFFD8D8D8),
                                              BlendMode.srcIn)),
                                      const SizedBox(width: 5),
                                      Text(
                                        "50L",
                                        style: GoogleFonts.getFont('Barlow')
                                            .copyWith(
                                                color: const Color(0xFFD7D7D7),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(36.36),
                                    ),
                                  ),
                                  child: const Icon(Icons.arrow_forward,
                                      color: Colors.black),
                                ),
                                title: Text(
                                  "Corolla Cross",
                                  style: GoogleFonts.getFont('Barlow').copyWith(
                                      color: const Color(0xFFD4D4D4),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFF4B4B4B),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 4),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset("assets/km.svg",
                                          colorFilter: const ColorFilter.mode(
                                              Color(0xFFD8D8D8),
                                              BlendMode.srcIn)),
                                      const SizedBox(width: 5),
                                      Text(
                                        "> 870km",
                                        style: GoogleFonts.getFont('Barlow')
                                            .copyWith(
                                                color: const Color(0xFFD7D7D7),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(width: 17),
                                      SvgPicture.asset("assets/gas.svg",
                                          colorFilter: const ColorFilter.mode(
                                              Color(0xFFD8D8D8),
                                              BlendMode.srcIn)),
                                      const SizedBox(width: 5),
                                      Text(
                                        "50L",
                                        style: GoogleFonts.getFont('Barlow')
                                            .copyWith(
                                                color: const Color(0xFFD7D7D7),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(36.36),
                                    ),
                                  ),
                                  child: const Icon(Icons.arrow_forward,
                                      color: Colors.black),
                                ),
                                title: Text(
                                  "Corolla Cross",
                                  style: GoogleFonts.getFont('Barlow').copyWith(
                                      color: const Color(0xFFD4D4D4),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}

Widget appbar() {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Row(
      children: [
        const Icon(Icons.info_outline, size: 25),
        const SizedBox(width: 5),
        Text(
          "Information",
          style: GoogleFonts.getFont('Barlow').copyWith(
              color: Colors.black,
              fontSize: 16,
              height: 1.1,
              fontWeight: FontWeight.w600),
        )
      ],
    ),
    const SizedBox(width: 35),
    Row(children: [
      Stack(
        children: [
          const Icon(Icons.notifications_outlined, size: 25),
          Positioned(
            right: 2,
            top: 0,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red),
            ),
          )
        ],
      ),
      const SizedBox(width: 5),
      Text(
        "Notifications",
        style: GoogleFonts.getFont('Barlow').copyWith(
            color: Colors.black,
            fontSize: 16,
            height: 1.1,
            fontWeight: FontWeight.w600),
      )
    ])
  ]);
}
