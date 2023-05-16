import 'package:base_app/widgets/theme_pack_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:base_app/models/setting.dart';
import 'package:base_app/data/themes.dart';

final List<Setting> settings = [
  BoolSetting(title: 'DarkMode', description: 'turns on dark mode.', value: true),
  MultiChoiceSetting(
      title: 'Theme',
      description: 'A Choice of themes to chose from.',
      value: 'Default',
      optionsList: themeMap.entries.map((entry) => (DropdownMenuItem(value: entry.key, child: ThemePackDropdownValue(themePack: entry.value)))).toList()),
  //[DropdownMenuItem(value: 'Default', child: Text('themeMap.entries.first.value.name'))]),
  StringSetting(title: 'string title', description: 'testing setting', value: 'test value'),
  MultiChoiceSetting(title: 'country', description: 'which country you from?', value: 'UK', optionsList: const [
    DropdownMenuItem(value: 'UK', child: Text('UK')),
    DropdownMenuItem(value: 'USA', child: Text('USA')),
    DropdownMenuItem(value: 'France', child: Text('France')),
    DropdownMenuItem(value: 'Spain', child: Text('Spain')),
  ])
];

class SettingsNotifier extends StateNotifier<List<Setting>> {
  SettingsNotifier() : super(settings);

  void updateSettingState({
    required String settingname,
    required Setting newSetting,
  }) {
    //TODO: remove print.
    // print('$settingname value has now changed to ${(newSetting as BoolSetting).value.toString()}');

    final newState = [...state];

    newState[newState.indexWhere((curSet) => curSet.title == settingname)] = newSetting;

    state = [...newState];
  }
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, List<Setting>>((ref) {
  return SettingsNotifier();
});
