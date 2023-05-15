import 'package:base_app/models/setting.dart';
import 'package:flutter/material.dart';

class BoolString extends StatelessWidget {
  const BoolString({
    super.key,
    required this.setting,
  });

  final BoolSetting setting;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(setting.title),
      ],
    );
  }
}
