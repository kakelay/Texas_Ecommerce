// ignore: must_be_immutable

import 'package:flutter/material.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';
import 'package:istad_project_ecommerce/views/all_product/all_product.dart';
import 'package:istad_project_ecommerce/views/details/details_screen.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

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
                  return Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      height: 430,
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 260,
                              padding: const EdgeInsets.all(defaultPadding / 2),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(defaultBorderRadius)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      width: 260,
                                      height: 350,
                                      decoration: const BoxDecoration(
                                        color: bgColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(0)),
                                      ),
                                      child: Container()),
                                  const SizedBox(height: defaultPadding / 2),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 20,
                                        color: Colors.grey,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 20,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 20,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            );
                          }),
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
