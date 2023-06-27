// // import 'package:flutter/material.dart';
// // import 'package:responsive_grid_list/responsive_grid_list.dart';

// // import '../../../models/response/product_card.dart';

// // import '../../home/widgets/product_card.dart';

// // // ignore: must_be_immutable
// // class AllProductList extends StatelessWidget {
// //   AllProductList({
// //     super.key,
// //   });
// //   ProductIstad? arrivalProducts;
// //   @override
// //   Widget build(BuildContext context) {
// //     return ResponsiveGridList(
// //       horizontalGridMargin: 30,
// //       verticalGridMargin: 50,
// //       minItemWidth: 110,
// //       children: [
// //         ListView.builder(
// //             itemCount: arrivalProducts!.data.length,
// //             itemBuilder: ((context, index) {
// //               return ProductCard(
// //                   data: arrivalProducts!.data[index],
// //                   press: () {
// //                     // Navigator.push(
// //                     //   context,
// //                     //   MaterialPageRoute(
// //                     //     builder: (context) => DetailsScreen(
// //                     //         product: arrivalProducts!.data[index]),
// //                     //   ),
// //                     // );
// //                   });
// //             }))
// //       ],
// //     );
// //   }
// // }

//  // import 'package:flutter/material.dart';

// // import '../../../constants.dart';
// // import '../../../models/response/product_card.dart';
// // import '../../details/details_screen.dart';
// // import 'product_card.dart';
// // import 'section_title.dart';

// // // ignore: must_be_immutable
// // class NewArrivalProducts extends StatelessWidget {
// //   NewArrivalProducts({Key? key, this.arrivalProducts}) : super(key: key);

// //   ProductIstad? arrivalProducts;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Padding(
// //           padding: const EdgeInsets.symmetric(vertical: defaultPadding),
// //           child: SectionTitle(
// //             title: "New Arrival",
// //             pressSeeAll: () {},
// //           ),
// //         ),
// //         SingleChildScrollView(
// //           physics: const BouncingScrollPhysics(
// //               parent: AlwaysScrollableScrollPhysics()),
// //           scrollDirection: Axis.horizontal,
// //           child: Row(
// //             children: [
// //               ListView.builder(
// //                 itemCount: arrivalProducts!.data.length,
// //                 itemBuilder: ((builder, index) {
// //                   print("Productcard have data");
// //                   return ProductCard(
// //                       data: arrivalProducts!.data[index],
// //                       press: () {
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                             builder: (context) => DetailsScreen(
// //                                 product: arrivalProducts!.data[index]),
// //                           ),
// //                         );
// //                       });
// //                 }),
// //               ),
// //             ],
// //             // children: List.generate(
// //             //   arrivalProducts.length!,
// //             //   (index) => Padding(
// //             //     padding: const EdgeInsets.only(right: defaultPadding),
// //             //     child: ProductCard(
// //             //       data: ProductIstadData(id: id, attributes: attributes),
// //             //       press: () {
// //             //         Navigator.push(
// //             //             context,
// //             //             MaterialPageRoute(
// //             //               builder: (context) =>
// //             //                   DetailsScreen(product: demo_product[index]),
// //             //             ));
// //             //       },
// //             //     ),
// //             //   ),
// //             // ),
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }

// // ignore: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:istad_project_ecommerce/models/response/product_card.dart';
// import 'package:istad_project_ecommerce/views/all_product/all_product.dart';
// import 'package:istad_project_ecommerce/views/details/details_screen.dart';
// import 'package:provider/provider.dart';

// import '../../../constants.dart';
// import '../../../data/response/status.dart';
// import '../../../viewmodels/product_viewmodel.dart';
// import '../../home/widgets/product_card.dart';
// import '../../home/widgets/section_title.dart';

// class  AllProductList extends StatefulWidget {
//   const AllProductList({
//     super.key,
//   });

//   @override
//   State< AllProductList> createState() => _AllProductListState();
// }

// class _AllProductListState extends State< AllProductList> {
//   var productistasViewModel = ProductIstadeViewModel();
//   List<ProductIstadData>? productList;

//   @override
//   void initState() {
//     productistasViewModel.fetchAllProductIstad();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//           child: SectionTitle(
//             title: "New Arrival",
//             pressSeeAll: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => AllProduct(
//                           productList: productList,
//                         )),
//               );
//             },
//           ),
//         ),
//         ChangeNotifierProvider<ProductIstadeViewModel>(
//           create: (context) => productistasViewModel,
//           child: Consumer<ProductIstadeViewModel>(
//             builder: ((context, value, child) {
//               switch (value.productistads.status) {
//                 case Status.LOADING:
//                   print(
//                       "  loadig------------------------------------------------------------loading-------------------------------------------------------- ");
//                   return const Center(
//                     child: CircularProgressIndicator(
//                       color: Colors.redAccent,
//                     ),
//                   );
//                 case Status.COMPLETE:
//                   print(" print completed-----------------");

//                   return SizedBox(
//                     height: 280,
//                     width: 500,
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: value.productistads.data!.data.length,
//                       itemBuilder: (builder, index) {
//                         return ProductCard(
//                           data: value.productistads.data!.data[index],
//                           press: () {
//                             // value.productistads.data!.data[index];
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => DetailsScreen(
//                                   productIstadData:
//                                       value.productistads.data!.data[index],
//                                 ),
//                               ),
//                             );
//                           },
//                         );
//                       },
//                     ),
//                   );

//                 default:
//                   return const CircularProgressIndicator();
//               }
//             }),
//           ),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';

// ignore: must_be_immutable
class AllProdcutList extends StatelessWidget {
  AllProdcutList({
    Key? key,
    required this.data,
    required this.press,
  }) : super(key: key);
  ProductIstadData data;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            height: 180,
            width: 180,
            padding: const EdgeInsets.all(18),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            child: Image.network(
              data.attributes.category.data.attributes.iconUrl,
            ),
          ),
          Text(
            // ignore: unnecessary_string_interpolations
            '${data.attributes.title}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
