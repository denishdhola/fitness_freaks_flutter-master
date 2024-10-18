// To parse this JSON data, do
//
//     final inquiryDataModel = inquiryDataModelFromJson(jsonString);

import 'dart:convert';

List<InquiryDataModel> inquiryDataModelListFromJson(String str) =>
    List<InquiryDataModel>.from(
        json.decode(str).map((x) => InquiryDataModel.fromJson(x)));

String inquiryDataModelListToJson(List<InquiryDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

InquiryDataModel inquiryDataModelFromJson(String str) =>
    InquiryDataModel.fromJson(json.decode(str));

String inquiryDataModelToJson(InquiryDataModel data) =>
    json.encode(data.toJson());

class InquiryDataModel {
  final List<String>? courses;
  final String? id;
  final int? inquiryNumber;
  final DateTime? inquiryDate;
  final DateTime? followUpDate;
  final String? mobileNumber;
  final String? name;
  final String? reference;
  final String? inquiryStatus;
  final String? note;
  final int? v;

  InquiryDataModel({
    this.courses,
    this.id,
    this.inquiryNumber,
    this.inquiryDate,
    this.followUpDate,
    this.mobileNumber,
    this.name,
    this.reference,
    this.inquiryStatus,
    this.note,
    this.v,
  });

  InquiryDataModel copyWith({
    List<String>? courses,
    String? id,
    int? inquiryNumber,
    DateTime? inquiryDate,
    DateTime? followUpDate,
    String? mobileNumber,
    String? name,
    String? reference,
    String? inquiryStatus,
    String? note,
    int? v,
  }) =>
      InquiryDataModel(
        courses: courses ?? this.courses,
        id: id ?? this.id,
        inquiryNumber: inquiryNumber ?? this.inquiryNumber,
        inquiryDate: inquiryDate ?? this.inquiryDate,
        followUpDate: followUpDate ?? this.followUpDate,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        name: name ?? this.name,
        reference: reference ?? this.reference,
        inquiryStatus: inquiryStatus ?? this.inquiryStatus,
        note: note ?? this.note,
        v: v ?? this.v,
      );

  factory InquiryDataModel.fromJson(Map<String, dynamic> json) =>
      InquiryDataModel(
        courses: json["courses"] == null
            ? []
            : List<String>.from(json["courses"]!.map((x) => x)),
        id: json["_id"],
        inquiryNumber: json["inquiry_number"],
        inquiryDate: json["inquiry_date"] == null
            ? null
            : DateTime.parse(json["inquiry_date"]),
        followUpDate: json["follow_up_date"] == null
            ? null
            : DateTime.parse(json["follow_up_date"]),
        mobileNumber: json["mobile_number"],
        name: json["name"],
        reference: json["reference"],
        inquiryStatus: json["inquiry_status"],
        note: json["note"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "courses":
            courses == null ? [] : List<dynamic>.from(courses!.map((x) => x)),
        "_id": id,
        "inquiry_number": inquiryNumber,
        "inquiry_date": inquiryDate?.toIso8601String(),
        "follow_up_date": followUpDate?.toIso8601String(),
        "mobile_number": mobileNumber,
        "name": name,
        "reference": reference,
        "inquiry_status": inquiryStatus,
        "note": note,
        "__v": v,
      };
}
