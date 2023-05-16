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
    required title,
    required description,
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
    required title,
    required description,
    required this.value,
  }) : super(title: title, description: description);
  String value;
}
