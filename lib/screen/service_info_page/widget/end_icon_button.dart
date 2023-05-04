import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../booking/booking_page.dart';

class EndIconButton extends StatelessWidget {
  const EndIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xffE2F5FA),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 53,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff175C4C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const BookingPage();
                    },
                  ));
                },
                child: Text(
                  "Continue",
                  style: GoogleFonts.lora(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Save for later",
              style: GoogleFonts.sourceSerifPro(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

