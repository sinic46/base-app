import 'package:flutter/material.dart';

class Setting {
  Setting({
    required this.title,
    required this.description,
  });

  String title;

  String description;
}

class BoolSetting extends Setting {
  BoolSetting({
    required String title,
    required String description,
    required this.value,
  }) : super(title: title, description: description);

  bool value;

  BoolSetting updateValue(bool value) {
    this.value = value;
    return this;
  }
}

class StringSetting extends Setting {
  StringSetting({
    required String title,
    required String description,
    required this.value,
  }) : super(title: title, description: description);

  String value;

  StringSetting updateValue(String value) {
    this.value = value;
    return this;
  }
}

class MultiChoiceSetting extends Setting {
  MultiChoiceSetting({
    required String title,
    required String description,
    required this.value,
    required this.optionsList
  }) : super(title: title, description: description);

  String value;
  List<DropdownMenuItem> optionsList;

  MultiChoiceSetting updateValue(String value) {
    this.value = value;
    return this;
  }
}
