import 'dart:convert';

import 'package:fitness_freaks/configs/api_endpoints.dart';
import 'package:fitness_freaks/configs/app_constant.dart';
import 'package:fitness_freaks/models/common/api_response.dart';
import 'package:fitness_freaks/utils/common/show_logs.dart';
import 'package:fitness_freaks/utils/local_storage/shared_preferences.dart';
import 'package:http/http.dart' as http;

class HttpHandler {
  static String endPointUrl = APIEndpoints.baseUrl + APIEndpoints.hostUrl;

  static Future<Map<String, String>> _getHeaders() async {
    final String? token = await LocalStorage.getString(key: AppConstant.token);
    if (token != null) {
      showLogs(message: "TOKEN -- 'Bearer $token'");
      return {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': "Bearer $token",
      };
    } else {
      return {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
    }
  }

  static Future<APIResponse> getMethod({required String url}) async {
    var header = await _getHeaders();
    showLogs(message: "GET URL -- '$endPointUrl$url'");
    http.Response response = await http.get(
      Uri.parse("$endPointUrl$url"),
      headers: header,
    );
    showLogs(message: "GET RESPONSE CODE -- '${response.statusCode}'");
    showLogs(message: "GET RESPONSE -- '${response.body}'");
    if (response.statusCode == 200) {
      APIResponse data = APIResponse(
          header: response.headers,
          isSuccess: true,
          statusCode: response.statusCode,
          data: apiResponseFromJson(response.body));
      return data;
    } else {
      APIResponse data = APIResponse(
          header: response.headers,
          isSuccess: false,
          statusCode: response.statusCode,
          data: apiResponseFromJson(response.body));
      return data;
    }
  }

  static Future<APIResponse> postMethod(
      {required String url, Map<String, dynamic>? data}) async {
    var header = await _getHeaders();
    showLogs(message: "POST URL -- '$endPointUrl$url'");
    showLogs(message: "POST DATA -- '$data'");
    http.Response response = await http.post(
      Uri.parse("$endPointUrl$url"),
      headers: header,
      body: data == null ? null : jsonEncode(data),
    );
    showLogs(message: "POST RESPONSE CODE -- '${response.statusCode}'");
    showLogs(message: "POST RESPONSE -- '${response.body}'");
    Map tempResponse = json.decode(response.body);

    if (response.statusCode == 200) {
      APIResponse data = APIResponse(
          header: response.headers,
          isSuccess: tempResponse["success"] == true,
          statusCode: response.statusCode,
          data: apiResponseFromJson(response.body));
      return data;
    } else {
      APIResponse data = APIResponse(
        header: response.headers,
        isSuccess: false,
        statusCode: response.statusCode,
        data: apiResponseFromJson(response.body),
      );
      return data;
    }
  }

  static Future<APIResponse> putMethod(
      {required String url, Map<String, dynamic>? data}) async {
    var header = await _getHeaders();
    showLogs(message: "PUT URL -- '$endPointUrl$url'");
    showLogs(message: "PUT DATA -- '$data'");
    http.Response response = await http.put(
      Uri.parse("$endPointUrl$url"),
      headers: header,
      body: data == null ? null : jsonEncode(data),
    );
    showLogs(message: "PUT RESPONSE CODE -- '${response.statusCode}'");
    showLogs(message: "PUT RESPONSE -- '${response.body}'");
    Map tempResponse = json.decode(response.body);

    if (response.statusCode == 200) {
      APIResponse data = APIResponse(
          header: response.headers,
          isSuccess: tempResponse["status"] == 200,
          statusCode: response.statusCode,
          data: apiResponseFromJson(response.body));
      return data;
    } else {
      APIResponse data = APIResponse(
        header: response.headers,
        isSuccess: false,
        statusCode: response.statusCode,
        data: apiResponseFromJson(response.body),
      );
      return data;
    }
  }

  static Future<APIResponse> deleteMethod({required String url}) async {
    var header = await _getHeaders();
    showLogs(message: "DELETE URL -- '$endPointUrl$url'");
    http.Response response = await http.delete(
      Uri.parse("$endPointUrl$url"),
      headers: header,
    );
    showLogs(message: "DELETE RESPONSE CODE -- '${response.statusCode}'");
    showLogs(message: "DELETE RESPONSE -- '${response.body}'");
    Map tempResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      APIResponse data = APIResponse(
          header: response.headers,
          isSuccess: tempResponse["status"] == 200,
          statusCode: response.statusCode,
          data: apiResponseFromJson(response.body));
      return data;
    } else {
      APIResponse data = APIResponse(
        header: response.headers,
        isSuccess: false,
        statusCode: response.statusCode,
        data: apiResponseFromJson(response.body),
      );
      return data;
    }
  }
}
