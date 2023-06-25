import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';

import '../../../constants.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.data, required this.press});
  ProductIstadData data;
  final VoidCallback press;

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
             
              decoration: const BoxDecoration(
                color: bgColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)),
              ),
              child: Image.network(
                data.attributes.category.data.attributes.iconUrl,
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    
                    child: Text(
                      // ignore: unnecessary_string_interpolations
                      '${data.attributes.title}',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: defaultPadding / 4),
                Column(
                  children: [
                    Text(
                      "\$${data.attributes.price}",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "assets/icons/save.svg",
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
