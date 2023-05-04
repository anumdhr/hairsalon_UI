import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ladies_salon_uidesign/screen/booking/history_and_home_icon.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 64, right: 64, top: 85),
              child: SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,

                // child:Image(image: AssetImage("assets/images/messagebox.png")) ,
                child: Image.asset("assets/images/messagebox.png"),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              "Booking Successful",
              style: GoogleFonts.lato(
                color: Color(0xff175C4C),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Center(
              child: Text(
                "Your reservation has been successfully \nbooked.",
                style: GoogleFonts.lora(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            HistoryAndHomeIcon()
          ],
        ),
      ),
    );
  }
}

