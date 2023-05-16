import 'package:base_app/models/setting.dart';
import 'package:base_app/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StringSettingTile extends ConsumerWidget {
  const StringSettingTile({
    super.key,
    required this.setting,
  });

  final StringSetting setting;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            child: Expanded(
              child: TextFormField(
                decoration: InputDecoration(labelText: setting.title),
                initialValue: setting.value,
                onChanged: (value) {
                  ref.read(settingsProvider.notifier).updateSettingState(
                        settingname: setting.title,
                        newSetting: setting.updateValue(value),
                      );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
