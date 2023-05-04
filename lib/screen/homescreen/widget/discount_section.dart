import 'package:flutter/material.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffF7C890),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 40, top: 21, right: 46),
          child: Row(
            children: [
              const Text(
                "Use BEAUTY20 to get \n50% discount",
                style: TextStyle(
                  fontFamily: "SourceSerifPro",
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: const CircleBorder()),
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

