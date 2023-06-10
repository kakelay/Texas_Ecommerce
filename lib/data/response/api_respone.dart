import 'package:istad_project_ecommerce/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;
  ApiResponse();
  ApiResponse.loading() : status = Status.LOADING;

  ApiResponse.completed(this.data) : status = Status.COMPLETE;

  ApiResponse.error(this.message) : status = Status.ERROR;
}
