import 'package:flutter/material.dart';

class PhanindraInfo extends StatelessWidget {
  const PhanindraInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 121,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Row(
          children: [
            Column(
              children: const [
                Text(
                  "Hello,Phanindhra",
                  style: TextStyle(
                    fontFamily: "Lora",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Find the service you want",
                  style: TextStyle(
                    fontFamily: "SourceSerifPro",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                  ),
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff175C4C),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () {},
              child: const Icon(Icons.search_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
