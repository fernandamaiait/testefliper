import 'package:flutter/material.dart';
import 'package:testefliper/design-system/theme/theme.dart';

import 'screens/timeline/timeline.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teste Fliper',
      theme: theme(),
      home: Timeline(),
    );
  }
}
