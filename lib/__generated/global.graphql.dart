import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Subscription$NotificationReceived {
  factory Variables$Subscription$NotificationReceived(
          {required String userId}) =>
      Variables$Subscription$NotificationReceived._({
        r'userId': userId,
      });

  Variables$Subscription$NotificationReceived._(this._$data);

  factory Variables$Subscription$NotificationReceived.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Subscription$NotificationReceived._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Subscription$NotificationReceived<
          Variables$Subscription$NotificationReceived>
      get copyWith => CopyWith$Variables$Subscription$NotificationReceived(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$NotificationReceived) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }
}

abstract class CopyWith$Variables$Subscription$NotificationReceived<TRes> {
  factory CopyWith$Variables$Subscription$NotificationReceived(
    Variables$Subscription$NotificationReceived instance,
    TRes Function(Variables$Subscription$NotificationReceived) then,
  ) = _CopyWithImpl$Variables$Subscription$NotificationReceived;

  factory CopyWith$Variables$Subscription$NotificationReceived.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$NotificationReceived;

  TRes call({String? userId});
}

class _CopyWithImpl$Variables$Subscription$NotificationReceived<TRes>
    implements CopyWith$Variables$Subscription$NotificationReceived<TRes> {
  _CopyWithImpl$Variables$Subscription$NotificationReceived(
    this._instance,
    this._then,
  );

  final Variables$Subscription$NotificationReceived _instance;

  final TRes Function(Variables$Subscription$NotificationReceived) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Variables$Subscription$NotificationReceived._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$NotificationReceived<TRes>
    implements CopyWith$Variables$Subscription$NotificationReceived<TRes> {
  _CopyWithStubImpl$Variables$Subscription$NotificationReceived(this._res);

  TRes _res;

  call({String? userId}) => _res;
}

class Subscription$NotificationReceived {
  Subscription$NotificationReceived({this.notificationReceived});

  factory Subscription$NotificationReceived.fromJson(
      Map<String, dynamic> json) {
    final l$notificationReceived = json['notificationReceived'];
    return Subscription$NotificationReceived(
        notificationReceived: l$notificationReceived == null
            ? null
            : Subscription$NotificationReceived$notificationReceived.fromJson(
                (l$notificationReceived as Map<String, dynamic>)));
  }

  final Subscription$NotificationReceived$notificationReceived?
      notificationReceived;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notificationReceived = notificationReceived;
    _resultData['notificationReceived'] = l$notificationReceived?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notificationReceived = notificationReceived;
    return Object.hashAll([l$notificationReceived]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$NotificationReceived) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationReceived = notificationReceived;
    final lOther$notificationReceived = other.notificationReceived;
    if (l$notificationReceived != lOther$notificationReceived) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$NotificationReceived
    on Subscription$NotificationReceived {
  CopyWith$Subscription$NotificationReceived<Subscription$NotificationReceived>
      get copyWith => CopyWith$Subscription$NotificationReceived(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NotificationReceived<TRes> {
  factory CopyWith$Subscription$NotificationReceived(
    Subscription$NotificationReceived instance,
    TRes Function(Subscription$NotificationReceived) then,
  ) = _CopyWithImpl$Subscription$NotificationReceived;

  factory CopyWith$Subscription$NotificationReceived.stub(TRes res) =
      _CopyWithStubImpl$Subscription$NotificationReceived;

  TRes call(
      {Subscription$NotificationReceived$notificationReceived?
          notificationReceived});
  CopyWith$Subscription$NotificationReceived$notificationReceived<TRes>
      get notificationReceived;
}

class _CopyWithImpl$Subscription$NotificationReceived<TRes>
    implements CopyWith$Subscription$NotificationReceived<TRes> {
  _CopyWithImpl$Subscription$NotificationReceived(
    this._instance,
    this._then,
  );

  final Subscription$NotificationReceived _instance;

  final TRes Function(Subscription$NotificationReceived) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? notificationReceived = _undefined}) =>
      _then(Subscription$NotificationReceived(
          notificationReceived: notificationReceived == _undefined
              ? _instance.notificationReceived
              : (notificationReceived
                  as Subscription$NotificationReceived$notificationReceived?)));

  CopyWith$Subscription$NotificationReceived$notificationReceived<TRes>
      get notificationReceived {
    final local$notificationReceived = _instance.notificationReceived;
    return local$notificationReceived == null
        ? CopyWith$Subscription$NotificationReceived$notificationReceived.stub(
            _then(_instance))
        : CopyWith$Subscription$NotificationReceived$notificationReceived(
            local$notificationReceived, (e) => call(notificationReceived: e));
  }
}

class _CopyWithStubImpl$Subscription$NotificationReceived<TRes>
    implements CopyWith$Subscription$NotificationReceived<TRes> {
  _CopyWithStubImpl$Subscription$NotificationReceived(this._res);

  TRes _res;

  call(
          {Subscription$NotificationReceived$notificationReceived?
              notificationReceived}) =>
      _res;

  CopyWith$Subscription$NotificationReceived$notificationReceived<TRes>
      get notificationReceived =>
          CopyWith$Subscription$NotificationReceived$notificationReceived.stub(
              _res);
}

const documentNodeSubscriptionNotificationReceived = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'NotificationReceived'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'notificationReceived'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          )
        ],
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
            name: NameNode(value: 'userId'),
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
      )
    ]),
  ),
]);
Subscription$NotificationReceived _parserFn$Subscription$NotificationReceived(
        Map<String, dynamic> data) =>
    Subscription$NotificationReceived.fromJson(data);

class Options$Subscription$NotificationReceived
    extends graphql.SubscriptionOptions<Subscription$NotificationReceived> {
  Options$Subscription$NotificationReceived({
    String? operationName,
    required Variables$Subscription$NotificationReceived variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NotificationReceived? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionNotificationReceived,
          parserFn: _parserFn$Subscription$NotificationReceived,
        );
}

class WatchOptions$Subscription$NotificationReceived
    extends graphql.WatchQueryOptions<Subscription$NotificationReceived> {
  WatchOptions$Subscription$NotificationReceived({
    String? operationName,
    required Variables$Subscription$NotificationReceived variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$NotificationReceived? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionNotificationReceived,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$NotificationReceived,
        );
}

class FetchMoreOptions$Subscription$NotificationReceived
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$NotificationReceived({
    required graphql.UpdateQuery updateQuery,
    required Variables$Subscription$NotificationReceived variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeSubscriptionNotificationReceived,
        );
}

extension ClientExtension$Subscription$NotificationReceived
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$NotificationReceived>>
      subscribe$NotificationReceived(
              Options$Subscription$NotificationReceived options) =>
          this.subscribe(options);
  graphql.ObservableQuery<Subscription$NotificationReceived>
      watchSubscription$NotificationReceived(
              WatchOptions$Subscription$NotificationReceived options) =>
          this.watchQuery(options);
}

graphql.QueryResult<Subscription$NotificationReceived>
    useSubscription$NotificationReceived(
            Options$Subscription$NotificationReceived options) =>
        graphql_flutter.useSubscription(options);

class Subscription$NotificationReceived$Widget
    extends graphql_flutter.Subscription<Subscription$NotificationReceived> {
  Subscription$NotificationReceived$Widget({
    widgets.Key? key,
    required Options$Subscription$NotificationReceived options,
    required graphql_flutter
        .SubscriptionBuilder<Subscription$NotificationReceived>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$NotificationReceived>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options,
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$NotificationReceived$notificationReceived {
  Subscription$NotificationReceived$notificationReceived({
    required this.message,
    required this.userId,
    this.$__typename = 'Notification',
  });

  factory Subscription$NotificationReceived$notificationReceived.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Subscription$NotificationReceived$notificationReceived(
      message: (l$message as String),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$NotificationReceived$notificationReceived) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Subscription$NotificationReceived$notificationReceived
    on Subscription$NotificationReceived$notificationReceived {
  CopyWith$Subscription$NotificationReceived$notificationReceived<
          Subscription$NotificationReceived$notificationReceived>
      get copyWith =>
          CopyWith$Subscription$NotificationReceived$notificationReceived(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$NotificationReceived$notificationReceived<
    TRes> {
  factory CopyWith$Subscription$NotificationReceived$notificationReceived(
    Subscription$NotificationReceived$notificationReceived instance,
    TRes Function(Subscription$NotificationReceived$notificationReceived) then,
  ) = _CopyWithImpl$Subscription$NotificationReceived$notificationReceived;

  factory CopyWith$Subscription$NotificationReceived$notificationReceived.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$NotificationReceived$notificationReceived;

  TRes call({
    String? message,
    String? userId,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$NotificationReceived$notificationReceived<TRes>
    implements
        CopyWith$Subscription$NotificationReceived$notificationReceived<TRes> {
  _CopyWithImpl$Subscription$NotificationReceived$notificationReceived(
    this._instance,
    this._then,
  );

  final Subscription$NotificationReceived$notificationReceived _instance;

  final TRes Function(Subscription$NotificationReceived$notificationReceived)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$NotificationReceived$notificationReceived(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$NotificationReceived$notificationReceived<
        TRes>
    implements
        CopyWith$Subscription$NotificationReceived$notificationReceived<TRes> {
  _CopyWithStubImpl$Subscription$NotificationReceived$notificationReceived(
      this._res);

  TRes _res;

  call({
    String? message,
    String? userId,
    String? $__typename,
  }) =>
      _res;
}

class Query$Hello {
  Query$Hello({
    required this.hello,
    this.$__typename = 'Query',
  });

  factory Query$Hello.fromJson(Map<String, dynamic> json) {
    final l$hello = json['hello'];
    final l$$__typename = json['__typename'];
    return Query$Hello(
      hello: Query$Hello$hello.fromJson((l$hello as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Hello$hello hello;

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
    if (!(other is Query$Hello) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Hello on Query$Hello {
  CopyWith$Query$Hello<Query$Hello> get copyWith => CopyWith$Query$Hello(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Hello<TRes> {
  factory CopyWith$Query$Hello(
    Query$Hello instance,
    TRes Function(Query$Hello) then,
  ) = _CopyWithImpl$Query$Hello;

  factory CopyWith$Query$Hello.stub(TRes res) = _CopyWithStubImpl$Query$Hello;

  TRes call({
    Query$Hello$hello? hello,
    String? $__typename,
  });
  CopyWith$Query$Hello$hello<TRes> get hello;
}

class _CopyWithImpl$Query$Hello<TRes> implements CopyWith$Query$Hello<TRes> {
  _CopyWithImpl$Query$Hello(
    this._instance,
    this._then,
  );

  final Query$Hello _instance;

  final TRes Function(Query$Hello) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hello = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Hello(
        hello: hello == _undefined || hello == null
            ? _instance.hello
            : (hello as Query$Hello$hello),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Hello$hello<TRes> get hello {
    final local$hello = _instance.hello;
    return CopyWith$Query$Hello$hello(local$hello, (e) => call(hello: e));
  }
}

class _CopyWithStubImpl$Query$Hello<TRes>
    implements CopyWith$Query$Hello<TRes> {
  _CopyWithStubImpl$Query$Hello(this._res);

  TRes _res;

  call({
    Query$Hello$hello? hello,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Hello$hello<TRes> get hello =>
      CopyWith$Query$Hello$hello.stub(_res);
}

const documentNodeQueryHello = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Hello'),
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
Query$Hello _parserFn$Query$Hello(Map<String, dynamic> data) =>
    Query$Hello.fromJson(data);
typedef OnQueryComplete$Query$Hello = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Hello?,
);

class Options$Query$Hello extends graphql.QueryOptions<Query$Hello> {
  Options$Query$Hello({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Hello? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Hello? onComplete,
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
                    data == null ? null : _parserFn$Query$Hello(data),
                  ),
          onError: onError,
          document: documentNodeQueryHello,
          parserFn: _parserFn$Query$Hello,
        );

  final OnQueryComplete$Query$Hello? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Hello extends graphql.WatchQueryOptions<Query$Hello> {
  WatchOptions$Query$Hello({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Hello? typedOptimisticResult,
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
          document: documentNodeQueryHello,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Hello,
        );
}

class FetchMoreOptions$Query$Hello extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Hello({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryHello,
        );
}

extension ClientExtension$Query$Hello on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Hello>> query$Hello(
          [Options$Query$Hello? options]) async =>
      await this.query(options ?? Options$Query$Hello());
  graphql.ObservableQuery<Query$Hello> watchQuery$Hello(
          [WatchOptions$Query$Hello? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Hello());
  void writeQuery$Hello({
    required Query$Hello data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryHello)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Hello? readQuery$Hello({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryHello)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Hello.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Hello> useQuery$Hello(
        [Options$Query$Hello? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Hello());
graphql.ObservableQuery<Query$Hello> useWatchQuery$Hello(
        [WatchOptions$Query$Hello? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Hello());

class Query$Hello$Widget extends graphql_flutter.Query<Query$Hello> {
  Query$Hello$Widget({
    widgets.Key? key,
    Options$Query$Hello? options,
    required graphql_flutter.QueryBuilder<Query$Hello> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Hello(),
          builder: builder,
        );
}

class Query$Hello$hello {
  Query$Hello$hello({
    required this.message,
    this.$__typename = 'HelloWorld',
  });

  factory Query$Hello$hello.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Query$Hello$hello(
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
    if (!(other is Query$Hello$hello) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Hello$hello on Query$Hello$hello {
  CopyWith$Query$Hello$hello<Query$Hello$hello> get copyWith =>
      CopyWith$Query$Hello$hello(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Hello$hello<TRes> {
  factory CopyWith$Query$Hello$hello(
    Query$Hello$hello instance,
    TRes Function(Query$Hello$hello) then,
  ) = _CopyWithImpl$Query$Hello$hello;

  factory CopyWith$Query$Hello$hello.stub(TRes res) =
      _CopyWithStubImpl$Query$Hello$hello;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Hello$hello<TRes>
    implements CopyWith$Query$Hello$hello<TRes> {
  _CopyWithImpl$Query$Hello$hello(
    this._instance,
    this._then,
  );

  final Query$Hello$hello _instance;

  final TRes Function(Query$Hello$hello) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Hello$hello(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Hello$hello<TRes>
    implements CopyWith$Query$Hello$hello<TRes> {
  _CopyWithStubImpl$Query$Hello$hello(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Query$Authenticate {
  Query$Authenticate({
    required this.authenticate,
    this.$__typename = 'Query',
  });

  factory Query$Authenticate.fromJson(Map<String, dynamic> json) {
    final l$authenticate = json['authenticate'];
    final l$$__typename = json['__typename'];
    return Query$Authenticate(
      authenticate: Query$Authenticate$authenticate.fromJson(
          (l$authenticate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Authenticate$authenticate authenticate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$authenticate = authenticate;
    _resultData['authenticate'] = l$authenticate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$authenticate = authenticate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$authenticate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Authenticate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$authenticate = authenticate;
    final lOther$authenticate = other.authenticate;
    if (l$authenticate != lOther$authenticate) {
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

extension UtilityExtension$Query$Authenticate on Query$Authenticate {
  CopyWith$Query$Authenticate<Query$Authenticate> get copyWith =>
      CopyWith$Query$Authenticate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Authenticate<TRes> {
  factory CopyWith$Query$Authenticate(
    Query$Authenticate instance,
    TRes Function(Query$Authenticate) then,
  ) = _CopyWithImpl$Query$Authenticate;

  factory CopyWith$Query$Authenticate.stub(TRes res) =
      _CopyWithStubImpl$Query$Authenticate;

  TRes call({
    Query$Authenticate$authenticate? authenticate,
    String? $__typename,
  });
  CopyWith$Query$Authenticate$authenticate<TRes> get authenticate;
}

class _CopyWithImpl$Query$Authenticate<TRes>
    implements CopyWith$Query$Authenticate<TRes> {
  _CopyWithImpl$Query$Authenticate(
    this._instance,
    this._then,
  );

  final Query$Authenticate _instance;

  final TRes Function(Query$Authenticate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authenticate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Authenticate(
        authenticate: authenticate == _undefined || authenticate == null
            ? _instance.authenticate
            : (authenticate as Query$Authenticate$authenticate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Authenticate$authenticate<TRes> get authenticate {
    final local$authenticate = _instance.authenticate;
    return CopyWith$Query$Authenticate$authenticate(
        local$authenticate, (e) => call(authenticate: e));
  }
}

class _CopyWithStubImpl$Query$Authenticate<TRes>
    implements CopyWith$Query$Authenticate<TRes> {
  _CopyWithStubImpl$Query$Authenticate(this._res);

  TRes _res;

  call({
    Query$Authenticate$authenticate? authenticate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Authenticate$authenticate<TRes> get authenticate =>
      CopyWith$Query$Authenticate$authenticate.stub(_res);
}

const documentNodeQueryAuthenticate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Authenticate'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'authenticate'),
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
Query$Authenticate _parserFn$Query$Authenticate(Map<String, dynamic> data) =>
    Query$Authenticate.fromJson(data);
typedef OnQueryComplete$Query$Authenticate = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Authenticate?,
);

class Options$Query$Authenticate
    extends graphql.QueryOptions<Query$Authenticate> {
  Options$Query$Authenticate({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Authenticate? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Authenticate? onComplete,
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
                    data == null ? null : _parserFn$Query$Authenticate(data),
                  ),
          onError: onError,
          document: documentNodeQueryAuthenticate,
          parserFn: _parserFn$Query$Authenticate,
        );

  final OnQueryComplete$Query$Authenticate? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Authenticate
    extends graphql.WatchQueryOptions<Query$Authenticate> {
  WatchOptions$Query$Authenticate({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Authenticate? typedOptimisticResult,
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
          document: documentNodeQueryAuthenticate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Authenticate,
        );
}

class FetchMoreOptions$Query$Authenticate extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Authenticate(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAuthenticate,
        );
}

extension ClientExtension$Query$Authenticate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Authenticate>> query$Authenticate(
          [Options$Query$Authenticate? options]) async =>
      await this.query(options ?? Options$Query$Authenticate());
  graphql.ObservableQuery<Query$Authenticate> watchQuery$Authenticate(
          [WatchOptions$Query$Authenticate? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Authenticate());
  void writeQuery$Authenticate({
    required Query$Authenticate data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAuthenticate)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Authenticate? readQuery$Authenticate({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAuthenticate)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Authenticate.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Authenticate> useQuery$Authenticate(
        [Options$Query$Authenticate? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Authenticate());
graphql.ObservableQuery<Query$Authenticate> useWatchQuery$Authenticate(
        [WatchOptions$Query$Authenticate? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Authenticate());

class Query$Authenticate$Widget
    extends graphql_flutter.Query<Query$Authenticate> {
  Query$Authenticate$Widget({
    widgets.Key? key,
    Options$Query$Authenticate? options,
    required graphql_flutter.QueryBuilder<Query$Authenticate> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Authenticate(),
          builder: builder,
        );
}

class Query$Authenticate$authenticate {
  Query$Authenticate$authenticate({
    required this.message,
    this.$__typename = 'AuthenticateResponse',
  });

  factory Query$Authenticate$authenticate.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Query$Authenticate$authenticate(
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
    if (!(other is Query$Authenticate$authenticate) ||
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

extension UtilityExtension$Query$Authenticate$authenticate
    on Query$Authenticate$authenticate {
  CopyWith$Query$Authenticate$authenticate<Query$Authenticate$authenticate>
      get copyWith => CopyWith$Query$Authenticate$authenticate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Authenticate$authenticate<TRes> {
  factory CopyWith$Query$Authenticate$authenticate(
    Query$Authenticate$authenticate instance,
    TRes Function(Query$Authenticate$authenticate) then,
  ) = _CopyWithImpl$Query$Authenticate$authenticate;

  factory CopyWith$Query$Authenticate$authenticate.stub(TRes res) =
      _CopyWithStubImpl$Query$Authenticate$authenticate;

  TRes call({
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Authenticate$authenticate<TRes>
    implements CopyWith$Query$Authenticate$authenticate<TRes> {
  _CopyWithImpl$Query$Authenticate$authenticate(
    this._instance,
    this._then,
  );

  final Query$Authenticate$authenticate _instance;

  final TRes Function(Query$Authenticate$authenticate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Authenticate$authenticate(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Authenticate$authenticate<TRes>
    implements CopyWith$Query$Authenticate$authenticate<TRes> {
  _CopyWithStubImpl$Query$Authenticate$authenticate(this._res);

  TRes _res;

  call({
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$Truths {
  Subscription$Truths({this.truths});

  factory Subscription$Truths.fromJson(Map<String, dynamic> json) {
    final l$truths = json['truths'];
    return Subscription$Truths(truths: (l$truths as bool?));
  }

  final bool? truths;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$truths = truths;
    _resultData['truths'] = l$truths;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$truths = truths;
    return Object.hashAll([l$truths]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$Truths) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$truths = truths;
    final lOther$truths = other.truths;
    if (l$truths != lOther$truths) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$Truths on Subscription$Truths {
  CopyWith$Subscription$Truths<Subscription$Truths> get copyWith =>
      CopyWith$Subscription$Truths(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$Truths<TRes> {
  factory CopyWith$Subscription$Truths(
    Subscription$Truths instance,
    TRes Function(Subscription$Truths) then,
  ) = _CopyWithImpl$Subscription$Truths;

  factory CopyWith$Subscription$Truths.stub(TRes res) =
      _CopyWithStubImpl$Subscription$Truths;

  TRes call({bool? truths});
}

class _CopyWithImpl$Subscription$Truths<TRes>
    implements CopyWith$Subscription$Truths<TRes> {
  _CopyWithImpl$Subscription$Truths(
    this._instance,
    this._then,
  );

  final Subscription$Truths _instance;

  final TRes Function(Subscription$Truths) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? truths = _undefined}) => _then(Subscription$Truths(
      truths: truths == _undefined ? _instance.truths : (truths as bool?)));
}

class _CopyWithStubImpl$Subscription$Truths<TRes>
    implements CopyWith$Subscription$Truths<TRes> {
  _CopyWithStubImpl$Subscription$Truths(this._res);

  TRes _res;

  call({bool? truths}) => _res;
}

const documentNodeSubscriptionTruths = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'Truths'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'truths'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);
Subscription$Truths _parserFn$Subscription$Truths(Map<String, dynamic> data) =>
    Subscription$Truths.fromJson(data);

class Options$Subscription$Truths
    extends graphql.SubscriptionOptions<Subscription$Truths> {
  Options$Subscription$Truths({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$Truths? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionTruths,
          parserFn: _parserFn$Subscription$Truths,
        );
}

class WatchOptions$Subscription$Truths
    extends graphql.WatchQueryOptions<Subscription$Truths> {
  WatchOptions$Subscription$Truths({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$Truths? typedOptimisticResult,
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
          document: documentNodeSubscriptionTruths,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$Truths,
        );
}

class FetchMoreOptions$Subscription$Truths extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$Truths(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionTruths,
        );
}

extension ClientExtension$Subscription$Truths on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$Truths>> subscribe$Truths(
          [Options$Subscription$Truths? options]) =>
      this.subscribe(options ?? Options$Subscription$Truths());
  graphql.ObservableQuery<Subscription$Truths> watchSubscription$Truths(
          [WatchOptions$Subscription$Truths? options]) =>
      this.watchQuery(options ?? WatchOptions$Subscription$Truths());
}

graphql.QueryResult<Subscription$Truths> useSubscription$Truths(
        Options$Subscription$Truths options) =>
    graphql_flutter.useSubscription(options);

class Subscription$Truths$Widget
    extends graphql_flutter.Subscription<Subscription$Truths> {
  Subscription$Truths$Widget({
    widgets.Key? key,
    Options$Subscription$Truths? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$Truths> builder,
    graphql_flutter.OnSubscriptionResult<Subscription$Truths>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$Truths(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}
