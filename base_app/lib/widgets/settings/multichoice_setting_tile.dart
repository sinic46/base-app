import 'package:base_app/models/setting.dart';
import 'package:base_app/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MultiChoiceSettingTile extends ConsumerWidget {
  const MultiChoiceSettingTile({
    super.key,
    required this.setting,
  });

  final MultiChoiceSetting setting;

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  setting.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                DropdownButton(
                    value: setting.value,
                    items: setting.optionsList,
                    onChanged: (newValue) {
                      ref.read(settingsProvider.notifier).updateSettingState(
                            settingname: setting.title,
                            newSetting: setting.updateValue(newValue),
                          );
                    })
              ],
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
