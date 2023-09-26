import 'package:flutter/material.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';
import 'package:istad_project_ecommerce/views/all_product/widgets/all_product_list.dart';
import 'package:provider/provider.dart';

import '../../data/response/status.dart';
import '../../viewmodels/product_viewmodel.dart';
import '../details/details_screen.dart';

class AllProduct extends StatefulWidget {
  final List<ProductIstadData>? productList;
  const AllProduct({super.key, this.productList});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  var productistasViewModel = ProductIstadeViewModel();
  List<ProductIstadData>? productList;

  bool isSearchTapped = false;

  @override
  void initState() {
    productistasViewModel.fetchAllProductIstad();
    super.initState();
  }

  String searchValue = '';
  final List<String> _suggestions = [
    'Afeganistan',
    'Albania',
    'Algeria',
    'Australia',
    'Brazil',
    'German',
    'Madagascar',
    'Mozambique',
    'Portugal',
    'Zambia'
  ];

  Future<List<String>> _fetchSuggestions(String searchValue) async {
    await Future.delayed(const Duration(milliseconds: 750));

    return _suggestions.where((element) {
      return element.toLowerCase().contains(searchValue.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    String hintText = "Search Product ";

    return Scaffold(
        appBar: AppBar(
          title: isSearchTapped
              ? TextField(
                  decoration: InputDecoration(
                      hintText: hintText, fillColor: Colors.black),
                  onChanged: (value) => (value),
                )
              : const Text(
                  'Product Instock',
                  style: TextStyle(color: Colors.black),
                ),
          actions: [
            isSearchTapped
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isSearchTapped = false;
                        });
                      },
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isSearchTapped = true;
                        });
                      },
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ChangeNotifierProvider<ProductIstadeViewModel>(
          create: (context) => productistasViewModel,
          child: Consumer<ProductIstadeViewModel>(
            builder: (context, value, child) {
              switch (value.productistads.status) {
                case Status.LOADING:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case Status.COMPLETE:
                  return GridView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: value.productistads.data!.data.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0,
                    ),
                    itemBuilder: (BuildContext context, index) {
                      return AllProdcutList(
                        data: value.productistads.data!.data[index],
                        press: () {
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
                  );
                default:
                  return const CircularProgressIndicator();
              }
            },
          ),
        ));
  }
}
