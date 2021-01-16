import 'package:flutter/material.dart';
import 'package:testefliper/design-system/theme.dart';

import 'screens/main.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste Fliper',
      theme: theme(),
      home: Main(),
    );
  }
}
