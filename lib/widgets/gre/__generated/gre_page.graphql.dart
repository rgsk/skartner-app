import '../../../__generated/schema.graphql.dart';
import '../../gre_history/__generated/gre_history_page.graphql.dart';
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

class Variables$Mutation$createGreWord {
  factory Variables$Mutation$createGreWord({
    required String spelling,
    required String promptInput,
    required String promptResponse,
    required String userId,
    List<Input$GreWordTagWhereUniqueInput?>? greWordTags,
  }) =>
      Variables$Mutation$createGreWord._({
        r'spelling': spelling,
        r'promptInput': promptInput,
        r'promptResponse': promptResponse,
        r'userId': userId,
        if (greWordTags != null) r'greWordTags': greWordTags,
      });

  Variables$Mutation$createGreWord._(this._$data);

  factory Variables$Mutation$createGreWord.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$spelling = data['spelling'];
    result$data['spelling'] = (l$spelling as String);
    final l$promptInput = data['promptInput'];
    result$data['promptInput'] = (l$promptInput as String);
    final l$promptResponse = data['promptResponse'];
    result$data['promptResponse'] = (l$promptResponse as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    if (data.containsKey('greWordTags')) {
      final l$greWordTags = data['greWordTags'];
      result$data['greWordTags'] = (l$greWordTags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GreWordTagWhereUniqueInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Mutation$createGreWord._(result$data);
  }

  Map<String, dynamic> _$data;

  String get spelling => (_$data['spelling'] as String);

  String get promptInput => (_$data['promptInput'] as String);

  String get promptResponse => (_$data['promptResponse'] as String);

  String get userId => (_$data['userId'] as String);

  List<Input$GreWordTagWhereUniqueInput?>? get greWordTags =>
      (_$data['greWordTags'] as List<Input$GreWordTagWhereUniqueInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$spelling = spelling;
    result$data['spelling'] = l$spelling;
    final l$promptInput = promptInput;
    result$data['promptInput'] = l$promptInput;
    final l$promptResponse = promptResponse;
    result$data['promptResponse'] = l$promptResponse;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    if (_$data.containsKey('greWordTags')) {
      final l$greWordTags = greWordTags;
      result$data['greWordTags'] =
          l$greWordTags?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$createGreWord<Variables$Mutation$createGreWord>
      get copyWith => CopyWith$Variables$Mutation$createGreWord(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$createGreWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$spelling = spelling;
    final lOther$spelling = other.spelling;
    if (l$spelling != lOther$spelling) {
      return false;
    }
    final l$promptInput = promptInput;
    final lOther$promptInput = other.promptInput;
    if (l$promptInput != lOther$promptInput) {
      return false;
    }
    final l$promptResponse = promptResponse;
    final lOther$promptResponse = other.promptResponse;
    if (l$promptResponse != lOther$promptResponse) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$greWordTags = greWordTags;
    final lOther$greWordTags = other.greWordTags;
    if (_$data.containsKey('greWordTags') !=
        other._$data.containsKey('greWordTags')) {
      return false;
    }
    if (l$greWordTags != null && lOther$greWordTags != null) {
      if (l$greWordTags.length != lOther$greWordTags.length) {
        return false;
      }
      for (int i = 0; i < l$greWordTags.length; i++) {
        final l$greWordTags$entry = l$greWordTags[i];
        final lOther$greWordTags$entry = lOther$greWordTags[i];
        if (l$greWordTags$entry != lOther$greWordTags$entry) {
          return false;
        }
      }
    } else if (l$greWordTags != lOther$greWordTags) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$spelling = spelling;
    final l$promptInput = promptInput;
    final l$promptResponse = promptResponse;
    final l$userId = userId;
    final l$greWordTags = greWordTags;
    return Object.hashAll([
      l$spelling,
      l$promptInput,
      l$promptResponse,
      l$userId,
      _$data.containsKey('greWordTags')
          ? l$greWordTags == null
              ? null
              : Object.hashAll(l$greWordTags.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$createGreWord<TRes> {
  factory CopyWith$Variables$Mutation$createGreWord(
    Variables$Mutation$createGreWord instance,
    TRes Function(Variables$Mutation$createGreWord) then,
  ) = _CopyWithImpl$Variables$Mutation$createGreWord;

  factory CopyWith$Variables$Mutation$createGreWord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createGreWord;

  TRes call({
    String? spelling,
    String? promptInput,
    String? promptResponse,
    String? userId,
    List<Input$GreWordTagWhereUniqueInput?>? greWordTags,
  });
}

class _CopyWithImpl$Variables$Mutation$createGreWord<TRes>
    implements CopyWith$Variables$Mutation$createGreWord<TRes> {
  _CopyWithImpl$Variables$Mutation$createGreWord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createGreWord _instance;

  final TRes Function(Variables$Mutation$createGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? spelling = _undefined,
    Object? promptInput = _undefined,
    Object? promptResponse = _undefined,
    Object? userId = _undefined,
    Object? greWordTags = _undefined,
  }) =>
      _then(Variables$Mutation$createGreWord._({
        ..._instance._$data,
        if (spelling != _undefined && spelling != null)
          'spelling': (spelling as String),
        if (promptInput != _undefined && promptInput != null)
          'promptInput': (promptInput as String),
        if (promptResponse != _undefined && promptResponse != null)
          'promptResponse': (promptResponse as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (greWordTags != _undefined)
          'greWordTags':
              (greWordTags as List<Input$GreWordTagWhereUniqueInput?>?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createGreWord<TRes>
    implements CopyWith$Variables$Mutation$createGreWord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createGreWord(this._res);

  TRes _res;

  call({
    String? spelling,
    String? promptInput,
    String? promptResponse,
    String? userId,
    List<Input$GreWordTagWhereUniqueInput?>? greWordTags,
  }) =>
      _res;
}

class Mutation$createGreWord {
  Mutation$createGreWord({
    required this.createGreWord,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createGreWord.fromJson(Map<String, dynamic> json) {
    final l$createGreWord = json['createGreWord'];
    final l$$__typename = json['__typename'];
    return Mutation$createGreWord(
      createGreWord: Fragment$GreWordFields.fromJson(
          (l$createGreWord as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$GreWordFields createGreWord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createGreWord = createGreWord;
    _resultData['createGreWord'] = l$createGreWord.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createGreWord = createGreWord;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createGreWord,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$createGreWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createGreWord = createGreWord;
    final lOther$createGreWord = other.createGreWord;
    if (l$createGreWord != lOther$createGreWord) {
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

extension UtilityExtension$Mutation$createGreWord on Mutation$createGreWord {
  CopyWith$Mutation$createGreWord<Mutation$createGreWord> get copyWith =>
      CopyWith$Mutation$createGreWord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createGreWord<TRes> {
  factory CopyWith$Mutation$createGreWord(
    Mutation$createGreWord instance,
    TRes Function(Mutation$createGreWord) then,
  ) = _CopyWithImpl$Mutation$createGreWord;

  factory CopyWith$Mutation$createGreWord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createGreWord;

  TRes call({
    Fragment$GreWordFields? createGreWord,
    String? $__typename,
  });
  CopyWith$Fragment$GreWordFields<TRes> get createGreWord;
}

class _CopyWithImpl$Mutation$createGreWord<TRes>
    implements CopyWith$Mutation$createGreWord<TRes> {
  _CopyWithImpl$Mutation$createGreWord(
    this._instance,
    this._then,
  );

  final Mutation$createGreWord _instance;

  final TRes Function(Mutation$createGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createGreWord = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createGreWord(
        createGreWord: createGreWord == _undefined || createGreWord == null
            ? _instance.createGreWord
            : (createGreWord as Fragment$GreWordFields),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$GreWordFields<TRes> get createGreWord {
    final local$createGreWord = _instance.createGreWord;
    return CopyWith$Fragment$GreWordFields(
        local$createGreWord, (e) => call(createGreWord: e));
  }
}

class _CopyWithStubImpl$Mutation$createGreWord<TRes>
    implements CopyWith$Mutation$createGreWord<TRes> {
  _CopyWithStubImpl$Mutation$createGreWord(this._res);

  TRes _res;

  call({
    Fragment$GreWordFields? createGreWord,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$GreWordFields<TRes> get createGreWord =>
      CopyWith$Fragment$GreWordFields.stub(_res);
}

const documentNodeMutationcreateGreWord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createGreWord'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'spelling')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'promptInput')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'promptResponse')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'greWordTags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'GreWordTagWhereUniqueInput'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createGreWord'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'spelling'),
            value: VariableNode(name: NameNode(value: 'spelling')),
          ),
          ArgumentNode(
            name: NameNode(value: 'promptInput'),
            value: VariableNode(name: NameNode(value: 'promptInput')),
          ),
          ArgumentNode(
            name: NameNode(value: 'promptResponse'),
            value: VariableNode(name: NameNode(value: 'promptResponse')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'greWordTags'),
            value: VariableNode(name: NameNode(value: 'greWordTags')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'GreWordFields'),
            directives: [],
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
  fragmentDefinitionGreWordFields,
]);
Mutation$createGreWord _parserFn$Mutation$createGreWord(
        Map<String, dynamic> data) =>
    Mutation$createGreWord.fromJson(data);
typedef OnMutationCompleted$Mutation$createGreWord = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$createGreWord?,
);

class Options$Mutation$createGreWord
    extends graphql.MutationOptions<Mutation$createGreWord> {
  Options$Mutation$createGreWord({
    String? operationName,
    required Variables$Mutation$createGreWord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createGreWord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createGreWord? onCompleted,
    graphql.OnMutationUpdate<Mutation$createGreWord>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createGreWord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateGreWord,
          parserFn: _parserFn$Mutation$createGreWord,
        );

  final OnMutationCompleted$Mutation$createGreWord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createGreWord
    extends graphql.WatchQueryOptions<Mutation$createGreWord> {
  WatchOptions$Mutation$createGreWord({
    String? operationName,
    required Variables$Mutation$createGreWord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createGreWord? typedOptimisticResult,
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
          document: documentNodeMutationcreateGreWord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createGreWord,
        );
}

extension ClientExtension$Mutation$createGreWord on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createGreWord>> mutate$createGreWord(
          Options$Mutation$createGreWord options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$createGreWord> watchMutation$createGreWord(
          WatchOptions$Mutation$createGreWord options) =>
      this.watchMutation(options);
}

class Mutation$createGreWord$HookResult {
  Mutation$createGreWord$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createGreWord runMutation;

  final graphql.QueryResult<Mutation$createGreWord> result;
}

Mutation$createGreWord$HookResult useMutation$createGreWord(
    [WidgetOptions$Mutation$createGreWord? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$createGreWord());
  return Mutation$createGreWord$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createGreWord> useWatchMutation$createGreWord(
        WatchOptions$Mutation$createGreWord options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createGreWord
    extends graphql.MutationOptions<Mutation$createGreWord> {
  WidgetOptions$Mutation$createGreWord({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createGreWord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createGreWord? onCompleted,
    graphql.OnMutationUpdate<Mutation$createGreWord>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$createGreWord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateGreWord,
          parserFn: _parserFn$Mutation$createGreWord,
        );

  final OnMutationCompleted$Mutation$createGreWord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createGreWord
    = graphql.MultiSourceResult<Mutation$createGreWord> Function(
  Variables$Mutation$createGreWord, {
  Object? optimisticResult,
  Mutation$createGreWord? typedOptimisticResult,
});
typedef Builder$Mutation$createGreWord = widgets.Widget Function(
  RunMutation$Mutation$createGreWord,
  graphql.QueryResult<Mutation$createGreWord>?,
);

class Mutation$createGreWord$Widget
    extends graphql_flutter.Mutation<Mutation$createGreWord> {
  Mutation$createGreWord$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createGreWord? options,
    required Builder$Mutation$createGreWord builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createGreWord(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}
