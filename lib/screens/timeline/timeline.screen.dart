import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:testefliper/api.dart';
import 'package:testefliper/screens/timeline/widgets/timeline-card.widget.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: Query(
        options: QueryOptions(
          documentNode: gql(getWealthSummaryQuery),
        ),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          return Scaffold(
            body: Center(
              child: result.hasException
                  ? Text(result.exception.toString())
                  //: result.loading
                  //     ? CircularProgressIndicator()
                  : TimelineCard(
                      '',
                      //       result.data['wealthSummary'],
                    ),
            ),
          );
        },
      ),
    );
  }
}
