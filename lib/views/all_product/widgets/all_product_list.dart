 
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../../models/Product.dart';
import '../../details/details_screen.dart';
import '../../home/widgets/product_card.dart';

class AllProductList extends StatelessWidget {
  const AllProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      horizontalGridMargin: 30,
      verticalGridMargin: 50,
      minItemWidth: 110,
      children: List.generate(
            demo_product.length,
            (index) => Padding(
              padding: EdgeInsets.zero,
              child: ProductCard(
                
                title: demo_product[index].title,
                image: demo_product[index].image,
                price: demo_product[index].price,
                bgColor: demo_product[index].bgColor,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: demo_product[index]),
                      ));
                },
              ),
            ),
          ),
    );
  }
}
