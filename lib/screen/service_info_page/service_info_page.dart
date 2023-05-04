import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ladies_salon_uidesign/model/model.dart';
import 'package:ladies_salon_uidesign/screen/booking/booking_page.dart';
import 'package:ladies_salon_uidesign/screen/service_info_page/widget/date_and_person.dart';
import 'package:ladies_salon_uidesign/screen/service_info_page/widget/end_icon_button.dart';
import 'package:ladies_salon_uidesign/screen/service_info_page/widget/highlight_image.dart';
import 'package:ladies_salon_uidesign/screen/service_info_page/widget/time_and_rating.dart';

class HairCutInfoPage extends StatelessWidget {
  const HairCutInfoPage({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HighLightImage(image: image),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 95,
                child: ListView.separated(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 95,
                        width: 116,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(hairModel[index].image)),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    itemCount: hairModel.length),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TimeAndRating(name: name),
            const SizedBox(
              height: 34,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 53,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffAAAAAA),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Select Service Type",
                        style: GoogleFonts.sourceSerifPro(
                          color: const Color(0xff1E2022),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            DateAndPerson(),
            const SizedBox(
              height: 39,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Description",
                      style: GoogleFonts.sourceSerifPro(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
            EndIconButton()
          ],
        ),
      ),
    );
  }
}

