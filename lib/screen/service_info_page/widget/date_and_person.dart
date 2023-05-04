import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateAndPerson extends StatelessWidget {
  const DateAndPerson({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "CHOOSE DATE",
              style: GoogleFonts.sourceSerifPro(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xff8A8E8E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: const Color(0xffAAAAAA),
                      )),
                  height: 44,
                  width: 180,
                  child: ListTile(
                    leading:
                    Icon(Icons.calendar_month_outlined, size: 20),
                    title: Text(
                      "08/04/2022",
                      style: GoogleFonts.sourceSerifPro(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_down),
                  )),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "CHOOSE PERSON",
              style: GoogleFonts.sourceSerifPro(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: const Color(0xff8A8E8E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: const Color(0xffAAAAAA),
                      )),
                  height: 44,
                  width: 180,
                  child: ListTile(
                    leading: Icon(Icons.person_2_outlined, size: 20),
                    title: Text(
                      "3 people",
                      style: GoogleFonts.sourceSerifPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_down),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

