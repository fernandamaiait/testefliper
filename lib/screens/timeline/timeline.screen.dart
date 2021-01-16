import 'package:flutter/material.dart';
import 'package:testefliper/screens/timeline/widgets/timeline-card.widget.dart';

class Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TimelineCard(),

      // Container(
      //   color: Colors.blue,
      //   child: Text('teste'),
      // ),
    ));

    // Scaffold(
    //   body: Center(
    //       child: Text(
    //     'teste',
    //     style: Theme.of(context).textTheme.headline5,
    //   )), // Center(child: TimelineCard()),
    // );
  }
}
