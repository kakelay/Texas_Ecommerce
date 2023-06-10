import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../app_exception.dart';

class NetworkApiService {
  dynamic responseJson;

  /// delete
  Future deleteApi(String url) async {
    var request = http.Request('DELETE', Uri.parse(url));
    http.StreamedResponse response = await request.send();
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      return true;
    } else {
      return false;
    }
  }

  /// network post data from textfields and images
  /// generate from quicktype
  Future postApi(String url, requestBody) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST', Uri.parse(url));
    request.body = json.encode(requestBody);
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(
        await response.stream.bytesToString(),
      );
      return true;
    } else {
      return false;
    }
  }

  /// network put data from textfields and images
  /// generate from quicktype
  Future puttApi(String url, requestBody) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('PUT', Uri.parse(url));
    request.body = json.encode(requestBody);
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(
        await response.stream.bytesToString(),
      );
      return true;
    } else {
      return false;
      //print(response.reasonPhrase);
    }
  }

  ///  network upload Image

  // Future uploadImage(String url, file) async {
  //   var request = http.MultipartRequest('POST', Uri.parse(url));
  //   request.files.add(await http.MultipartFile.fromPath("files", file));

  //   var response = await request.send();

  //   print('success image post = ${response.statusCode}');
  //   if (response.statusCode == 200) {
  //     final res = await response.stream.bytesToString();
  //     // var decode =json.decode(res);
  //     var imaglist = imageModelFromJson(res);
  //     return imaglist[0];
  //   } else {
  //     //Mean  of  reasonPhrase is  Error  some part of post code response
  //     // print("error");
  //     print(response.reasonPhrase);
  //   }
  // }

  ///get
  Future<dynamic> getApiRespones(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet Connection');
    }
    return responseJson;
  }
}

returnResponse(http.Response response) {
  print("response: ${response.statusCode}");
  switch (response.statusCode) {
    case 200:
      print("response:: ${response.body}");
       
      return jsonDecode(response.body);
    case 400:
      throw FetchDataException("No Internet Connection");
  }
}
