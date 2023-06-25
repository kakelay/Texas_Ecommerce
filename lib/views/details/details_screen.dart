// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';

import '../../constants.dart';
import '../add_cart/add_cart.dart';
import '../save_card/save_cart.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key, required this.productIstadData}) : super(key: key);

  ProductIstadData productIstadData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: product.bgColor,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: Text(
          "hi",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/icons/bag1.svg",
                height: 40,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.network(
            productIstadData.attributes.category.data.attributes.iconUrl,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding * 1.5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          // ignore: unnecessary_string_interpolations
                          '${productIstadData.attributes.title}',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      // Text(
                      //   // ignore: prefer_interpolation_to_compose_strings
                      //   "US \$" + product2.price,
                      //   style: Theme.of(context).textTheme.titleLarge,
                      // ),
                      Text(
                        "\$${productIstadData.attributes.price}",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                    ),
                  ),
                  // Text(
                  //   "Rating : ${product2.rating}",
                  //   style: Theme.of(context).textTheme.titleSmall,
                  // ),
                  Text(
                    "\$${productIstadData.attributes.price}",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  const SizedBox(height: defaultPadding * 2),
                   Column(
                    children: [
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 48,
                          // child: ElevatedButton(
                          //   onPressed: () {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => const AddCardScreen()),
                          //     );
                          //   },
                          //   style: ElevatedButton.styleFrom(
                          //       backgroundColor: primaryColor,
                          //       shape: const StadiumBorder()),
                          //   child: const Text("Add to Card"),

                          // ),

                          //  command  testing1

                          child: ElevatedButton(
                            onPressed: () {
                              cartProducts.add(productIstadData);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AddCartScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber.shade800,
                                shape: const StadiumBorder()),
                            child: const Text("Add To Cart"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: defaulHighSizeBox,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 48,

                          ///  command tesing  2

                          child: ElevatedButton(
                            onPressed: () {
                             cartProducts.add(productIstadData);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SaveCartScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: const StadiumBorder()),
                            child: const Text("Save Product"),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
