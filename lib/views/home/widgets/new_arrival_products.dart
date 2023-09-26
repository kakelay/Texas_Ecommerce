// import 'package:flutter/material.dart';

// import '../../../constants.dart';
// import '../../../models/response/product_card.dart';
// import '../../details/details_screen.dart';
// import 'product_card.dart';
// import 'section_title.dart';

// // ignore: must_be_immutable
// class NewArrivalProducts extends StatelessWidget {
//   NewArrivalProducts({Key? key, this.arrivalProducts}) : super(key: key);

//   ProductIstad? arrivalProducts;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//           child: SectionTitle(
//             title: "New Arrival",
//             pressSeeAll: () {},
//           ),
//         ),
//         SingleChildScrollView(
//           physics: const BouncingScrollPhysics(
//               parent: AlwaysScrollableScrollPhysics()),
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               ListView.builder(
//                 itemCount: arrivalProducts!.data.length,
//                 itemBuilder: ((builder, index) {
//                   print("Productcard have data");
//                   return ProductCard(
//                       data: arrivalProducts!.data[index],
//                       press: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => DetailsScreen(
//                                 product: arrivalProducts!.data[index]),
//                           ),
//                         );
//                       });
//                 }),
//               ),
//             ],
//             // children: List.generate(
//             //   arrivalProducts.length!,
//             //   (index) => Padding(
//             //     padding: const EdgeInsets.only(right: defaultPadding),
//             //     child: ProductCard(
//             //       data: ProductIstadData(id: id, attributes: attributes),
//             //       press: () {
//             //         Navigator.push(
//             //             context,
//             //             MaterialPageRoute(
//             //               builder: (context) =>
//             //                   DetailsScreen(product: demo_product[index]),
//             //             ));
//             //       },
//             //     ),
//             //   ),
//             // ),
//           ),
//         )
//       ],
//     );
//   }
// }

// ignore: must_be_immutable

import 'package:flutter/material.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';
import 'package:istad_project_ecommerce/views/all_product/all_product.dart';
import 'package:istad_project_ecommerce/views/details/details_screen.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../data/response/status.dart';
import '../../../viewmodels/product_viewmodel.dart';
import 'product_card.dart';
import 'section_title.dart';

class NewArrivalProducts extends StatefulWidget {
  const NewArrivalProducts({
    super.key,
  });

  @override
  State<NewArrivalProducts> createState() => _NewArrivalProductsState();
}

class _NewArrivalProductsState extends State<NewArrivalProducts> {
  var productistasViewModel = ProductIstadeViewModel();
  List<ProductIstadData>? productList;

  @override
  void initState() {
    productistasViewModel.fetchAllProductIstad();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "New Arrival",
            pressSeeAll: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllProduct(
                    productList: productList,
                  ),
                ),
              );
            },
          ),
        ),
        ChangeNotifierProvider<ProductIstadeViewModel>(
          create: (context) => productistasViewModel,
          child: Consumer<ProductIstadeViewModel>(
            builder: ((context, value, child) {
              switch (value.productistads.status) {
                case Status.LOADING:
                  print(
                      "  loadig------------------------------------------------------------loading-------------------------------------------------------- ");
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.redAccent,
                    ),
                  );
                case Status.COMPLETE:
                  print(" print completed-------11----------");

                  return Container(
                    
                    height: 450,
                    width: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.productistads.data!.data.length,
                      itemBuilder: (builder, index) {
                        return ProductCard(
                          data: value.productistads.data!.data[index],
                          press: () {
                            value.productistads.data!.data[index];
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  productIstadData:
                                      value.productistads.data!.data[index],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );

                default:
                  return const CircularProgressIndicator();
              }
            }),
          ),
        )
      ],
    );
  }
}
