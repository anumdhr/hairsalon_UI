
import 'package:flutter/material.dart';

class SliderInfo extends StatelessWidget {
  const SliderInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 24 ,right: 14),
      child: Container(
        height: 156,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: const Color(0xff175C4C),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Upto 50%",
                    style: TextStyle(
                      fontFamily: "SourceSerifPro",
                      color: Color(0xffF98700),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  const Text(
                    "Look more beautiful and \nSave more discount.",
                    style: TextStyle(
                      fontFamily: "SourceSerifPro",
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFF98700),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      print('hy');
                    },
                    child: const Text(
                      "Get offer now!",
                      style: TextStyle(
                        fontFamily: "Lora",
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 10,
              right: 20,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Color(0XFFF98700),
              ),
            ),
            // Align(
            //   alignment: AlignmentDirectional.centerEnd,
            //   child: Image(
            //     image: AssetImage("assets/Images/Ellipse 2.png"),
            //   ),
            // ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: Image(
                image: AssetImage(
                    "assets/Images/My project (1) 1.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
