import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$sendSinglePrompt {
  factory Variables$Query$sendSinglePrompt({
    required String input,
    bool? skipCache,
    List<int>? indexesReturned,
    int? resultIndexFromCache,
  }) =>
      Variables$Query$sendSinglePrompt._({
        r'input': input,
        if (skipCache != null) r'skipCache': skipCache,
        if (indexesReturned != null) r'indexesReturned': indexesReturned,
        if (resultIndexFromCache != null)
          r'resultIndexFromCache': resultIndexFromCache,
      });

  Variables$Query$sendSinglePrompt._(this._$data);

  factory Variables$Query$sendSinglePrompt.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    if (data.containsKey('skipCache')) {
      final l$skipCache = data['skipCache'];
      result$data['skipCache'] = (l$skipCache as bool?);
    }
    if (data.containsKey('indexesReturned')) {
      final l$indexesReturned = data['indexesReturned'];
      result$data['indexesReturned'] = (l$indexesReturned as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    if (data.containsKey('resultIndexFromCache')) {
      final l$resultIndexFromCache = data['resultIndexFromCache'];
      result$data['resultIndexFromCache'] = (l$resultIndexFromCache as int?);
    }
    return Variables$Query$sendSinglePrompt._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  bool? get skipCache => (_$data['skipCache'] as bool?);

  List<int>? get indexesReturned => (_$data['indexesReturned'] as List<int>?);

  int? get resultIndexFromCache => (_$data['resultIndexFromCache'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    if (_$data.containsKey('skipCache')) {
      final l$skipCache = skipCache;
      result$data['skipCache'] = l$skipCache;
    }
    if (_$data.containsKey('indexesReturned')) {
      final l$indexesReturned = indexesReturned;
      result$data['indexesReturned'] =
          l$indexesReturned?.map((e) => e).toList();
    }
    if (_$data.containsKey('resultIndexFromCache')) {
      final l$resultIndexFromCache = resultIndexFromCache;
      result$data['resultIndexFromCache'] = l$resultIndexFromCache;
    }
    return result$data;
  }

  CopyWith$Variables$Query$sendSinglePrompt<Variables$Query$sendSinglePrompt>
      get copyWith => CopyWith$Variables$Query$sendSinglePrompt(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$sendSinglePrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$skipCache = skipCache;
    final lOther$skipCache = other.skipCache;
    if (_$data.containsKey('skipCache') !=
        other._$data.containsKey('skipCache')) {
      return false;
    }
    if (l$skipCache != lOther$skipCache) {
      return false;
    }
    final l$indexesReturned = indexesReturned;
    final lOther$indexesReturned = other.indexesReturned;
    if (_$data.containsKey('indexesReturned') !=
        other._$data.containsKey('indexesReturned')) {
      return false;
    }
    if (l$indexesReturned != null && lOther$indexesReturned != null) {
      if (l$indexesReturned.length != lOther$indexesReturned.length) {
        return false;
      }
      for (int i = 0; i < l$indexesReturned.length; i++) {
        final l$indexesReturned$entry = l$indexesReturned[i];
        final lOther$indexesReturned$entry = lOther$indexesReturned[i];
        if (l$indexesReturned$entry != lOther$indexesReturned$entry) {
          return false;
        }
      }
    } else if (l$indexesReturned != lOther$indexesReturned) {
      return false;
    }
    final l$resultIndexFromCache = resultIndexFromCache;
    final lOther$resultIndexFromCache = other.resultIndexFromCache;
    if (_$data.containsKey('resultIndexFromCache') !=
        other._$data.containsKey('resultIndexFromCache')) {
      return false;
    }
    if (l$resultIndexFromCache != lOther$resultIndexFromCache) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$skipCache = skipCache;
    final l$indexesReturned = indexesReturned;
    final l$resultIndexFromCache = resultIndexFromCache;
    return Object.hashAll([
      l$input,
      _$data.containsKey('skipCache') ? l$skipCache : const {},
      _$data.containsKey('indexesReturned')
          ? l$indexesReturned == null
              ? null
              : Object.hashAll(l$indexesReturned.map((v) => v))
          : const {},
      _$data.containsKey('resultIndexFromCache')
          ? l$resultIndexFromCache
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$sendSinglePrompt<TRes> {
  factory CopyWith$Variables$Query$sendSinglePrompt(
    Variables$Query$sendSinglePrompt instance,
    TRes Function(Variables$Query$sendSinglePrompt) then,
  ) = _CopyWithImpl$Variables$Query$sendSinglePrompt;

  factory CopyWith$Variables$Query$sendSinglePrompt.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$sendSinglePrompt;

  TRes call({
    String? input,
    bool? skipCache,
    List<int>? indexesReturned,
    int? resultIndexFromCache,
  });
}

class _CopyWithImpl$Variables$Query$sendSinglePrompt<TRes>
    implements CopyWith$Variables$Query$sendSinglePrompt<TRes> {
  _CopyWithImpl$Variables$Query$sendSinglePrompt(
    this._instance,
    this._then,
  );

  final Variables$Query$sendSinglePrompt _instance;

  final TRes Function(Variables$Query$sendSinglePrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? skipCache = _undefined,
    Object? indexesReturned = _undefined,
    Object? resultIndexFromCache = _undefined,
  }) =>
      _then(Variables$Query$sendSinglePrompt._({
        ..._instance._$data,
        if (input != _undefined && input != null) 'input': (input as String),
        if (skipCache != _undefined) 'skipCache': (skipCache as bool?),
        if (indexesReturned != _undefined)
          'indexesReturned': (indexesReturned as List<int>?),
        if (resultIndexFromCache != _undefined)
          'resultIndexFromCache': (resultIndexFromCache as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$sendSinglePrompt<TRes>
    implements CopyWith$Variables$Query$sendSinglePrompt<TRes> {
  _CopyWithStubImpl$Variables$Query$sendSinglePrompt(this._res);

  TRes _res;

  call({
    String? input,
    bool? skipCache,
    List<int>? indexesReturned,
    int? resultIndexFromCache,
  }) =>
      _res;
}

class Query$sendSinglePrompt {
  Query$sendSinglePrompt({
    required this.sendSinglePrompt,
    this.$__typename = 'Query',
  });

  factory Query$sendSinglePrompt.fromJson(Map<String, dynamic> json) {
    final l$sendSinglePrompt = json['sendSinglePrompt'];
    final l$$__typename = json['__typename'];
    return Query$sendSinglePrompt(
      sendSinglePrompt: Query$sendSinglePrompt$sendSinglePrompt.fromJson(
          (l$sendSinglePrompt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$sendSinglePrompt$sendSinglePrompt sendSinglePrompt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sendSinglePrompt = sendSinglePrompt;
    _resultData['sendSinglePrompt'] = l$sendSinglePrompt.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sendSinglePrompt = sendSinglePrompt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sendSinglePrompt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$sendSinglePrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sendSinglePrompt = sendSinglePrompt;
    final lOther$sendSinglePrompt = other.sendSinglePrompt;
    if (l$sendSinglePrompt != lOther$sendSinglePrompt) {
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

extension UtilityExtension$Query$sendSinglePrompt on Query$sendSinglePrompt {
  CopyWith$Query$sendSinglePrompt<Query$sendSinglePrompt> get copyWith =>
      CopyWith$Query$sendSinglePrompt(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$sendSinglePrompt<TRes> {
  factory CopyWith$Query$sendSinglePrompt(
    Query$sendSinglePrompt instance,
    TRes Function(Query$sendSinglePrompt) then,
  ) = _CopyWithImpl$Query$sendSinglePrompt;

  factory CopyWith$Query$sendSinglePrompt.stub(TRes res) =
      _CopyWithStubImpl$Query$sendSinglePrompt;

  TRes call({
    Query$sendSinglePrompt$sendSinglePrompt? sendSinglePrompt,
    String? $__typename,
  });
  CopyWith$Query$sendSinglePrompt$sendSinglePrompt<TRes> get sendSinglePrompt;
}

class _CopyWithImpl$Query$sendSinglePrompt<TRes>
    implements CopyWith$Query$sendSinglePrompt<TRes> {
  _CopyWithImpl$Query$sendSinglePrompt(
    this._instance,
    this._then,
  );

  final Query$sendSinglePrompt _instance;

  final TRes Function(Query$sendSinglePrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sendSinglePrompt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$sendSinglePrompt(
        sendSinglePrompt:
            sendSinglePrompt == _undefined || sendSinglePrompt == null
                ? _instance.sendSinglePrompt
                : (sendSinglePrompt as Query$sendSinglePrompt$sendSinglePrompt),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$sendSinglePrompt$sendSinglePrompt<TRes> get sendSinglePrompt {
    final local$sendSinglePrompt = _instance.sendSinglePrompt;
    return CopyWith$Query$sendSinglePrompt$sendSinglePrompt(
        local$sendSinglePrompt, (e) => call(sendSinglePrompt: e));
  }
}

class _CopyWithStubImpl$Query$sendSinglePrompt<TRes>
    implements CopyWith$Query$sendSinglePrompt<TRes> {
  _CopyWithStubImpl$Query$sendSinglePrompt(this._res);

  TRes _res;

  call({
    Query$sendSinglePrompt$sendSinglePrompt? sendSinglePrompt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$sendSinglePrompt$sendSinglePrompt<TRes> get sendSinglePrompt =>
      CopyWith$Query$sendSinglePrompt$sendSinglePrompt.stub(_res);
}

const documentNodeQuerysendSinglePrompt = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'sendSinglePrompt'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'skipCache')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'indexesReturned')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'resultIndexFromCache')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sendSinglePrompt'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'skipCache'),
            value: VariableNode(name: NameNode(value: 'skipCache')),
          ),
          ArgumentNode(
            name: NameNode(value: 'indexesReturned'),
            value: VariableNode(name: NameNode(value: 'indexesReturned')),
          ),
          ArgumentNode(
            name: NameNode(value: 'resultIndexFromCache'),
            value: VariableNode(name: NameNode(value: 'resultIndexFromCache')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'result'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'resultIndex'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'error'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalResultsInCache'),
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
Query$sendSinglePrompt _parserFn$Query$sendSinglePrompt(
        Map<String, dynamic> data) =>
    Query$sendSinglePrompt.fromJson(data);
typedef OnQueryComplete$Query$sendSinglePrompt = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$sendSinglePrompt?,
);

class Options$Query$sendSinglePrompt
    extends graphql.QueryOptions<Query$sendSinglePrompt> {
  Options$Query$sendSinglePrompt({
    String? operationName,
    required Variables$Query$sendSinglePrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$sendSinglePrompt? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$sendSinglePrompt? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null
                        ? null
                        : _parserFn$Query$sendSinglePrompt(data),
                  ),
          onError: onError,
          document: documentNodeQuerysendSinglePrompt,
          parserFn: _parserFn$Query$sendSinglePrompt,
        );

  final OnQueryComplete$Query$sendSinglePrompt? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$sendSinglePrompt
    extends graphql.WatchQueryOptions<Query$sendSinglePrompt> {
  WatchOptions$Query$sendSinglePrompt({
    String? operationName,
    required Variables$Query$sendSinglePrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$sendSinglePrompt? typedOptimisticResult,
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
          document: documentNodeQuerysendSinglePrompt,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$sendSinglePrompt,
        );
}

class FetchMoreOptions$Query$sendSinglePrompt extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$sendSinglePrompt({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$sendSinglePrompt variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerysendSinglePrompt,
        );
}

extension ClientExtension$Query$sendSinglePrompt on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$sendSinglePrompt>> query$sendSinglePrompt(
          Options$Query$sendSinglePrompt options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$sendSinglePrompt> watchQuery$sendSinglePrompt(
          WatchOptions$Query$sendSinglePrompt options) =>
      this.watchQuery(options);
  void writeQuery$sendSinglePrompt({
    required Query$sendSinglePrompt data,
    required Variables$Query$sendSinglePrompt variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerysendSinglePrompt),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$sendSinglePrompt? readQuery$sendSinglePrompt({
    required Variables$Query$sendSinglePrompt variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerysendSinglePrompt),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$sendSinglePrompt.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$sendSinglePrompt>
    useQuery$sendSinglePrompt(Options$Query$sendSinglePrompt options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$sendSinglePrompt> useWatchQuery$sendSinglePrompt(
        WatchOptions$Query$sendSinglePrompt options) =>
    graphql_flutter.useWatchQuery(options);

class Query$sendSinglePrompt$Widget
    extends graphql_flutter.Query<Query$sendSinglePrompt> {
  Query$sendSinglePrompt$Widget({
    widgets.Key? key,
    required Options$Query$sendSinglePrompt options,
    required graphql_flutter.QueryBuilder<Query$sendSinglePrompt> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$sendSinglePrompt$sendSinglePrompt {
  Query$sendSinglePrompt$sendSinglePrompt({
    this.result,
    this.resultIndex,
    this.error,
    required this.totalResultsInCache,
    this.$__typename = 'SendSinglePromptResponse',
  });

  factory Query$sendSinglePrompt$sendSinglePrompt.fromJson(
      Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$resultIndex = json['resultIndex'];
    final l$error = json['error'];
    final l$totalResultsInCache = json['totalResultsInCache'];
    final l$$__typename = json['__typename'];
    return Query$sendSinglePrompt$sendSinglePrompt(
      result: (l$result as String?),
      resultIndex: (l$resultIndex as int?),
      error: (l$error as String?),
      totalResultsInCache: (l$totalResultsInCache as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? result;

  final int? resultIndex;

  final String? error;

  final int totalResultsInCache;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result;
    final l$resultIndex = resultIndex;
    _resultData['resultIndex'] = l$resultIndex;
    final l$error = error;
    _resultData['error'] = l$error;
    final l$totalResultsInCache = totalResultsInCache;
    _resultData['totalResultsInCache'] = l$totalResultsInCache;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$resultIndex = resultIndex;
    final l$error = error;
    final l$totalResultsInCache = totalResultsInCache;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$result,
      l$resultIndex,
      l$error,
      l$totalResultsInCache,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$sendSinglePrompt$sendSinglePrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
      return false;
    }
    final l$resultIndex = resultIndex;
    final lOther$resultIndex = other.resultIndex;
    if (l$resultIndex != lOther$resultIndex) {
      return false;
    }
    final l$error = error;
    final lOther$error = other.error;
    if (l$error != lOther$error) {
      return false;
    }
    final l$totalResultsInCache = totalResultsInCache;
    final lOther$totalResultsInCache = other.totalResultsInCache;
    if (l$totalResultsInCache != lOther$totalResultsInCache) {
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

extension UtilityExtension$Query$sendSinglePrompt$sendSinglePrompt
    on Query$sendSinglePrompt$sendSinglePrompt {
  CopyWith$Query$sendSinglePrompt$sendSinglePrompt<
          Query$sendSinglePrompt$sendSinglePrompt>
      get copyWith => CopyWith$Query$sendSinglePrompt$sendSinglePrompt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$sendSinglePrompt$sendSinglePrompt<TRes> {
  factory CopyWith$Query$sendSinglePrompt$sendSinglePrompt(
    Query$sendSinglePrompt$sendSinglePrompt instance,
    TRes Function(Query$sendSinglePrompt$sendSinglePrompt) then,
  ) = _CopyWithImpl$Query$sendSinglePrompt$sendSinglePrompt;

  factory CopyWith$Query$sendSinglePrompt$sendSinglePrompt.stub(TRes res) =
      _CopyWithStubImpl$Query$sendSinglePrompt$sendSinglePrompt;

  TRes call({
    String? result,
    int? resultIndex,
    String? error,
    int? totalResultsInCache,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$sendSinglePrompt$sendSinglePrompt<TRes>
    implements CopyWith$Query$sendSinglePrompt$sendSinglePrompt<TRes> {
  _CopyWithImpl$Query$sendSinglePrompt$sendSinglePrompt(
    this._instance,
    this._then,
  );

  final Query$sendSinglePrompt$sendSinglePrompt _instance;

  final TRes Function(Query$sendSinglePrompt$sendSinglePrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? resultIndex = _undefined,
    Object? error = _undefined,
    Object? totalResultsInCache = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$sendSinglePrompt$sendSinglePrompt(
        result: result == _undefined ? _instance.result : (result as String?),
        resultIndex: resultIndex == _undefined
            ? _instance.resultIndex
            : (resultIndex as int?),
        error: error == _undefined ? _instance.error : (error as String?),
        totalResultsInCache:
            totalResultsInCache == _undefined || totalResultsInCache == null
                ? _instance.totalResultsInCache
                : (totalResultsInCache as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$sendSinglePrompt$sendSinglePrompt<TRes>
    implements CopyWith$Query$sendSinglePrompt$sendSinglePrompt<TRes> {
  _CopyWithStubImpl$Query$sendSinglePrompt$sendSinglePrompt(this._res);

  TRes _res;

  call({
    String? result,
    int? resultIndex,
    String? error,
    int? totalResultsInCache,
    String? $__typename,
  }) =>
      _res;
}
