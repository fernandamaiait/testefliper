import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    cache: InMemoryCache(),
    link: HttpLink(
      uri: 'https://harura-fliper-test.herokuapp.com/v1/graphql',
      headers: {
        'content-type': 'application/json',
        'x-hasura-admin-secret': 'fliperdevtest2020'
      },
    ),
  ),
);

final String getWealthSummaryQuery = """
query  {
  wealthSummary {
    cdi
    profitability
    total
  }
}
""";
