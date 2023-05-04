import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeAndRating extends StatelessWidget {
  const TimeAndRating({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontFamily: "Lora",
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Time: 1 hour",
                style: TextStyle(
                  color: Color(0xff77838F),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "SourceSerifPro",
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.star, color: Color(0xff175C4C)),
                  Icon(Icons.star, color: Color(0xff175C4C)),
                  Icon(Icons.star, color: Color(0xff175C4C)),
                  Icon(Icons.star, color: Color(0xff175C4C)),
                  Icon(Icons.star, color: Color(0xffCFCFCF)),
                ],
              ),
              Text(
                "1281 ratings",
                style: GoogleFonts.sourceSerifPro(
                  color: const Color(0xff1E2022),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

