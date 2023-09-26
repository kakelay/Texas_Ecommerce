// ignore_for_file: must_be_immutable, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';

import '../../constants.dart';
import '../add_cart/add_cart.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key, required this.productIstadData}) : super(key: key);

  ProductIstadData productIstadData;

  @override
  Widget build(BuildContext context) {
    print('-------------------------------+++++++++++++++++++++++++++++++++++');
    print(
      productIstadData.attributes.thumbnail.data.attributes.url,
    );

    return Scaffold(
      // backgroundColor: product.bgColor,

      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Detail Screen",
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
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            height: 400,
            child: Image.network(
              'https://cms.istad.co${productIstadData.attributes.thumbnail.data.attributes.url}',
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: defaultPadding * 2),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
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
                          '${productIstadData.attributes.title}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Text(
                        "\$${productIstadData.attributes.price}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "\$${productIstadData.attributes.description}",
                    ),
                  ),
                  Text(
                    "Instock: ${productIstadData.attributes.quantity}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
               
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/favorite.svg",
                            height: 25,
                          ),
                          SvgPicture.asset(
                            "assets/icons/favorite.svg",
                            height: 25,
                          ),
                          SvgPicture.asset(
                            "assets/icons/favorite.svg",
                            height: 25,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  Column(
                    children: [
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              cartSavePro.add(productIstadData);
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
                      const SizedBox(
                        height: defaulHighSizeBox,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 48,

                          ///  command tesing  2

                          // child: ElevatedButton(
                          //   onPressed: () {
                          //     cartProducts.add(productIstadData);
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) =>
                          //               const SaveCartScreen()),
                          //     );
                          //   },
                          //   style: ElevatedButton.styleFrom(
                          //       backgroundColor: primaryColor,
                          //       shape: const StadiumBorder()),
                          //   child: const Text("Save Product"),
                          // ),
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
