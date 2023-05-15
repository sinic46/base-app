import 'package:base_app/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(settingsProvider);
  }

  @override
  Widget build(BuildContext context) {
    final settingsdata = ref.watch(settingsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Column(children: [
        
      ]),
    );
  }
}
