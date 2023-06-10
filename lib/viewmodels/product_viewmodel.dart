import 'package:flutter/cupertino.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';
import '../data/response/api_respone.dart';

import '../repository/product_card_repository.dart';

class ProductIstadeViewModel extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  final _productRepository = ProductIstadeRepository();
  ApiResponse<ProductIstad> productistads = ApiResponse.loading();
//dynamic productistads = ApiResponse.loading();

  setProductIstadList(response) {
    //R print("response:3: ${response.body}");
    productistads = response;
    notifyListeners();
  }

  Future<dynamic> fetchAllProductIstad() async {
   // setProductIstadList(ApiResponse.loading());
    await _productRepository
        .getProdutIstad()
        .then((productistad) =>
            setProductIstadList(ApiResponse.completed(productistad)))
        .onError((error, stackTrace) =>
            setProductIstadList(ApiResponse.error(error.toString())));
  }
}
