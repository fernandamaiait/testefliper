import 'package:flutter/material.dart';
import 'package:testefliper/design-system/theme/colors.dart';

import '../theme/spacers.dart';

class Card extends StatelessWidget {
  final String title;
  final Widget titleBarRightAction;
  final Widget body;
  // final Widget bottom;

  Card({
    @required this.title,
    this.titleBarRightAction,
    @required this.body,
    //   this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Spacers.sm),
      padding: EdgeInsets.all(Spacers.md),
      decoration: BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTitle(context),
          Padding(padding: EdgeInsets.only(bottom: Spacers.lg)),
          body,
          //if (bottom != null) _buildBottom(context),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }

  _buildBottom(BuildContext context) {
    return Row(
      children: [
        Divider(),
        // bottom,
      ],
    );
  }
}
