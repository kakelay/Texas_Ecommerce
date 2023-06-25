import 'package:istad_project_ecommerce/data/network/network_api_service.dart';
import 'package:istad_project_ecommerce/models/response/product_card.dart';
import 'package:istad_project_ecommerce/res/app_url.dart';

class ProductIstadeRepository {
  final NetworkApiService _apiService = NetworkApiService();

  Future<ProductIstad> getProdutIstad() async {
    try {
      dynamic response =
          await _apiService.getApiRespones(AppUrl.allProductIstad);
      return response = ProductIstad.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }
}
