// To parse this JSON data, do
//
//     final getConfigDataModel = getConfigDataModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GetConfigDataModel getConfigDataModelFromJson(String str) =>
    GetConfigDataModel.fromJson(json.decode(str));

String getConfigDataModelToJson(GetConfigDataModel data) =>
    json.encode(data.toJson());

class GetConfigDataModel {
  final String id;
  final List<String> courses;
  final List<String> paymentModes;
  final List<String> inquiryStatus;
  final List<String> certificateType;
  final int totalStudents;
  final int totalCompleteStudents;
  final int totalInquiries;
  final int totalCurrentDemo;

  GetConfigDataModel({
    required this.id,
    required this.courses,
    required this.paymentModes,
    required this.inquiryStatus,
    required this.certificateType,
    required this.totalStudents,
    required this.totalCompleteStudents,
    required this.totalInquiries,
    required this.totalCurrentDemo,
  });

  GetConfigDataModel copyWith({
    String? id,
    List<String>? courses,
    List<String>? paymentModes,
    List<String>? inquiryStatus,
    List<String>? certificateType,
    int? totalStudents,
    int? totalCompleteStudents,
    int? totalInquiries,
    int? totalCurrentDemo,
  }) =>
      GetConfigDataModel(
        id: id ?? this.id,
        courses: courses ?? this.courses,
        paymentModes: paymentModes ?? this.paymentModes,
        inquiryStatus: inquiryStatus ?? this.inquiryStatus,
        certificateType: certificateType ?? this.certificateType,
        totalStudents: totalStudents ?? this.totalStudents,
        totalCompleteStudents:
            totalCompleteStudents ?? this.totalCompleteStudents,
        totalInquiries: totalInquiries ?? this.totalInquiries,
        totalCurrentDemo: totalCurrentDemo ?? this.totalCurrentDemo,
      );

  factory GetConfigDataModel.fromJson(Map<String, dynamic> json) =>
      GetConfigDataModel(
        id: json["_id"],
        courses: List<String>.from(json["courses"].map((x) => x)),
        paymentModes: List<String>.from(json["payment_modes"].map((x) => x)),
        inquiryStatus: List<String>.from(json["inquiry_status"].map((x) => x)),
        certificateType:
            List<String>.from(json["certificate_type"].map((x) => x)),
        totalStudents: json["total_students"],
        totalCompleteStudents: json["total_complete_students"],
        totalInquiries: json["total_inquiries"],
        totalCurrentDemo: json["total_current_demo"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "courses": List<String>.from(courses.map((x) => x)),
        "payment_modes": List<String>.from(paymentModes.map((x) => x)),
        "inquiry_status": List<String>.from(inquiryStatus.map((x) => x)),
        "certificate_type": List<String>.from(certificateType.map((x) => x)),
        "total_students": totalStudents,
        "total_complete_students": totalCompleteStudents,
        "total_inquiries": totalInquiries,
        "total_current_demo": totalCurrentDemo,
      };
}
