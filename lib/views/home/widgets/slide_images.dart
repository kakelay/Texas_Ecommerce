import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideImages extends StatelessWidget {
  const SlideImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.blue,
      onPageChanged: (value) {
        debugPrint('Page changed: $value');
      },
      autoPlayInterval: 5000,
      isLoop: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'assets/images/product_0.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'assets/images/product_1.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'assets/images/product_2.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            'assets/images/product_3.png',
          ),
        ),
      ],
    );
  }
}
