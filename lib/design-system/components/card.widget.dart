import 'package:flutter/material.dart';
import 'package:testefliper/design-system/components/divider.widget.dart';
import 'package:testefliper/design-system/theme/colors.dart';

import '../theme/spacers.dart';

class Card extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget titleBarAction;
  final Widget bottom;

  Card(
    this.title, {
    @required this.body,
    this.titleBarAction,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Spacers.sm),
      padding: EdgeInsets.all(Spacers.md),
      decoration: BoxDecoration(
        color: ThemeColors.defaultBackground,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: ThemeColors.containerShadow,
            blurRadius: 1,
            offset: Offset(
              1,
              1,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTitle(context),
          Padding(padding: EdgeInsets.only(bottom: Spacers.lg)),
          body,
          if (bottom != null) _buildBottom(context),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        titleBarAction,
      ],
    );
  }

  _buildBottom(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Spacers.xs),
        CustomDivider(),
        SizedBox(height: Spacers.xs),
        Row(
          children: [
            bottom,
          ],
        ),
      ],
    );
  }
}
