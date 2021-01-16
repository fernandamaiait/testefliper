import 'package:flutter/material.dart';
import 'package:testefliper/design-system/components/card.widget.dart'
    as dsCard;

class TimelineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return dsCard.Card(
      title: 'Seu resumo',
      body: _buildCardBody(context),
    );
  }

  Widget _buildCardBody(BuildContext context) {
    return Column(
      children: [
        Text(
          'Valor investido',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
