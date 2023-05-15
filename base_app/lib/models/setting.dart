class Setting {
  Setting({
    required this.title,
    this.description = '',
  });

  String title;

  String description;
}

class BoolSetting extends Setting {
  BoolSetting({
    required title,
    description,
    required this.value,
  }) : super(title: title, description: description);

  bool value;
}

class StringSetting extends Setting{
    StringSetting({
    required title,
    description,
    required this.value,
  }) : super(title: title, description: description);
  String value;
}