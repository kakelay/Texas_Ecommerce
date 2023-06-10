// import 'package:flutter/material.dart';
 

// import '../../../constants.dart';
// import '../../../models/Product.dart';
// import '../../../models/response/product_card.dart';
// import '../../details/details_screen.dart';
// import 'product_card.dart';
// import 'section_title.dart';

// // ignore: must_be_immutable
// class PopularProducts extends StatelessWidget {
//    PopularProducts({
//     Key? key,
//   }) : super(key: key);
//    ProductIstad? arrivalProducts;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//           child: SectionTitle(
//             title: "Popular",
//             pressSeeAll: () {},
//           ),
//         ),
//         SingleChildScrollView(
//           physics: const BouncingScrollPhysics(
//               parent: AlwaysScrollableScrollPhysics()),
//           scrollDirection: Axis.horizontal,
//           child: Row(
//            children: [
//               ListView.builder(
//                   itemCount: arrivalProducts!.data.length,
//                   itemBuilder: ((context, index) {
//                     return ProductCard(
//                       data: arrivalProducts!.data[index], 
//                       press: (){
//                         Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>
//                               DetailsScreen(product:arrivalProducts!.data.length),
//                         ));
//                       });
//                   }))
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
