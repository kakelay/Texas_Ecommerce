// ignore_for_file: deprecated_member_use

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
    print(
        '====================================================================================');
    print(data.attributes.thumbnail.data.attributes.url);
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 260,
        // height: 280,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              width: 260,
              height: 350,
              decoration: const BoxDecoration(
                color: bgColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)),
              ),
              child: Image.network(
                'https://cms.istad.co${data.attributes.thumbnail.data.attributes.url}',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Text(
            //           // ignore: unnecessary_string_interpolations
            //           '${data.attributes.title}',
            //           style: const TextStyle(color: Colors.black),
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: defaultPadding / 4),
            //     Column(
            //       children: [
            //         Text(
            //           "\$${data.attributes.price}",
            //           style: Theme.of(context).textTheme.bodyLarge,
            //         ),
            //         IconButton(
            //           onPressed: () {},
            //           icon: CircleAvatar(
            //             backgroundColor: Colors.white,
            //             child: SvgPicture.asset(
            //               "assets/icons/save.svg",
            //               height: 20,
            //               color: Colors.red,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // )
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${data.attributes.price}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: SvgPicture.asset(
                      "assets/icons/save.svg",
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  // ignore: unnecessary_string_interpolations
                  '${data.attributes.title}',
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:istad_project_ecommerce/models/response/product_card.dart';

// class ProductCard extends StatelessWidget {
//   ProductCard({super.key, required this.data, required this.press});
//   ProductIstadData data;
//   final VoidCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: press,
//       child: Center(
//         child: Text(
//           'dfsfsdklmfsdmflksdlk',
//         ),
//       ),
//     );
//   }
// }
