 
import 'package:flutter/cupertino.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';
import '../data/response/api_respone.dart';
import '../repository/product_card_repository.dart';
 

class ProductIstadeViewModel extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  final _ProductRepository = ProductIstadeRepository();
  ApiRespone<ProductIstad> products = ApiRespone.loading();

  setProductIstadList(response) {
    // print("response:3: ${response.body}");
    products = response;
    notifyListeners();
  }

  Future<dynamic> fetchAllShop() async {
    await _ProductRepository.getProdutIstad()
        .then((product) =>  setProductIstadList(ApiRespone.completed(product)))
        .onError((error, stackTrace) =>
             setProductIstadList(ApiRespone.error(error.toString())));
  }
}
