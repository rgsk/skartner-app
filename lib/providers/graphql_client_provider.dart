import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/utils/environment_vars.dart';

// https://github.com/zino-hofmann/graphql-flutter/issues/729#issuecomment-1466752764
final url = '${EnvironmentVars.skartnerServer}/graphql';
final httpLink = HttpLink(url);
final wsUrl = url.replaceFirst('http', 'ws');
final webSocketLink = WebSocketLink(
  wsUrl,
  subProtocol: GraphQLProtocol.graphqlTransportWs,
);

final link = Link.split(
  (request) => request.isSubscription,
  webSocketLink,
  httpLink,
);

final graphQLClientProvider = Provider(
  (ref) => GraphQLClient(
    link: link,
    cache: GraphQLCache(
      store: InMemoryStore(),
    ),
  ),
);
