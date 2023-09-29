import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/SlideImage.dart';

import '../widgets/follow_us.dart';
import '../widgets/new_arrival_products.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({
    super.key,
  });
  // ProductIstad? arrivalProducts;

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

// ProductIstad? arrivalProducts;

class _HomeButtonState extends State<HomeButton> {
  // var productistasViewModel = ProductIstadeViewModel();

  // @override
  // void initState() {
  //   productistasViewModel.fetchAllProductIstad();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      // physics:
      //     const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      // padding: const EdgeInsets.all(defaultPadding),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
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
              style: TextStyle(fontSize: 16,fontWeight:  FontWeight.w700),
            ),
           
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
            // ChangeNotifierProvider<ProductIstadeViewModel>(
            //   create: (context) => productistasViewModel,
            //   child: Consumer<ProductIstadeViewModel>(
            //     builder: ((context, value, child) {
            //       switch (value.productistads.status) {
            //         case Status.LOADING:
            //           return const Center(
            //             child: CircularProgressIndicator(),
            //           );
            //         case Status.COMPLETE:
            //           return SizedBox(
            //             height: 850,
            //             // child: ListView.builder(
            //             //   scrollDirection: Axis.horizontal,
            //             //   itemCount: value.productistads.data!.data.length,
            //             //   itemBuilder: (builder, index) {
            //             //     return NewArrivalProducts(
            //             //     arrivalProducts: value.productistads.data!.data[index],
            //             //     );
            //             //   },
            //             // ),
            //             child: NewArrivalProducts(
            //               arrivalProducts: value.productistads.data!.data,
            //             ),
            //           );

            //         default:
            //           return const CircularProgressIndicator();
            //       }
            //     }),
            //   ),
            // ),

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
            //   const PopularProducts(),
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
              height: defaulHighSizeBox,
            ),
          ],
        ),
      ),
    );
  }
}
