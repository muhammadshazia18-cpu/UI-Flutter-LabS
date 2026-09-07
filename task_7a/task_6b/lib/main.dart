import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: isDarkTheme
          ? ThemeData.dark()
          : ThemeData.light().copyWith(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.redAccent,
              ),
            ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('25WH5A0509_SHAZIA'),
        ),

        body: Column(
          children: <Widget>[
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Button'),
              icon: isDarkTheme
                  ? const Icon(Icons.dark_mode_rounded)
                  : const Icon(Icons.light_mode_rounded),
            ),

            const SizedBox(height: 20),

            SwitchListTile(
              title: const Text('Dark Theme'),
              value: isDarkTheme,
              onChanged: (value) {
                setState(() {
                  isDarkTheme = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}