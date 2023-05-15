import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:base_app/models/setting.dart';

final List<Setting> settings = [
  BoolSetting(title: 'DarkMode', value: true),
  StringSetting(title: 'string title', value: 'test value'),
];

class SettingsNotifier extends StateNotifier<List<Setting>> {
  SettingsNotifier() : super(settings);

  void updateSettingState(String setting, Setting newSetting) {
    final newState = state.where((curSet) => curSet.title != newSetting.title).toList();

    state = [...newState, newSetting];
  }
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, List<Setting>>((ref) {
  return SettingsNotifier();
});
