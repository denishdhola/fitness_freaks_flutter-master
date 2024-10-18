// To parse this JSON data, do
//
//     final getStudentDataModel = getStudentDataModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<GetStudentDataModel> getStudentDataModelListFromJson(String str) =>
    List<GetStudentDataModel>.from(
        json.decode(str).map((x) => GetStudentDataModel.fromJson(x)));

String getStudentDataModelListToJson(List<GetStudentDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

GetStudentDataModel getStudentDataModelFromJson(String str) =>
    GetStudentDataModel.fromJson(json.decode(str));

String getStudentDataModelToJson(GetStudentDataModel data) =>
    json.encode(data.toJson());

class GetStudentDataModel {
  final String id;
  final List<String> courses;
  final int paidInstallments;
  final List<dynamic> paidFees;
  final bool isCourseComplete;
  final String rollNumber;
  final String name;
  final String email;
  final DateTime joiningDate;
  final DateTime birthDate;
  final String education;
  final String mobileNumber;
  final String parentMobileNumber;
  final String address;
  final String courseDuration;
  final int totalInstallments;
  final int totalFees;
  final int pendingFees;
  final int v;

  GetStudentDataModel({
    required this.id,
    required this.courses,
    required this.paidInstallments,
    required this.paidFees,
    required this.isCourseComplete,
    required this.rollNumber,
    required this.name,
    required this.email,
    required this.joiningDate,
    required this.birthDate,
    required this.education,
    required this.mobileNumber,
    required this.parentMobileNumber,
    required this.address,
    required this.courseDuration,
    required this.totalInstallments,
    required this.totalFees,
    required this.pendingFees,
    required this.v,
  });

  GetStudentDataModel copyWith({
    String? id,
    List<String>? courses,
    int? paidInstallments,
    List<dynamic>? paidFees,
    bool? isCourseComplete,
    String? rollNumber,
    String? name,
    String? email,
    DateTime? joiningDate,
    DateTime? birthDate,
    String? education,
    String? mobileNumber,
    String? parentMobileNumber,
    String? address,
    String? courseDuration,
    int? totalInstallments,
    int? totalFees,
    int? pendingFees,
    int? v,
  }) =>
      GetStudentDataModel(
        id: id ?? this.id,
        courses: courses ?? this.courses,
        paidInstallments: paidInstallments ?? this.paidInstallments,
        paidFees: paidFees ?? this.paidFees,
        isCourseComplete: isCourseComplete ?? this.isCourseComplete,
        rollNumber: rollNumber ?? this.rollNumber,
        name: name ?? this.name,
        email: email ?? this.email,
        joiningDate: joiningDate ?? this.joiningDate,
        birthDate: birthDate ?? this.birthDate,
        education: education ?? this.education,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        parentMobileNumber: parentMobileNumber ?? this.parentMobileNumber,
        address: address ?? this.address,
        courseDuration: courseDuration ?? this.courseDuration,
        totalInstallments: totalInstallments ?? this.totalInstallments,
        totalFees: totalFees ?? this.totalFees,
        pendingFees: pendingFees ?? this.pendingFees,
        v: v ?? this.v,
      );

  factory GetStudentDataModel.fromJson(Map<String, dynamic> json) =>
      GetStudentDataModel(
        id: json["_id"],
        courses: List<String>.from(json["courses"].map((x) => x)),
        paidInstallments: json["paid_installments"],
        paidFees: List<dynamic>.from(json["paid_fees"].map((x) => x)),
        isCourseComplete: json["is_course_complete"],
        rollNumber: json["roll_number"],
        name: json["name"],
        email: json["email"],
        joiningDate: DateTime.parse(json["joining_date"]),
        birthDate: DateTime.parse(json["birth_date"]),
        education: json["education"],
        mobileNumber: json["mobile_number"],
        parentMobileNumber: json["parent_mobile_number"],
        address: json["address"],
        courseDuration: json["course_duration"],
        totalInstallments: json["total_installments"],
        totalFees: json["total_fees"],
        pendingFees: json["pending_fees"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "courses": List<dynamic>.from(courses.map((x) => x)),
        "paid_installments": paidInstallments,
        "paid_fees": List<dynamic>.from(paidFees.map((x) => x)),
        "is_course_complete": isCourseComplete,
        "roll_number": rollNumber,
        "name": name,
        "email": email,
        "joining_date": joiningDate.toIso8601String(),
        "birth_date": birthDate.toIso8601String(),
        "education": education,
        "mobile_number": mobileNumber,
        "parent_mobile_number": parentMobileNumber,
        "address": address,
        "course_duration": courseDuration,
        "total_installments": totalInstallments,
        "total_fees": totalFees,
        "pending_fees": pendingFees,
        "__v": v,
      };
}
