import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/detalhes_view.dart';
import 'package:flutter_application_4/view/principal_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'principal',
      routes: {
        'principal': (context) => PrincipalView(),
        'detalhes': (context) => DetalhesView(),
      },
    );
  }
}
