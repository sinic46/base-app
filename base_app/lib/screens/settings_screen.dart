import 'package:base_app/models/setting.dart';
import 'package:base_app/providers/settings_provider.dart';
import 'package:base_app/widgets/settings/bool_setting.dart';
import 'package:base_app/widgets/settings/multichoice_setting_tile.dart';
import 'package:base_app/widgets/settings/string_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final settingsdata = ref.watch(settingsProvider);
    print('item Count ${settings.length}');
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView.builder(
        itemCount: settingsdata.length,
        itemBuilder: (BuildContext context, int index) {
          final setting = settingsdata[index];
          switch (setting.runtimeType) {
            case BoolSetting:
              {
                print('boolean setting found (${setting.title})');
                return BoolSettingTile(setting: (settingsdata[index]) as BoolSetting);
              }
            case StringSetting:
              {
                print('string setting found (${setting.title})');
                return StringSettingTile(setting: settingsdata[index] as StringSetting);
              }
            case MultiChoiceSetting:
              {
                print('multi choice setting found (${setting.title})');
                return MultiChoiceSettingTile(setting: settingsdata[index] as MultiChoiceSetting);
              }
          }
          return const Text('no more');
        },
      ),

      //StringSettingTile(setting: settingsdata[1] as StringSetting),
      //MultiChoiceSettingTile(setting: settingsdata[2] as MultiChoiceSetting)
    );
  }
}
