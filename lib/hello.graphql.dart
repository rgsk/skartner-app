import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$ExampleQuery {
  Query$ExampleQuery({
    required this.hello,
    this.$__typename = 'Query',
  });

  factory Query$ExampleQuery.fromJson(Map<String, dynamic> json) {
    final l$hello = json['hello'];
    final l$$__typename = json['__typename'];
    return Query$ExampleQuery(
      hello:
          Query$ExampleQuery$hello.fromJson((l$hello as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ExampleQuery$hello hello;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hello = hello;
    _resultData['hello'] = l$hello.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hello = hello;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hello,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExampleQuery) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$hello = hello;
    final lOther$hello = other.hello;
    if (l$hello != lOther$hello) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ExampleQuery on Query$ExampleQuery {
  CopyWith$Query$ExampleQuery<Query$ExampleQuery> get copyWith =>
      CopyWith$Query$ExampleQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ExampleQuery<TRes> {
  factory CopyWith$Query$ExampleQuery(
    Query$ExampleQuery instance,
    TRes Function(Query$ExampleQuery) then,
  ) = _CopyWithImpl$Query$ExampleQuery;

  factory CopyWith$Query$ExampleQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$ExampleQuery;

  TRes call({
    Query$ExampleQuery$hello? hello,
    String? $__typename,
  });
  CopyWith$Query$ExampleQuery$hello<TRes> get hello;
}

class _CopyWithImpl$Query$ExampleQuery<TRes>
    implements CopyWith$Query$ExampleQuery<TRes> {
  _CopyWithImpl$Query$ExampleQuery(
    this._instance,
    this._then,
  );

  final Query$ExampleQuery _instance;

  final TRes Function(Query$ExampleQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hello = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExampleQuery(
        hello: hello == _undefined || hello == null
            ? _instance.hello
            : (hello as Query$ExampleQuery$hello),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ExampleQuery$hello<TRes> get hello {
    final local$hello = _instance.hello;
    return CopyWith$Query$ExampleQuery$hello(
        local$hello, (e) => call(hello: e));
  }
}

class _CopyWithStubImpl$Query$ExampleQuery<TRes>
    implements CopyWith$Query$ExampleQuery<TRes> {
  _CopyWithStubImpl$Query$ExampleQuery(this._res);

  TRes _res;

  call({
    Query$ExampleQuery$hello? hello,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ExampleQuery$hello<TRes> get hello =>
      CopyWith$Query$ExampleQuery$hello.stub(_res);
}

const documentNodeQueryExampleQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ExampleQuery'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'hello'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$ExampleQuery _parserFn$Query$ExampleQuery(Map<String, dynamic> data) =>
    Query$ExampleQuery.fromJson(data);
typedef OnQueryComplete$Query$ExampleQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ExampleQuery?,
);

class Options$Query$ExampleQuery
    extends graphql.QueryOptions<Query$ExampleQuery> {
  Options$Query$ExampleQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ExampleQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ExampleQuery? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$ExampleQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryExampleQuery,
          parserFn: _parserFn$Query$ExampleQuery,
        );

  final OnQueryComplete$Query$ExampleQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ExampleQuery
    extends graphql.WatchQueryOptions<Query$ExampleQuery> {
  WatchOptions$Query$ExampleQuery({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ExampleQuery? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryExampleQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ExampleQuery,
        );
}

class FetchMoreOptions$Query$ExampleQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ExampleQuery(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryExampleQuery,
        );
}

extension ClientExtension$Query$ExampleQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ExampleQuery>> query$ExampleQuery(
          [Options$Query$ExampleQuery? options]) async =>
      await this.query(options ?? Options$Query$ExampleQuery());
  graphql.ObservableQuery<Query$ExampleQuery> watchQuery$ExampleQuery(
          [WatchOptions$Query$ExampleQuery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ExampleQuery());
  void writeQuery$ExampleQuery({
    required Query$ExampleQuery data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryExampleQuery)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ExampleQuery? readQuery$ExampleQuery({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryExampleQuery)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ExampleQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ExampleQuery> useQuery$ExampleQuery(
        [Options$Query$ExampleQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$ExampleQuery());
graphql.ObservableQuery<Query$ExampleQuery> useWatchQuery$ExampleQuery(
        [WatchOptions$Query$ExampleQuery? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$ExampleQuery());

class Query$ExampleQuery$Widget
    extends graphql_flutter.Query<Query$ExampleQuery> {
  Query$ExampleQuery$Widget({
    widgets.Key? key,
    Options$Query$ExampleQuery? options,
    required graphql_flutter.QueryBuilder<Query$ExampleQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ExampleQuery(),
          builder: builder,
        );
}

class Query$ExampleQuery$hello {
  Query$ExampleQuery$hello({
    required this.message,
    this.$__typename = 'helloWorld',
  });

  factory Query$ExampleQuery$hello.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Query$ExampleQuery$hello(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ExampleQuery$hello) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ExampleQuery$hello
    on Query$ExampleQuery$hello {
  CopyWith$Query$ExampleQuery$hello<Query$ExampleQuery$hello> get copyWith =>
      CopyWith$Query$ExampleQuery$hello(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ExampleQuery$hello<TRes> {
  factory CopyWith$Query$ExampleQuery$hello(
    Query$ExampleQuery$hello instance,
    TRes Function(Query$ExampleQuery$hello) then,
  ) = _CopyWithImpl$Query$ExampleQuery$hello;

  factory CopyWith$Query$ExampleQuery$hello.stub(TRes res) =
      _CopyWithStubImpl$Query$ExampleQuery$hello;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ExampleQuery$hello<TRes>
    implements CopyWith$Query$ExampleQuery$hello<TRes> {
  _CopyWithImpl$Query$ExampleQuery$hello(
    this._instance,
    this._then,
  );

  final Query$ExampleQuery$hello _instance;

  final TRes Function(Query$ExampleQuery$hello) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ExampleQuery$hello(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ExampleQuery$hello<TRes>
    implements CopyWith$Query$ExampleQuery$hello<TRes> {
  _CopyWithStubImpl$Query$ExampleQuery$hello(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}
