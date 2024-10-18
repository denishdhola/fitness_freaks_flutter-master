import 'dart:convert';

class APIResponse {
  final Map<String, String> header;
  final bool isSuccess;
  final int statusCode;
  final Response data;

  APIResponse({
    required this.header,
    required this.isSuccess,
    required this.statusCode,
    required this.data,
  });
}

Response apiResponseFromJson(String str) => Response.fromJson(json.decode(str));

String apiResponseToJson(Response data) => json.encode(data.toJson());

class Response {
  Response({
    this.success,
    this.message,
    this.data,
  });

  final bool? success;
  final String? message;
  final dynamic data;

  Response copyWith({
    bool? success,
    String? message,
    var data,
  }) =>
      Response(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        success: json["success"],
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data,
      };
}
