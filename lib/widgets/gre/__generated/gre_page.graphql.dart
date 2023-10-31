import '../../../__generated/schema.graphql.dart';
import '../../gre_history/__generated/gre_history_page.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SendSinglePrompt {
  factory Variables$Query$SendSinglePrompt({
    required String input,
    bool? skipCache,
    List<int>? indexesReturned,
    int? resultIndexFromCache,
  }) =>
      Variables$Query$SendSinglePrompt._({
        r'input': input,
        if (skipCache != null) r'skipCache': skipCache,
        if (indexesReturned != null) r'indexesReturned': indexesReturned,
        if (resultIndexFromCache != null)
          r'resultIndexFromCache': resultIndexFromCache,
      });

  Variables$Query$SendSinglePrompt._(this._$data);

  factory Variables$Query$SendSinglePrompt.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$SendSinglePrompt._(result$data);
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

  CopyWith$Variables$Query$SendSinglePrompt<Variables$Query$SendSinglePrompt>
      get copyWith => CopyWith$Variables$Query$SendSinglePrompt(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SendSinglePrompt) ||
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

abstract class CopyWith$Variables$Query$SendSinglePrompt<TRes> {
  factory CopyWith$Variables$Query$SendSinglePrompt(
    Variables$Query$SendSinglePrompt instance,
    TRes Function(Variables$Query$SendSinglePrompt) then,
  ) = _CopyWithImpl$Variables$Query$SendSinglePrompt;

  factory CopyWith$Variables$Query$SendSinglePrompt.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SendSinglePrompt;

  TRes call({
    String? input,
    bool? skipCache,
    List<int>? indexesReturned,
    int? resultIndexFromCache,
  });
}

class _CopyWithImpl$Variables$Query$SendSinglePrompt<TRes>
    implements CopyWith$Variables$Query$SendSinglePrompt<TRes> {
  _CopyWithImpl$Variables$Query$SendSinglePrompt(
    this._instance,
    this._then,
  );

  final Variables$Query$SendSinglePrompt _instance;

  final TRes Function(Variables$Query$SendSinglePrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? skipCache = _undefined,
    Object? indexesReturned = _undefined,
    Object? resultIndexFromCache = _undefined,
  }) =>
      _then(Variables$Query$SendSinglePrompt._({
        ..._instance._$data,
        if (input != _undefined && input != null) 'input': (input as String),
        if (skipCache != _undefined) 'skipCache': (skipCache as bool?),
        if (indexesReturned != _undefined)
          'indexesReturned': (indexesReturned as List<int>?),
        if (resultIndexFromCache != _undefined)
          'resultIndexFromCache': (resultIndexFromCache as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SendSinglePrompt<TRes>
    implements CopyWith$Variables$Query$SendSinglePrompt<TRes> {
  _CopyWithStubImpl$Variables$Query$SendSinglePrompt(this._res);

  TRes _res;

  call({
    String? input,
    bool? skipCache,
    List<int>? indexesReturned,
    int? resultIndexFromCache,
  }) =>
      _res;
}

class Query$SendSinglePrompt {
  Query$SendSinglePrompt({
    required this.sendSinglePrompt,
    this.$__typename = 'Query',
  });

  factory Query$SendSinglePrompt.fromJson(Map<String, dynamic> json) {
    final l$sendSinglePrompt = json['sendSinglePrompt'];
    final l$$__typename = json['__typename'];
    return Query$SendSinglePrompt(
      sendSinglePrompt: Query$SendSinglePrompt$sendSinglePrompt.fromJson(
          (l$sendSinglePrompt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SendSinglePrompt$sendSinglePrompt sendSinglePrompt;

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
    if (!(other is Query$SendSinglePrompt) ||
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

extension UtilityExtension$Query$SendSinglePrompt on Query$SendSinglePrompt {
  CopyWith$Query$SendSinglePrompt<Query$SendSinglePrompt> get copyWith =>
      CopyWith$Query$SendSinglePrompt(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SendSinglePrompt<TRes> {
  factory CopyWith$Query$SendSinglePrompt(
    Query$SendSinglePrompt instance,
    TRes Function(Query$SendSinglePrompt) then,
  ) = _CopyWithImpl$Query$SendSinglePrompt;

  factory CopyWith$Query$SendSinglePrompt.stub(TRes res) =
      _CopyWithStubImpl$Query$SendSinglePrompt;

  TRes call({
    Query$SendSinglePrompt$sendSinglePrompt? sendSinglePrompt,
    String? $__typename,
  });
  CopyWith$Query$SendSinglePrompt$sendSinglePrompt<TRes> get sendSinglePrompt;
}

class _CopyWithImpl$Query$SendSinglePrompt<TRes>
    implements CopyWith$Query$SendSinglePrompt<TRes> {
  _CopyWithImpl$Query$SendSinglePrompt(
    this._instance,
    this._then,
  );

  final Query$SendSinglePrompt _instance;

  final TRes Function(Query$SendSinglePrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sendSinglePrompt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SendSinglePrompt(
        sendSinglePrompt:
            sendSinglePrompt == _undefined || sendSinglePrompt == null
                ? _instance.sendSinglePrompt
                : (sendSinglePrompt as Query$SendSinglePrompt$sendSinglePrompt),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SendSinglePrompt$sendSinglePrompt<TRes> get sendSinglePrompt {
    final local$sendSinglePrompt = _instance.sendSinglePrompt;
    return CopyWith$Query$SendSinglePrompt$sendSinglePrompt(
        local$sendSinglePrompt, (e) => call(sendSinglePrompt: e));
  }
}

class _CopyWithStubImpl$Query$SendSinglePrompt<TRes>
    implements CopyWith$Query$SendSinglePrompt<TRes> {
  _CopyWithStubImpl$Query$SendSinglePrompt(this._res);

  TRes _res;

  call({
    Query$SendSinglePrompt$sendSinglePrompt? sendSinglePrompt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SendSinglePrompt$sendSinglePrompt<TRes> get sendSinglePrompt =>
      CopyWith$Query$SendSinglePrompt$sendSinglePrompt.stub(_res);
}

const documentNodeQuerySendSinglePrompt = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SendSinglePrompt'),
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
Query$SendSinglePrompt _parserFn$Query$SendSinglePrompt(
        Map<String, dynamic> data) =>
    Query$SendSinglePrompt.fromJson(data);
typedef OnQueryComplete$Query$SendSinglePrompt = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SendSinglePrompt?,
);

class Options$Query$SendSinglePrompt
    extends graphql.QueryOptions<Query$SendSinglePrompt> {
  Options$Query$SendSinglePrompt({
    String? operationName,
    required Variables$Query$SendSinglePrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SendSinglePrompt? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SendSinglePrompt? onComplete,
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
                        : _parserFn$Query$SendSinglePrompt(data),
                  ),
          onError: onError,
          document: documentNodeQuerySendSinglePrompt,
          parserFn: _parserFn$Query$SendSinglePrompt,
        );

  final OnQueryComplete$Query$SendSinglePrompt? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SendSinglePrompt
    extends graphql.WatchQueryOptions<Query$SendSinglePrompt> {
  WatchOptions$Query$SendSinglePrompt({
    String? operationName,
    required Variables$Query$SendSinglePrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SendSinglePrompt? typedOptimisticResult,
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
          document: documentNodeQuerySendSinglePrompt,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SendSinglePrompt,
        );
}

class FetchMoreOptions$Query$SendSinglePrompt extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SendSinglePrompt({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SendSinglePrompt variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySendSinglePrompt,
        );
}

extension ClientExtension$Query$SendSinglePrompt on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SendSinglePrompt>> query$SendSinglePrompt(
          Options$Query$SendSinglePrompt options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SendSinglePrompt> watchQuery$SendSinglePrompt(
          WatchOptions$Query$SendSinglePrompt options) =>
      this.watchQuery(options);
  void writeQuery$SendSinglePrompt({
    required Query$SendSinglePrompt data,
    required Variables$Query$SendSinglePrompt variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySendSinglePrompt),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SendSinglePrompt? readQuery$SendSinglePrompt({
    required Variables$Query$SendSinglePrompt variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerySendSinglePrompt),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SendSinglePrompt.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SendSinglePrompt>
    useQuery$SendSinglePrompt(Options$Query$SendSinglePrompt options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SendSinglePrompt> useWatchQuery$SendSinglePrompt(
        WatchOptions$Query$SendSinglePrompt options) =>
    graphql_flutter.useWatchQuery(options);

class Query$SendSinglePrompt$Widget
    extends graphql_flutter.Query<Query$SendSinglePrompt> {
  Query$SendSinglePrompt$Widget({
    widgets.Key? key,
    required Options$Query$SendSinglePrompt options,
    required graphql_flutter.QueryBuilder<Query$SendSinglePrompt> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$SendSinglePrompt$sendSinglePrompt {
  Query$SendSinglePrompt$sendSinglePrompt({
    this.result,
    this.resultIndex,
    this.error,
    required this.totalResultsInCache,
    this.$__typename = 'SendSinglePromptResponse',
  });

  factory Query$SendSinglePrompt$sendSinglePrompt.fromJson(
      Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$resultIndex = json['resultIndex'];
    final l$error = json['error'];
    final l$totalResultsInCache = json['totalResultsInCache'];
    final l$$__typename = json['__typename'];
    return Query$SendSinglePrompt$sendSinglePrompt(
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
    if (!(other is Query$SendSinglePrompt$sendSinglePrompt) ||
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

extension UtilityExtension$Query$SendSinglePrompt$sendSinglePrompt
    on Query$SendSinglePrompt$sendSinglePrompt {
  CopyWith$Query$SendSinglePrompt$sendSinglePrompt<
          Query$SendSinglePrompt$sendSinglePrompt>
      get copyWith => CopyWith$Query$SendSinglePrompt$sendSinglePrompt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SendSinglePrompt$sendSinglePrompt<TRes> {
  factory CopyWith$Query$SendSinglePrompt$sendSinglePrompt(
    Query$SendSinglePrompt$sendSinglePrompt instance,
    TRes Function(Query$SendSinglePrompt$sendSinglePrompt) then,
  ) = _CopyWithImpl$Query$SendSinglePrompt$sendSinglePrompt;

  factory CopyWith$Query$SendSinglePrompt$sendSinglePrompt.stub(TRes res) =
      _CopyWithStubImpl$Query$SendSinglePrompt$sendSinglePrompt;

  TRes call({
    String? result,
    int? resultIndex,
    String? error,
    int? totalResultsInCache,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SendSinglePrompt$sendSinglePrompt<TRes>
    implements CopyWith$Query$SendSinglePrompt$sendSinglePrompt<TRes> {
  _CopyWithImpl$Query$SendSinglePrompt$sendSinglePrompt(
    this._instance,
    this._then,
  );

  final Query$SendSinglePrompt$sendSinglePrompt _instance;

  final TRes Function(Query$SendSinglePrompt$sendSinglePrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? resultIndex = _undefined,
    Object? error = _undefined,
    Object? totalResultsInCache = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SendSinglePrompt$sendSinglePrompt(
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

class _CopyWithStubImpl$Query$SendSinglePrompt$sendSinglePrompt<TRes>
    implements CopyWith$Query$SendSinglePrompt$sendSinglePrompt<TRes> {
  _CopyWithStubImpl$Query$SendSinglePrompt$sendSinglePrompt(this._res);

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

class Variables$Mutation$CreateGreWord {
  factory Variables$Mutation$CreateGreWord({
    required String spelling,
    required String promptInput,
    required String promptResponse,
    required String userId,
    List<Input$GreWordTagWhereUniqueInput?>? greWordTags,
  }) =>
      Variables$Mutation$CreateGreWord._({
        r'spelling': spelling,
        r'promptInput': promptInput,
        r'promptResponse': promptResponse,
        r'userId': userId,
        if (greWordTags != null) r'greWordTags': greWordTags,
      });

  Variables$Mutation$CreateGreWord._(this._$data);

  factory Variables$Mutation$CreateGreWord.fromJson(Map<String, dynamic> data) {
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
    return Variables$Mutation$CreateGreWord._(result$data);
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

  CopyWith$Variables$Mutation$CreateGreWord<Variables$Mutation$CreateGreWord>
      get copyWith => CopyWith$Variables$Mutation$CreateGreWord(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateGreWord) ||
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

abstract class CopyWith$Variables$Mutation$CreateGreWord<TRes> {
  factory CopyWith$Variables$Mutation$CreateGreWord(
    Variables$Mutation$CreateGreWord instance,
    TRes Function(Variables$Mutation$CreateGreWord) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateGreWord;

  factory CopyWith$Variables$Mutation$CreateGreWord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateGreWord;

  TRes call({
    String? spelling,
    String? promptInput,
    String? promptResponse,
    String? userId,
    List<Input$GreWordTagWhereUniqueInput?>? greWordTags,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateGreWord<TRes>
    implements CopyWith$Variables$Mutation$CreateGreWord<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateGreWord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateGreWord _instance;

  final TRes Function(Variables$Mutation$CreateGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? spelling = _undefined,
    Object? promptInput = _undefined,
    Object? promptResponse = _undefined,
    Object? userId = _undefined,
    Object? greWordTags = _undefined,
  }) =>
      _then(Variables$Mutation$CreateGreWord._({
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

class _CopyWithStubImpl$Variables$Mutation$CreateGreWord<TRes>
    implements CopyWith$Variables$Mutation$CreateGreWord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateGreWord(this._res);

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

class Mutation$CreateGreWord {
  Mutation$CreateGreWord({
    required this.createGreWord,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateGreWord.fromJson(Map<String, dynamic> json) {
    final l$createGreWord = json['createGreWord'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateGreWord(
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
    if (!(other is Mutation$CreateGreWord) ||
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

extension UtilityExtension$Mutation$CreateGreWord on Mutation$CreateGreWord {
  CopyWith$Mutation$CreateGreWord<Mutation$CreateGreWord> get copyWith =>
      CopyWith$Mutation$CreateGreWord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateGreWord<TRes> {
  factory CopyWith$Mutation$CreateGreWord(
    Mutation$CreateGreWord instance,
    TRes Function(Mutation$CreateGreWord) then,
  ) = _CopyWithImpl$Mutation$CreateGreWord;

  factory CopyWith$Mutation$CreateGreWord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateGreWord;

  TRes call({
    Fragment$GreWordFields? createGreWord,
    String? $__typename,
  });
  CopyWith$Fragment$GreWordFields<TRes> get createGreWord;
}

class _CopyWithImpl$Mutation$CreateGreWord<TRes>
    implements CopyWith$Mutation$CreateGreWord<TRes> {
  _CopyWithImpl$Mutation$CreateGreWord(
    this._instance,
    this._then,
  );

  final Mutation$CreateGreWord _instance;

  final TRes Function(Mutation$CreateGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createGreWord = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateGreWord(
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

class _CopyWithStubImpl$Mutation$CreateGreWord<TRes>
    implements CopyWith$Mutation$CreateGreWord<TRes> {
  _CopyWithStubImpl$Mutation$CreateGreWord(this._res);

  TRes _res;

  call({
    Fragment$GreWordFields? createGreWord,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$GreWordFields<TRes> get createGreWord =>
      CopyWith$Fragment$GreWordFields.stub(_res);
}

const documentNodeMutationCreateGreWord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateGreWord'),
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
Mutation$CreateGreWord _parserFn$Mutation$CreateGreWord(
        Map<String, dynamic> data) =>
    Mutation$CreateGreWord.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateGreWord = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateGreWord?,
);

class Options$Mutation$CreateGreWord
    extends graphql.MutationOptions<Mutation$CreateGreWord> {
  Options$Mutation$CreateGreWord({
    String? operationName,
    required Variables$Mutation$CreateGreWord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateGreWord? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateGreWord>? update,
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
                        : _parserFn$Mutation$CreateGreWord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateGreWord,
          parserFn: _parserFn$Mutation$CreateGreWord,
        );

  final OnMutationCompleted$Mutation$CreateGreWord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateGreWord
    extends graphql.WatchQueryOptions<Mutation$CreateGreWord> {
  WatchOptions$Mutation$CreateGreWord({
    String? operationName,
    required Variables$Mutation$CreateGreWord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWord? typedOptimisticResult,
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
          document: documentNodeMutationCreateGreWord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateGreWord,
        );
}

extension ClientExtension$Mutation$CreateGreWord on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateGreWord>> mutate$CreateGreWord(
          Options$Mutation$CreateGreWord options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateGreWord> watchMutation$CreateGreWord(
          WatchOptions$Mutation$CreateGreWord options) =>
      this.watchMutation(options);
}

class Mutation$CreateGreWord$HookResult {
  Mutation$CreateGreWord$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateGreWord runMutation;

  final graphql.QueryResult<Mutation$CreateGreWord> result;
}

Mutation$CreateGreWord$HookResult useMutation$CreateGreWord(
    [WidgetOptions$Mutation$CreateGreWord? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateGreWord());
  return Mutation$CreateGreWord$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateGreWord> useWatchMutation$CreateGreWord(
        WatchOptions$Mutation$CreateGreWord options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateGreWord
    extends graphql.MutationOptions<Mutation$CreateGreWord> {
  WidgetOptions$Mutation$CreateGreWord({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateGreWord? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateGreWord>? update,
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
                        : _parserFn$Mutation$CreateGreWord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateGreWord,
          parserFn: _parserFn$Mutation$CreateGreWord,
        );

  final OnMutationCompleted$Mutation$CreateGreWord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateGreWord
    = graphql.MultiSourceResult<Mutation$CreateGreWord> Function(
  Variables$Mutation$CreateGreWord, {
  Object? optimisticResult,
  Mutation$CreateGreWord? typedOptimisticResult,
});
typedef Builder$Mutation$CreateGreWord = widgets.Widget Function(
  RunMutation$Mutation$CreateGreWord,
  graphql.QueryResult<Mutation$CreateGreWord>?,
);

class Mutation$CreateGreWord$Widget
    extends graphql_flutter.Mutation<Mutation$CreateGreWord> {
  Mutation$CreateGreWord$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateGreWord? options,
    required Builder$Mutation$CreateGreWord builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateGreWord(),
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

class Variables$Query$GreWord {
  factory Variables$Query$GreWord({Input$GreWordWhereUniqueInput? where}) =>
      Variables$Query$GreWord._({
        if (where != null) r'where': where,
      });

  Variables$Query$GreWord._(this._$data);

  factory Variables$Query$GreWord.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$GreWordWhereUniqueInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$GreWord._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GreWordWhereUniqueInput? get where =>
      (_$data['where'] as Input$GreWordWhereUniqueInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GreWord<Variables$Query$GreWord> get copyWith =>
      CopyWith$Variables$Query$GreWord(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GreWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([_$data.containsKey('where') ? l$where : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GreWord<TRes> {
  factory CopyWith$Variables$Query$GreWord(
    Variables$Query$GreWord instance,
    TRes Function(Variables$Query$GreWord) then,
  ) = _CopyWithImpl$Variables$Query$GreWord;

  factory CopyWith$Variables$Query$GreWord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GreWord;

  TRes call({Input$GreWordWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Query$GreWord<TRes>
    implements CopyWith$Variables$Query$GreWord<TRes> {
  _CopyWithImpl$Variables$Query$GreWord(
    this._instance,
    this._then,
  );

  final Variables$Query$GreWord _instance;

  final TRes Function(Variables$Query$GreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) => _then(Variables$Query$GreWord._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$GreWordWhereUniqueInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GreWord<TRes>
    implements CopyWith$Variables$Query$GreWord<TRes> {
  _CopyWithStubImpl$Variables$Query$GreWord(this._res);

  TRes _res;

  call({Input$GreWordWhereUniqueInput? where}) => _res;
}

class Query$GreWord {
  Query$GreWord({
    this.greWord,
    this.$__typename = 'Query',
  });

  factory Query$GreWord.fromJson(Map<String, dynamic> json) {
    final l$greWord = json['greWord'];
    final l$$__typename = json['__typename'];
    return Query$GreWord(
      greWord: l$greWord == null
          ? null
          : Fragment$GreWordFields.fromJson(
              (l$greWord as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$GreWordFields? greWord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$greWord = greWord;
    _resultData['greWord'] = l$greWord?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$greWord = greWord;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$greWord,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GreWord) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$greWord = greWord;
    final lOther$greWord = other.greWord;
    if (l$greWord != lOther$greWord) {
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

extension UtilityExtension$Query$GreWord on Query$GreWord {
  CopyWith$Query$GreWord<Query$GreWord> get copyWith => CopyWith$Query$GreWord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GreWord<TRes> {
  factory CopyWith$Query$GreWord(
    Query$GreWord instance,
    TRes Function(Query$GreWord) then,
  ) = _CopyWithImpl$Query$GreWord;

  factory CopyWith$Query$GreWord.stub(TRes res) =
      _CopyWithStubImpl$Query$GreWord;

  TRes call({
    Fragment$GreWordFields? greWord,
    String? $__typename,
  });
  CopyWith$Fragment$GreWordFields<TRes> get greWord;
}

class _CopyWithImpl$Query$GreWord<TRes>
    implements CopyWith$Query$GreWord<TRes> {
  _CopyWithImpl$Query$GreWord(
    this._instance,
    this._then,
  );

  final Query$GreWord _instance;

  final TRes Function(Query$GreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? greWord = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GreWord(
        greWord: greWord == _undefined
            ? _instance.greWord
            : (greWord as Fragment$GreWordFields?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$GreWordFields<TRes> get greWord {
    final local$greWord = _instance.greWord;
    return local$greWord == null
        ? CopyWith$Fragment$GreWordFields.stub(_then(_instance))
        : CopyWith$Fragment$GreWordFields(
            local$greWord, (e) => call(greWord: e));
  }
}

class _CopyWithStubImpl$Query$GreWord<TRes>
    implements CopyWith$Query$GreWord<TRes> {
  _CopyWithStubImpl$Query$GreWord(this._res);

  TRes _res;

  call({
    Fragment$GreWordFields? greWord,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$GreWordFields<TRes> get greWord =>
      CopyWith$Fragment$GreWordFields.stub(_res);
}

const documentNodeQueryGreWord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GreWord'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'GreWordWhereUniqueInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'greWord'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
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
Query$GreWord _parserFn$Query$GreWord(Map<String, dynamic> data) =>
    Query$GreWord.fromJson(data);
typedef OnQueryComplete$Query$GreWord = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GreWord?,
);

class Options$Query$GreWord extends graphql.QueryOptions<Query$GreWord> {
  Options$Query$GreWord({
    String? operationName,
    Variables$Query$GreWord? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GreWord? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GreWord? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                    data == null ? null : _parserFn$Query$GreWord(data),
                  ),
          onError: onError,
          document: documentNodeQueryGreWord,
          parserFn: _parserFn$Query$GreWord,
        );

  final OnQueryComplete$Query$GreWord? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GreWord
    extends graphql.WatchQueryOptions<Query$GreWord> {
  WatchOptions$Query$GreWord({
    String? operationName,
    Variables$Query$GreWord? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GreWord? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGreWord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GreWord,
        );
}

class FetchMoreOptions$Query$GreWord extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GreWord({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GreWord? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGreWord,
        );
}

extension ClientExtension$Query$GreWord on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GreWord>> query$GreWord(
          [Options$Query$GreWord? options]) async =>
      await this.query(options ?? Options$Query$GreWord());
  graphql.ObservableQuery<Query$GreWord> watchQuery$GreWord(
          [WatchOptions$Query$GreWord? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GreWord());
  void writeQuery$GreWord({
    required Query$GreWord data,
    Variables$Query$GreWord? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGreWord),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GreWord? readQuery$GreWord({
    Variables$Query$GreWord? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGreWord),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GreWord.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GreWord> useQuery$GreWord(
        [Options$Query$GreWord? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GreWord());
graphql.ObservableQuery<Query$GreWord> useWatchQuery$GreWord(
        [WatchOptions$Query$GreWord? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GreWord());

class Query$GreWord$Widget extends graphql_flutter.Query<Query$GreWord> {
  Query$GreWord$Widget({
    widgets.Key? key,
    Options$Query$GreWord? options,
    required graphql_flutter.QueryBuilder<Query$GreWord> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GreWord(),
          builder: builder,
        );
}

class Variables$Mutation$CreateGptPrompt {
  factory Variables$Mutation$CreateGptPrompt({
    required String input,
    required String response,
    required String greWordId,
  }) =>
      Variables$Mutation$CreateGptPrompt._({
        r'input': input,
        r'response': response,
        r'greWordId': greWordId,
      });

  Variables$Mutation$CreateGptPrompt._(this._$data);

  factory Variables$Mutation$CreateGptPrompt.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    final l$response = data['response'];
    result$data['response'] = (l$response as String);
    final l$greWordId = data['greWordId'];
    result$data['greWordId'] = (l$greWordId as String);
    return Variables$Mutation$CreateGptPrompt._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  String get response => (_$data['response'] as String);

  String get greWordId => (_$data['greWordId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    final l$response = response;
    result$data['response'] = l$response;
    final l$greWordId = greWordId;
    result$data['greWordId'] = l$greWordId;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateGptPrompt<
          Variables$Mutation$CreateGptPrompt>
      get copyWith => CopyWith$Variables$Mutation$CreateGptPrompt(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateGptPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$response = response;
    final lOther$response = other.response;
    if (l$response != lOther$response) {
      return false;
    }
    final l$greWordId = greWordId;
    final lOther$greWordId = other.greWordId;
    if (l$greWordId != lOther$greWordId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$response = response;
    final l$greWordId = greWordId;
    return Object.hashAll([
      l$input,
      l$response,
      l$greWordId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateGptPrompt<TRes> {
  factory CopyWith$Variables$Mutation$CreateGptPrompt(
    Variables$Mutation$CreateGptPrompt instance,
    TRes Function(Variables$Mutation$CreateGptPrompt) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateGptPrompt;

  factory CopyWith$Variables$Mutation$CreateGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateGptPrompt;

  TRes call({
    String? input,
    String? response,
    String? greWordId,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateGptPrompt<TRes>
    implements CopyWith$Variables$Mutation$CreateGptPrompt<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateGptPrompt(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateGptPrompt _instance;

  final TRes Function(Variables$Mutation$CreateGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? response = _undefined,
    Object? greWordId = _undefined,
  }) =>
      _then(Variables$Mutation$CreateGptPrompt._({
        ..._instance._$data,
        if (input != _undefined && input != null) 'input': (input as String),
        if (response != _undefined && response != null)
          'response': (response as String),
        if (greWordId != _undefined && greWordId != null)
          'greWordId': (greWordId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateGptPrompt<TRes>
    implements CopyWith$Variables$Mutation$CreateGptPrompt<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateGptPrompt(this._res);

  TRes _res;

  call({
    String? input,
    String? response,
    String? greWordId,
  }) =>
      _res;
}

class Mutation$CreateGptPrompt {
  Mutation$CreateGptPrompt({
    required this.createGptPrompt,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateGptPrompt.fromJson(Map<String, dynamic> json) {
    final l$createGptPrompt = json['createGptPrompt'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateGptPrompt(
      createGptPrompt: Mutation$CreateGptPrompt$createGptPrompt.fromJson(
          (l$createGptPrompt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateGptPrompt$createGptPrompt createGptPrompt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createGptPrompt = createGptPrompt;
    _resultData['createGptPrompt'] = l$createGptPrompt.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createGptPrompt = createGptPrompt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createGptPrompt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateGptPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createGptPrompt = createGptPrompt;
    final lOther$createGptPrompt = other.createGptPrompt;
    if (l$createGptPrompt != lOther$createGptPrompt) {
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

extension UtilityExtension$Mutation$CreateGptPrompt
    on Mutation$CreateGptPrompt {
  CopyWith$Mutation$CreateGptPrompt<Mutation$CreateGptPrompt> get copyWith =>
      CopyWith$Mutation$CreateGptPrompt(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateGptPrompt<TRes> {
  factory CopyWith$Mutation$CreateGptPrompt(
    Mutation$CreateGptPrompt instance,
    TRes Function(Mutation$CreateGptPrompt) then,
  ) = _CopyWithImpl$Mutation$CreateGptPrompt;

  factory CopyWith$Mutation$CreateGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateGptPrompt;

  TRes call({
    Mutation$CreateGptPrompt$createGptPrompt? createGptPrompt,
    String? $__typename,
  });
  CopyWith$Mutation$CreateGptPrompt$createGptPrompt<TRes> get createGptPrompt;
}

class _CopyWithImpl$Mutation$CreateGptPrompt<TRes>
    implements CopyWith$Mutation$CreateGptPrompt<TRes> {
  _CopyWithImpl$Mutation$CreateGptPrompt(
    this._instance,
    this._then,
  );

  final Mutation$CreateGptPrompt _instance;

  final TRes Function(Mutation$CreateGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createGptPrompt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateGptPrompt(
        createGptPrompt:
            createGptPrompt == _undefined || createGptPrompt == null
                ? _instance.createGptPrompt
                : (createGptPrompt as Mutation$CreateGptPrompt$createGptPrompt),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateGptPrompt$createGptPrompt<TRes> get createGptPrompt {
    final local$createGptPrompt = _instance.createGptPrompt;
    return CopyWith$Mutation$CreateGptPrompt$createGptPrompt(
        local$createGptPrompt, (e) => call(createGptPrompt: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateGptPrompt<TRes>
    implements CopyWith$Mutation$CreateGptPrompt<TRes> {
  _CopyWithStubImpl$Mutation$CreateGptPrompt(this._res);

  TRes _res;

  call({
    Mutation$CreateGptPrompt$createGptPrompt? createGptPrompt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateGptPrompt$createGptPrompt<TRes> get createGptPrompt =>
      CopyWith$Mutation$CreateGptPrompt$createGptPrompt.stub(_res);
}

const documentNodeMutationCreateGptPrompt = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateGptPrompt'),
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
        variable: VariableNode(name: NameNode(value: 'response')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'greWordId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createGptPrompt'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'response'),
            value: VariableNode(name: NameNode(value: 'response')),
          ),
          ArgumentNode(
            name: NameNode(value: 'greWordId'),
            value: VariableNode(name: NameNode(value: 'greWordId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'response'),
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
Mutation$CreateGptPrompt _parserFn$Mutation$CreateGptPrompt(
        Map<String, dynamic> data) =>
    Mutation$CreateGptPrompt.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateGptPrompt = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateGptPrompt?,
);

class Options$Mutation$CreateGptPrompt
    extends graphql.MutationOptions<Mutation$CreateGptPrompt> {
  Options$Mutation$CreateGptPrompt({
    String? operationName,
    required Variables$Mutation$CreateGptPrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGptPrompt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateGptPrompt? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateGptPrompt>? update,
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
                        : _parserFn$Mutation$CreateGptPrompt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateGptPrompt,
          parserFn: _parserFn$Mutation$CreateGptPrompt,
        );

  final OnMutationCompleted$Mutation$CreateGptPrompt? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateGptPrompt
    extends graphql.WatchQueryOptions<Mutation$CreateGptPrompt> {
  WatchOptions$Mutation$CreateGptPrompt({
    String? operationName,
    required Variables$Mutation$CreateGptPrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGptPrompt? typedOptimisticResult,
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
          document: documentNodeMutationCreateGptPrompt,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateGptPrompt,
        );
}

extension ClientExtension$Mutation$CreateGptPrompt on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateGptPrompt>> mutate$CreateGptPrompt(
          Options$Mutation$CreateGptPrompt options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateGptPrompt>
      watchMutation$CreateGptPrompt(
              WatchOptions$Mutation$CreateGptPrompt options) =>
          this.watchMutation(options);
}

class Mutation$CreateGptPrompt$HookResult {
  Mutation$CreateGptPrompt$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateGptPrompt runMutation;

  final graphql.QueryResult<Mutation$CreateGptPrompt> result;
}

Mutation$CreateGptPrompt$HookResult useMutation$CreateGptPrompt(
    [WidgetOptions$Mutation$CreateGptPrompt? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateGptPrompt());
  return Mutation$CreateGptPrompt$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateGptPrompt>
    useWatchMutation$CreateGptPrompt(
            WatchOptions$Mutation$CreateGptPrompt options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateGptPrompt
    extends graphql.MutationOptions<Mutation$CreateGptPrompt> {
  WidgetOptions$Mutation$CreateGptPrompt({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGptPrompt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateGptPrompt? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateGptPrompt>? update,
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
                        : _parserFn$Mutation$CreateGptPrompt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateGptPrompt,
          parserFn: _parserFn$Mutation$CreateGptPrompt,
        );

  final OnMutationCompleted$Mutation$CreateGptPrompt? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateGptPrompt
    = graphql.MultiSourceResult<Mutation$CreateGptPrompt> Function(
  Variables$Mutation$CreateGptPrompt, {
  Object? optimisticResult,
  Mutation$CreateGptPrompt? typedOptimisticResult,
});
typedef Builder$Mutation$CreateGptPrompt = widgets.Widget Function(
  RunMutation$Mutation$CreateGptPrompt,
  graphql.QueryResult<Mutation$CreateGptPrompt>?,
);

class Mutation$CreateGptPrompt$Widget
    extends graphql_flutter.Mutation<Mutation$CreateGptPrompt> {
  Mutation$CreateGptPrompt$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateGptPrompt? options,
    required Builder$Mutation$CreateGptPrompt builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateGptPrompt(),
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

class Mutation$CreateGptPrompt$createGptPrompt {
  Mutation$CreateGptPrompt$createGptPrompt({
    required this.id,
    required this.response,
    this.$__typename = 'GptPrompt',
  });

  factory Mutation$CreateGptPrompt$createGptPrompt.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$response = json['response'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateGptPrompt$createGptPrompt(
      id: (l$id as String),
      response: (l$response as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String response;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$response = response;
    _resultData['response'] = l$response;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$response = response;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$response,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateGptPrompt$createGptPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$response = response;
    final lOther$response = other.response;
    if (l$response != lOther$response) {
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

extension UtilityExtension$Mutation$CreateGptPrompt$createGptPrompt
    on Mutation$CreateGptPrompt$createGptPrompt {
  CopyWith$Mutation$CreateGptPrompt$createGptPrompt<
          Mutation$CreateGptPrompt$createGptPrompt>
      get copyWith => CopyWith$Mutation$CreateGptPrompt$createGptPrompt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateGptPrompt$createGptPrompt<TRes> {
  factory CopyWith$Mutation$CreateGptPrompt$createGptPrompt(
    Mutation$CreateGptPrompt$createGptPrompt instance,
    TRes Function(Mutation$CreateGptPrompt$createGptPrompt) then,
  ) = _CopyWithImpl$Mutation$CreateGptPrompt$createGptPrompt;

  factory CopyWith$Mutation$CreateGptPrompt$createGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateGptPrompt$createGptPrompt;

  TRes call({
    String? id,
    String? response,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateGptPrompt$createGptPrompt<TRes>
    implements CopyWith$Mutation$CreateGptPrompt$createGptPrompt<TRes> {
  _CopyWithImpl$Mutation$CreateGptPrompt$createGptPrompt(
    this._instance,
    this._then,
  );

  final Mutation$CreateGptPrompt$createGptPrompt _instance;

  final TRes Function(Mutation$CreateGptPrompt$createGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? response = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateGptPrompt$createGptPrompt(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        response: response == _undefined || response == null
            ? _instance.response
            : (response as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateGptPrompt$createGptPrompt<TRes>
    implements CopyWith$Mutation$CreateGptPrompt$createGptPrompt<TRes> {
  _CopyWithStubImpl$Mutation$CreateGptPrompt$createGptPrompt(this._res);

  TRes _res;

  call({
    String? id,
    String? response,
    String? $__typename,
  }) =>
      _res;
}
