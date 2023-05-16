import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:base_app/models/setting.dart';

final List<Setting> settings = [
  BoolSetting(title: 'DarkMode', description: 'turns on dark mode.', value: true),
  StringSetting(title: 'string title', description: 'testing setting', value: 'test value'),
];

class SettingsNotifier extends StateNotifier<List<Setting>> {
  SettingsNotifier() : super(settings);

  void updateSettingState({
    required String settingname,
    required Setting newSetting,
  }) {
    //TODO: remove print.
    // print('$settingname value has now changed to ${(newSetting as BoolSetting).value.toString()}');

    final newState = state.where((curSet) => curSet.title != newSetting.title).toList();

    state = [...newState, newSetting];
  }
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, List<Setting>>((ref) {
  return SettingsNotifier();
});
