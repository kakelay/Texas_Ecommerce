 

import 'package:istad_project_ecommerce/data/response/status.dart';

class ApiRespone<T> {

  Status? status;
  T? data;
  String? message;
  ApiRespone();
  ApiRespone.loading() : status = Status.LOADING;

  ApiRespone.completed(this.data) : status = Status.COMPLETE;

  ApiRespone.error(this.message) : status = Status.ERROR;
  
}
