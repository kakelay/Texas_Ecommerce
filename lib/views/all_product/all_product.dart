import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:istad_project_ecommerce/views/all_product/widgets/all_product_list.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
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
    String hintText = "Search Product";
    return Scaffold(
      appBar: EasySearchBar(
        searchHintText: hintText,
        title: const Text('Pgroduct Instock'),
        onSearch: (value) => setState(
          () => searchValue = value,
        ),
       // actions: [IconButton(icon: const Icon(Icons.production_quantity_limits), onPressed: () {})],
        asyncSuggestions: (value) async => await _fetchSuggestions(value),
      ),
      body: AllProductList(),
    );
  }
}
