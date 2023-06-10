 
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../../models/response/product_card.dart';
import '../../details/details_screen.dart';
import '../../home/widgets/product_card.dart';

// ignore: must_be_immutable
class AllProductList extends StatelessWidget {
   AllProductList({
    super.key,
  });
 ProductIstad? arrivalProducts;
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      horizontalGridMargin: 30,
      verticalGridMargin: 50,
      minItemWidth: 110,
       children: [
              ListView.builder(
                  itemCount: arrivalProducts!.data.length,
                  itemBuilder: ((context, index) {
                    return ProductCard(
                      data: arrivalProducts!.data[index], 
                      press: (){
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: arrivalProducts!.data[index]),
                        ));
                      });
                  }))
            ],
    );
  }
}
