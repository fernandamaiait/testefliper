import 'package:flutter/material.dart';
import 'package:testefliper/design-system/components/button.widget.dart';
import 'package:testefliper/design-system/components/card.widget.dart'
    as dsCard;
import 'package:testefliper/design-system/theme/colors.dart';
import 'package:testefliper/design-system/theme/spacers.dart';

class TimelineCard extends StatefulWidget {
  final data;

  TimelineCard(this.data);

  @override
  _TimelineCardState createState() => _TimelineCardState();
}

class _TimelineCardState extends State<TimelineCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return dsCard.Card(
      'Seu resumo',
      titleBarAction: _builtTitleBarAction(context),
      body: _buildCardBody(context),
      bottom: _buildCardBottom(context),
    );
  }

  _builtTitleBarAction(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert,
        color: ThemeColors.greyIcon,
      ),
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
            child: GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.help,
                color: ThemeColors.greyIcon,
              ),
              Text(
                'Ajuda',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        )),
      ],
    );
  }

  _buildCardBody(BuildContext context) {
    return Column(
      children: [
        _buildCardBodyHeadline(context),
        _buildCardBodyContent(context),
      ],
    );
  }

  _buildCardBodyHeadline(BuildContext context) {
    return Column(
      children: [
        Text(
          'Valor investido',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(
          height: Spacers.xs,
        ),
        Text(
          'R\$ 3.200.876,00',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: Spacers.lg,
        )
      ],
    );
  }

  _buildCardBodyContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildContentRow(context, 'Rentabilidade/mês', '2,767%'),
        _buildContentRow(context, 'CDI', '3,45%'),
        _buildContentRow(context, 'Ganho/mês', 'R\$ 1.833,00'),
        SizedBox(
          height: Spacers.xs,
        )
      ],
    );
  }

  _buildContentRow(BuildContext context, String label, String data) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              data,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        SizedBox(
          height: Spacers.xs,
        )
      ],
    );
  }

  _buildCardBottom(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Button('Ver mais', () => {}),
        ],
      ),
    );
  }
}
