import 'package:base_app/models/setting.dart';
import 'package:base_app/providers/settings_provider.dart';
import 'package:base_app/widgets/settings/bool_setting.dart';
import 'package:base_app/widgets/settings/string_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   ref.read(settingsProvider);
  // }

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
                print('boolean setting found');
                return BoolSettingTile(setting: (settingsdata[index]) as BoolSetting);
              }
            case StringSetting:
              {
                print('string setting found');
                return StringSettingTile(setting: settingsdata[index] as StringSetting);
              }
          }
          return const Text('no more');
        },
      ),
    );
  }
}
