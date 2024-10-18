import 'package:flutter/cupertino.dart';

class SelectionModel {
  SelectionModel({
    this.id,
    this.name,
    this.image = '',
    this.isSelected = false,
    this.icon,
  });

  int? id;
  String? name;
  String? image;
  bool? isSelected;
  IconData? icon;
}
