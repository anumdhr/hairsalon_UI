import 'package:flutter/material.dart';

class HighLightImage extends StatelessWidget {
  const HighLightImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 315,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image(image: AssetImage(image), alignment: Alignment.topLeft),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                  backgroundColor: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
