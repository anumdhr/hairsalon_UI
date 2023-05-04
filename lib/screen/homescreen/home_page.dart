import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ladies_salon_uidesign/screen/booking/booking_page.dart';
import 'package:ladies_salon_uidesign/screen/homescreen/widget/discount_section.dart';
import 'package:ladies_salon_uidesign/screen/homescreen/widget/phanindra_info.dart';
import 'package:ladies_salon_uidesign/screen/homescreen/widget/slider_info.dart';
import 'package:ladies_salon_uidesign/screen/service_info_page/service_info_page.dart';

import '../../model/model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhanindraInfo(),
            // Container(
            //   height: 156,
            //
            //   child: CarouselSlider(
            //     items: [1, 2, 3, 4, 5].map(
            //       (e) {
            //         return Builder(
            //           builder: (context) {
            //             return
            //           },
            //         );
            //       },
            //     ).toList(),
            //     options: CarouselOptions(
            //       autoPlay: true,
            //       viewportFraction: 1,
            //     ),
            //   ),
            // ),
            CarouselSlider(
              options: CarouselOptions(
                height: 160.0,
                autoPlay: true,
                viewportFraction: 1,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return const SliderInfo();
                  },
                );
              }).toList(),
            ),

            const SizedBox(
              height: 34,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "What are you looking for?",
                style: TextStyle(
                  fontFamily: "Lora",
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 12,
              children: gridModel
                  .map(
                    (e) => Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(30),
                                backgroundColor: const Color(0xffE2F5FA)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HairCutInfoPage(
                                      image: e.image,
                                      name: e.name,
                                    );
                                  },
                                ),
                              );
                            },
                            child: e.icon),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          e.name,
                          style: const TextStyle(
                            fontFamily: "Lora",
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 61,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 53,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Color(0xff175C4C),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "All Services",
                    style: TextStyle(
                      fontFamily: "Lora",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            DiscountSection(),
          ],
        ),
      ),
    );
  }
}

