import 'package:base_app/models/setting.dart';
import 'package:base_app/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BoolString extends ConsumerWidget {
  const BoolString({
    super.key,
    required this.setting,
  });

  final BoolSetting setting;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Text(setting.title),
          Switch(
            value: setting.value,
            onChanged: (value) {
              ref.read(settingsProvider.notifier).updateSettingState(
                    settingname: setting.title,
                    newSetting: setting.updateValue(value),
                  );
            },
          )
        ],
      ),
    );
  }
}
