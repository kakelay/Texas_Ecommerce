import 'package:flutter/cupertino.dart';
import 'package:istad_project_ecommerce/repository/product_card_repository.dart';
import '../data/response/api_respone.dart';

class ProductIstadeViewModel extends ChangeNotifier {
  final _productistadRepository = ProductIstadeRepository();
  dynamic productistads = ApiRespone.loading();
  
  
  ///  get api  restaurant  part
  setProductIstad(response) {
    // print("response:3: ${response.body}");
    productistads = response;
    notifyListeners();
  }
  Future<dynamic> fetchAllProductIstad() async {
    await _productistadRepository
        .getProdutIstad()
        .then((productistad) =>
            setProductIstad(ApiRespone.completed(productistad)))
        .onError((error, stackTrace) =>
            setProductIstad(ApiRespone.error(error.toString())));
  }
}
