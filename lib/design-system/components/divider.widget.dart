import 'package:flutter/material.dart';
import 'package:testefliper/design-system/theme/colors.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 10,
      color: ThemeColors.divider,
    );
  }
}
