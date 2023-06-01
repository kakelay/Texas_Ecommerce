import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/SlideImage.dart';
import '../widgets/followus.dart';
import '../widgets/new_arrival_products.dart';
import '../widgets/popular_products.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Discover",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Text(
            "best Outfits for you",
            style: TextStyle(fontSize: 16),
          ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(vertical: defaultPadding),
          //   child: SearchForm(),
          // ),
          //  const Categories(),

          // slide image
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: FanCarouselImageSlider(
              sliderHeight: 450,
              imagesLink: sampleImages,
              isAssets: false,
              autoPlay: true,
              imageRadius: Checkbox.width,
              indicatorDeactiveColor: Colors.black,
              indicatorActiveColor: Colors.black,
            ),
          ),
          const NewArrivalProducts(),
          const SizedBox(
            height: defaulHighSizeBox,
          ),
          const Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Center(
              child: Text(
                // ignore: unnecessary_string_escapes
                "This Week\'s Arrival",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // const PopularProducts(),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    Center(
                      child: Image.asset("assets/images/product_0.png"),
                    ),
                    Center(
                      child: Image.asset("assets/images/product_1.png"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Center(
                      child: Image.asset("assets/images/product_2.png"),
                    ),
                    Center(
                      child: Image.asset("assets/images/product_3.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const PopularProducts(),
          //const NewArrivalProducts(),
          const SizedBox(
            height: defaulHighSizeBox,
          ),
          const Center(
            child: Text(
              "FOLLOW US",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          const FollowUs(),
          const SizedBox(
            height:defaulHighSizeBox,
          ),
        ],
      ),
    );
  }
}

