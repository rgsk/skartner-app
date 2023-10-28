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
