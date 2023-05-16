import 'package:base_app/models/theme_pack.dart';
import 'package:flutter/material.dart';

class ThemePackDropdownValue extends StatelessWidget {
  const ThemePackDropdownValue({
    super.key,
    required this.themePack,
  });

  final ThemePack themePack;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          color: themePack.lightTheme.primaryColor,
          child: Text(
            themePack.name,
            style: themePack.lightTheme.textTheme.bodyMedium,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: themePack.darkTheme.primaryColor,
          child: Text(
            themePack.darkTheme.primaryColor.toString(),
            style: themePack.darkTheme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
