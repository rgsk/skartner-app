import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skartner_app/providers/firebase_providers.dart';
import 'package:skartner_app/utils/environment_vars.dart';

final graphQLClientProvider = Provider(
  (ref) {
// https://github.com/zino-hofmann/graphql-flutter/issues/729#issuecomment-1466752764
    final url = '${EnvironmentVars.skartnerServer}/graphql';
    final httpLink = HttpLink(url);
    final authLink = AuthLink(
      getToken: () async {
        final auth = ref.watch(authProvider);
        final token = await auth.currentUser?.getIdToken();

        // we can do below also
        // final token = ref.watch(tokenProvider);
        if (token != null) {
          return 'Bearer ${token}';
        }
        return null;
      },
      headerKey: 'Authorization',
    );
    final link = authLink.concat(httpLink);
    final wsUrl = url.replaceFirst('http', 'ws');
    final webSocketLink = WebSocketLink(
      wsUrl,
      subProtocol: GraphQLProtocol.graphqlTransportWs,
      config: SocketClientConfig(initialPayload: () async {
        final auth = ref.watch(authProvider);
        final token = await auth.currentUser?.getIdToken();
        return {
          'token': token,
        };
      }),
    );

    final splitLink = Link.split(
      (request) => request.isSubscription,
      webSocketLink,
      link,
    );

    return GraphQLClient(
      link: splitLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  },
);
