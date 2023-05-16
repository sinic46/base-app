import 'package:base_app/data/themes.dart';
import 'package:base_app/models/setting.dart';
import 'package:base_app/providers/settings_provider.dart';
import 'package:base_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BoolSetting darkmode = ref.watch(settingsProvider).firstWhere((setting) => setting.title == 'DarkMode') as BoolSetting;
    final MultiChoiceSetting currentTheme = ref.watch(settingsProvider).firstWhere((setting) => setting.title == 'Theme') as MultiChoiceSetting;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeMap[currentTheme.value]!.lightTheme,
      darkTheme: themeMap[currentTheme.value]!.darkTheme,
      themeMode: darkmode.value ? ThemeMode.dark : ThemeMode.light,
      home: const Homepage(),
    );
  }
}
