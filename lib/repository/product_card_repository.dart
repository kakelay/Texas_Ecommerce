import '../data/network/network_api_service.dart';
import '../models/response/product_card.dart';
import '../res/app_url.dart';

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

  // repository upload image
  // Future<ImageModel> uploadImage(file) async {
  //   try {
  //     dynamic response =
  //         await _apiService.uploadImage(AppUrl.uploadImage, file);
  //     // return response =ImageModel.fromJson(response);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // repository postRestaurant

  // Future<dynamic> postRestaurant(requestBody) async {
  //   try {
  //     var restaurantBody = RestaurantRequest(data: requestBody);
  //     dynamic response = await _apiService.postApi(
  //         AppUrl.postRestaurant, restaurantBody.toJson());
  //     // return response =ImageModel.fromJson(response);
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // repository putRestaurant

  // Future<dynamic> putRestaurant(requestBody, id) async {
  //   try {
  //     var restaurantBody = RestaurantRequest(data: requestBody);
  //     var url = '${AppUrl.postRestaurant}/$id';
  //     dynamic response =
  //         await _apiService.puttApi(url, restaurantBody.toJson());
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<dynamic> deleteRestaurant(id) async {
    try {
      var url = '${AppUrl.postRestaurant}/$id';
      dynamic response = await _apiService.deleteApi(url);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
