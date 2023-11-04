import '../../../../../__generated/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GreWordSearchPromptInputs {
  factory Variables$Query$GreWordSearchPromptInputs(
          {Input$GreWordSearchPromptInputWhereInput? where}) =>
      Variables$Query$GreWordSearchPromptInputs._({
        if (where != null) r'where': where,
      });

  Variables$Query$GreWordSearchPromptInputs._(this._$data);

  factory Variables$Query$GreWordSearchPromptInputs.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$GreWordSearchPromptInputWhereInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$GreWordSearchPromptInputs._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GreWordSearchPromptInputWhereInput? get where =>
      (_$data['where'] as Input$GreWordSearchPromptInputWhereInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GreWordSearchPromptInputs<
          Variables$Query$GreWordSearchPromptInputs>
      get copyWith => CopyWith$Variables$Query$GreWordSearchPromptInputs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GreWordSearchPromptInputs) ||
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

abstract class CopyWith$Variables$Query$GreWordSearchPromptInputs<TRes> {
  factory CopyWith$Variables$Query$GreWordSearchPromptInputs(
    Variables$Query$GreWordSearchPromptInputs instance,
    TRes Function(Variables$Query$GreWordSearchPromptInputs) then,
  ) = _CopyWithImpl$Variables$Query$GreWordSearchPromptInputs;

  factory CopyWith$Variables$Query$GreWordSearchPromptInputs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GreWordSearchPromptInputs;

  TRes call({Input$GreWordSearchPromptInputWhereInput? where});
}

class _CopyWithImpl$Variables$Query$GreWordSearchPromptInputs<TRes>
    implements CopyWith$Variables$Query$GreWordSearchPromptInputs<TRes> {
  _CopyWithImpl$Variables$Query$GreWordSearchPromptInputs(
    this._instance,
    this._then,
  );

  final Variables$Query$GreWordSearchPromptInputs _instance;

  final TRes Function(Variables$Query$GreWordSearchPromptInputs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$GreWordSearchPromptInputs._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$GreWordSearchPromptInputWhereInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GreWordSearchPromptInputs<TRes>
    implements CopyWith$Variables$Query$GreWordSearchPromptInputs<TRes> {
  _CopyWithStubImpl$Variables$Query$GreWordSearchPromptInputs(this._res);

  TRes _res;

  call({Input$GreWordSearchPromptInputWhereInput? where}) => _res;
}

class Query$GreWordSearchPromptInputs {
  Query$GreWordSearchPromptInputs({
    required this.greWordSearchPromptInputs,
    this.$__typename = 'Query',
  });

  factory Query$GreWordSearchPromptInputs.fromJson(Map<String, dynamic> json) {
    final l$greWordSearchPromptInputs = json['greWordSearchPromptInputs'];
    final l$$__typename = json['__typename'];
    return Query$GreWordSearchPromptInputs(
      greWordSearchPromptInputs: (l$greWordSearchPromptInputs as List<dynamic>)
          .map((e) => Query$GreWordSearchPromptInputs$greWordSearchPromptInputs
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GreWordSearchPromptInputs$greWordSearchPromptInputs>
      greWordSearchPromptInputs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$greWordSearchPromptInputs = greWordSearchPromptInputs;
    _resultData['greWordSearchPromptInputs'] =
        l$greWordSearchPromptInputs.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$greWordSearchPromptInputs = greWordSearchPromptInputs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$greWordSearchPromptInputs.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GreWordSearchPromptInputs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$greWordSearchPromptInputs = greWordSearchPromptInputs;
    final lOther$greWordSearchPromptInputs = other.greWordSearchPromptInputs;
    if (l$greWordSearchPromptInputs.length !=
        lOther$greWordSearchPromptInputs.length) {
      return false;
    }
    for (int i = 0; i < l$greWordSearchPromptInputs.length; i++) {
      final l$greWordSearchPromptInputs$entry = l$greWordSearchPromptInputs[i];
      final lOther$greWordSearchPromptInputs$entry =
          lOther$greWordSearchPromptInputs[i];
      if (l$greWordSearchPromptInputs$entry !=
          lOther$greWordSearchPromptInputs$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GreWordSearchPromptInputs
    on Query$GreWordSearchPromptInputs {
  CopyWith$Query$GreWordSearchPromptInputs<Query$GreWordSearchPromptInputs>
      get copyWith => CopyWith$Query$GreWordSearchPromptInputs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GreWordSearchPromptInputs<TRes> {
  factory CopyWith$Query$GreWordSearchPromptInputs(
    Query$GreWordSearchPromptInputs instance,
    TRes Function(Query$GreWordSearchPromptInputs) then,
  ) = _CopyWithImpl$Query$GreWordSearchPromptInputs;

  factory CopyWith$Query$GreWordSearchPromptInputs.stub(TRes res) =
      _CopyWithStubImpl$Query$GreWordSearchPromptInputs;

  TRes call({
    List<Query$GreWordSearchPromptInputs$greWordSearchPromptInputs>?
        greWordSearchPromptInputs,
    String? $__typename,
  });
  TRes greWordSearchPromptInputs(
      Iterable<Query$GreWordSearchPromptInputs$greWordSearchPromptInputs> Function(
              Iterable<
                  CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs<
                      Query$GreWordSearchPromptInputs$greWordSearchPromptInputs>>)
          _fn);
}

class _CopyWithImpl$Query$GreWordSearchPromptInputs<TRes>
    implements CopyWith$Query$GreWordSearchPromptInputs<TRes> {
  _CopyWithImpl$Query$GreWordSearchPromptInputs(
    this._instance,
    this._then,
  );

  final Query$GreWordSearchPromptInputs _instance;

  final TRes Function(Query$GreWordSearchPromptInputs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? greWordSearchPromptInputs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GreWordSearchPromptInputs(
        greWordSearchPromptInputs: greWordSearchPromptInputs == _undefined ||
                greWordSearchPromptInputs == null
            ? _instance.greWordSearchPromptInputs
            : (greWordSearchPromptInputs as List<
                Query$GreWordSearchPromptInputs$greWordSearchPromptInputs>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes greWordSearchPromptInputs(
          Iterable<Query$GreWordSearchPromptInputs$greWordSearchPromptInputs> Function(
                  Iterable<
                      CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs<
                          Query$GreWordSearchPromptInputs$greWordSearchPromptInputs>>)
              _fn) =>
      call(
          greWordSearchPromptInputs: _fn(_instance.greWordSearchPromptInputs
              .map((e) =>
                  CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GreWordSearchPromptInputs<TRes>
    implements CopyWith$Query$GreWordSearchPromptInputs<TRes> {
  _CopyWithStubImpl$Query$GreWordSearchPromptInputs(this._res);

  TRes _res;

  call({
    List<Query$GreWordSearchPromptInputs$greWordSearchPromptInputs>?
        greWordSearchPromptInputs,
    String? $__typename,
  }) =>
      _res;

  greWordSearchPromptInputs(_fn) => _res;
}

const documentNodeQueryGreWordSearchPromptInputs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GreWordSearchPromptInputs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'GreWordSearchPromptInputWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'greWordSearchPromptInputs'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
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
            name: NameNode(value: 'text'),
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
Query$GreWordSearchPromptInputs _parserFn$Query$GreWordSearchPromptInputs(
        Map<String, dynamic> data) =>
    Query$GreWordSearchPromptInputs.fromJson(data);
typedef OnQueryComplete$Query$GreWordSearchPromptInputs = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GreWordSearchPromptInputs?,
);

class Options$Query$GreWordSearchPromptInputs
    extends graphql.QueryOptions<Query$GreWordSearchPromptInputs> {
  Options$Query$GreWordSearchPromptInputs({
    String? operationName,
    Variables$Query$GreWordSearchPromptInputs? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GreWordSearchPromptInputs? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GreWordSearchPromptInputs? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$GreWordSearchPromptInputs(data),
                  ),
          onError: onError,
          document: documentNodeQueryGreWordSearchPromptInputs,
          parserFn: _parserFn$Query$GreWordSearchPromptInputs,
        );

  final OnQueryComplete$Query$GreWordSearchPromptInputs? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GreWordSearchPromptInputs
    extends graphql.WatchQueryOptions<Query$GreWordSearchPromptInputs> {
  WatchOptions$Query$GreWordSearchPromptInputs({
    String? operationName,
    Variables$Query$GreWordSearchPromptInputs? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GreWordSearchPromptInputs? typedOptimisticResult,
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
          document: documentNodeQueryGreWordSearchPromptInputs,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GreWordSearchPromptInputs,
        );
}

class FetchMoreOptions$Query$GreWordSearchPromptInputs
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GreWordSearchPromptInputs({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GreWordSearchPromptInputs? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGreWordSearchPromptInputs,
        );
}

extension ClientExtension$Query$GreWordSearchPromptInputs
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GreWordSearchPromptInputs>>
      query$GreWordSearchPromptInputs(
              [Options$Query$GreWordSearchPromptInputs? options]) async =>
          await this
              .query(options ?? Options$Query$GreWordSearchPromptInputs());
  graphql.ObservableQuery<Query$GreWordSearchPromptInputs>
      watchQuery$GreWordSearchPromptInputs(
              [WatchOptions$Query$GreWordSearchPromptInputs? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GreWordSearchPromptInputs());
  void writeQuery$GreWordSearchPromptInputs({
    required Query$GreWordSearchPromptInputs data,
    Variables$Query$GreWordSearchPromptInputs? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGreWordSearchPromptInputs),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GreWordSearchPromptInputs? readQuery$GreWordSearchPromptInputs({
    Variables$Query$GreWordSearchPromptInputs? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGreWordSearchPromptInputs),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GreWordSearchPromptInputs.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GreWordSearchPromptInputs>
    useQuery$GreWordSearchPromptInputs(
            [Options$Query$GreWordSearchPromptInputs? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GreWordSearchPromptInputs());
graphql.ObservableQuery<Query$GreWordSearchPromptInputs>
    useWatchQuery$GreWordSearchPromptInputs(
            [WatchOptions$Query$GreWordSearchPromptInputs? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GreWordSearchPromptInputs());

class Query$GreWordSearchPromptInputs$Widget
    extends graphql_flutter.Query<Query$GreWordSearchPromptInputs> {
  Query$GreWordSearchPromptInputs$Widget({
    widgets.Key? key,
    Options$Query$GreWordSearchPromptInputs? options,
    required graphql_flutter.QueryBuilder<Query$GreWordSearchPromptInputs>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GreWordSearchPromptInputs(),
          builder: builder,
        );
}

class Query$GreWordSearchPromptInputs$greWordSearchPromptInputs {
  Query$GreWordSearchPromptInputs$greWordSearchPromptInputs({
    required this.id,
    required this.text,
    required this.userId,
    this.$__typename = 'GreWordSearchPromptInput',
  });

  factory Query$GreWordSearchPromptInputs$greWordSearchPromptInputs.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Query$GreWordSearchPromptInputs$greWordSearchPromptInputs(
      id: (l$id as String),
      text: (l$text as String),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String text;

  final String userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$text,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GreWordSearchPromptInputs$greWordSearchPromptInputs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs
    on Query$GreWordSearchPromptInputs$greWordSearchPromptInputs {
  CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs<
          Query$GreWordSearchPromptInputs$greWordSearchPromptInputs>
      get copyWith =>
          CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs<
    TRes> {
  factory CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs(
    Query$GreWordSearchPromptInputs$greWordSearchPromptInputs instance,
    TRes Function(Query$GreWordSearchPromptInputs$greWordSearchPromptInputs)
        then,
  ) = _CopyWithImpl$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs;

  factory CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs;

  TRes call({
    String? id,
    String? text,
    String? userId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs<
        TRes>
    implements
        CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs<
            TRes> {
  _CopyWithImpl$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs(
    this._instance,
    this._then,
  );

  final Query$GreWordSearchPromptInputs$greWordSearchPromptInputs _instance;

  final TRes Function(Query$GreWordSearchPromptInputs$greWordSearchPromptInputs)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GreWordSearchPromptInputs$greWordSearchPromptInputs(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs<
        TRes>
    implements
        CopyWith$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs<
            TRes> {
  _CopyWithStubImpl$Query$GreWordSearchPromptInputs$greWordSearchPromptInputs(
      this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? userId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateGreWordSearchPromptInput {
  factory Variables$Mutation$CreateGreWordSearchPromptInput({
    required String text,
    required String userId,
  }) =>
      Variables$Mutation$CreateGreWordSearchPromptInput._({
        r'text': text,
        r'userId': userId,
      });

  Variables$Mutation$CreateGreWordSearchPromptInput._(this._$data);

  factory Variables$Mutation$CreateGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Mutation$CreateGreWordSearchPromptInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get text => (_$data['text'] as String);

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$text = text;
    result$data['text'] = l$text;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateGreWordSearchPromptInput<
          Variables$Mutation$CreateGreWordSearchPromptInput>
      get copyWith =>
          CopyWith$Variables$Mutation$CreateGreWordSearchPromptInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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
    final l$text = text;
    final l$userId = userId;
    return Object.hashAll([
      l$text,
      l$userId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateGreWordSearchPromptInput<
    TRes> {
  factory CopyWith$Variables$Mutation$CreateGreWordSearchPromptInput(
    Variables$Mutation$CreateGreWordSearchPromptInput instance,
    TRes Function(Variables$Mutation$CreateGreWordSearchPromptInput) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateGreWordSearchPromptInput;

  factory CopyWith$Variables$Mutation$CreateGreWordSearchPromptInput.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateGreWordSearchPromptInput;

  TRes call({
    String? text,
    String? userId,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateGreWordSearchPromptInput<TRes>
    implements
        CopyWith$Variables$Mutation$CreateGreWordSearchPromptInput<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateGreWordSearchPromptInput _instance;

  final TRes Function(Variables$Mutation$CreateGreWordSearchPromptInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Mutation$CreateGreWordSearchPromptInput._({
        ..._instance._$data,
        if (text != _undefined && text != null) 'text': (text as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateGreWordSearchPromptInput<TRes>
    implements
        CopyWith$Variables$Mutation$CreateGreWordSearchPromptInput<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateGreWordSearchPromptInput(
      this._res);

  TRes _res;

  call({
    String? text,
    String? userId,
  }) =>
      _res;
}

class Mutation$CreateGreWordSearchPromptInput {
  Mutation$CreateGreWordSearchPromptInput({
    required this.createGreWordSearchPromptInput,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> json) {
    final l$createGreWordSearchPromptInput =
        json['createGreWordSearchPromptInput'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateGreWordSearchPromptInput(
      createGreWordSearchPromptInput:
          Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput
              .fromJson(
                  (l$createGreWordSearchPromptInput as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput
      createGreWordSearchPromptInput;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createGreWordSearchPromptInput = createGreWordSearchPromptInput;
    _resultData['createGreWordSearchPromptInput'] =
        l$createGreWordSearchPromptInput.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createGreWordSearchPromptInput = createGreWordSearchPromptInput;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createGreWordSearchPromptInput,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createGreWordSearchPromptInput = createGreWordSearchPromptInput;
    final lOther$createGreWordSearchPromptInput =
        other.createGreWordSearchPromptInput;
    if (l$createGreWordSearchPromptInput !=
        lOther$createGreWordSearchPromptInput) {
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

extension UtilityExtension$Mutation$CreateGreWordSearchPromptInput
    on Mutation$CreateGreWordSearchPromptInput {
  CopyWith$Mutation$CreateGreWordSearchPromptInput<
          Mutation$CreateGreWordSearchPromptInput>
      get copyWith => CopyWith$Mutation$CreateGreWordSearchPromptInput(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateGreWordSearchPromptInput<TRes> {
  factory CopyWith$Mutation$CreateGreWordSearchPromptInput(
    Mutation$CreateGreWordSearchPromptInput instance,
    TRes Function(Mutation$CreateGreWordSearchPromptInput) then,
  ) = _CopyWithImpl$Mutation$CreateGreWordSearchPromptInput;

  factory CopyWith$Mutation$CreateGreWordSearchPromptInput.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateGreWordSearchPromptInput;

  TRes call({
    Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput?
        createGreWordSearchPromptInput,
    String? $__typename,
  });
  CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
      TRes> get createGreWordSearchPromptInput;
}

class _CopyWithImpl$Mutation$CreateGreWordSearchPromptInput<TRes>
    implements CopyWith$Mutation$CreateGreWordSearchPromptInput<TRes> {
  _CopyWithImpl$Mutation$CreateGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Mutation$CreateGreWordSearchPromptInput _instance;

  final TRes Function(Mutation$CreateGreWordSearchPromptInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createGreWordSearchPromptInput = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateGreWordSearchPromptInput(
        createGreWordSearchPromptInput: createGreWordSearchPromptInput ==
                    _undefined ||
                createGreWordSearchPromptInput == null
            ? _instance.createGreWordSearchPromptInput
            : (createGreWordSearchPromptInput
                as Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
      TRes> get createGreWordSearchPromptInput {
    final local$createGreWordSearchPromptInput =
        _instance.createGreWordSearchPromptInput;
    return CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput(
        local$createGreWordSearchPromptInput,
        (e) => call(createGreWordSearchPromptInput: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateGreWordSearchPromptInput<TRes>
    implements CopyWith$Mutation$CreateGreWordSearchPromptInput<TRes> {
  _CopyWithStubImpl$Mutation$CreateGreWordSearchPromptInput(this._res);

  TRes _res;

  call({
    Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput?
        createGreWordSearchPromptInput,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
          TRes>
      get createGreWordSearchPromptInput =>
          CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput
              .stub(_res);
}

const documentNodeMutationCreateGreWordSearchPromptInput =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateGreWordSearchPromptInput'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'text')),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createGreWordSearchPromptInput'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'text'),
            value: VariableNode(name: NameNode(value: 'text')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
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
            name: NameNode(value: 'text'),
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
Mutation$CreateGreWordSearchPromptInput
    _parserFn$Mutation$CreateGreWordSearchPromptInput(
            Map<String, dynamic> data) =>
        Mutation$CreateGreWordSearchPromptInput.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateGreWordSearchPromptInput
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateGreWordSearchPromptInput?,
);

class Options$Mutation$CreateGreWordSearchPromptInput
    extends graphql.MutationOptions<Mutation$CreateGreWordSearchPromptInput> {
  Options$Mutation$CreateGreWordSearchPromptInput({
    String? operationName,
    required Variables$Mutation$CreateGreWordSearchPromptInput variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWordSearchPromptInput? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateGreWordSearchPromptInput? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateGreWordSearchPromptInput>? update,
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
                        : _parserFn$Mutation$CreateGreWordSearchPromptInput(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateGreWordSearchPromptInput,
          parserFn: _parserFn$Mutation$CreateGreWordSearchPromptInput,
        );

  final OnMutationCompleted$Mutation$CreateGreWordSearchPromptInput?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateGreWordSearchPromptInput
    extends graphql.WatchQueryOptions<Mutation$CreateGreWordSearchPromptInput> {
  WatchOptions$Mutation$CreateGreWordSearchPromptInput({
    String? operationName,
    required Variables$Mutation$CreateGreWordSearchPromptInput variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWordSearchPromptInput? typedOptimisticResult,
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
          document: documentNodeMutationCreateGreWordSearchPromptInput,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateGreWordSearchPromptInput,
        );
}

extension ClientExtension$Mutation$CreateGreWordSearchPromptInput
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateGreWordSearchPromptInput>>
      mutate$CreateGreWordSearchPromptInput(
              Options$Mutation$CreateGreWordSearchPromptInput options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateGreWordSearchPromptInput>
      watchMutation$CreateGreWordSearchPromptInput(
              WatchOptions$Mutation$CreateGreWordSearchPromptInput options) =>
          this.watchMutation(options);
}

class Mutation$CreateGreWordSearchPromptInput$HookResult {
  Mutation$CreateGreWordSearchPromptInput$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateGreWordSearchPromptInput runMutation;

  final graphql.QueryResult<Mutation$CreateGreWordSearchPromptInput> result;
}

Mutation$CreateGreWordSearchPromptInput$HookResult
    useMutation$CreateGreWordSearchPromptInput(
        [WidgetOptions$Mutation$CreateGreWordSearchPromptInput? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$CreateGreWordSearchPromptInput());
  return Mutation$CreateGreWordSearchPromptInput$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateGreWordSearchPromptInput>
    useWatchMutation$CreateGreWordSearchPromptInput(
            WatchOptions$Mutation$CreateGreWordSearchPromptInput options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateGreWordSearchPromptInput
    extends graphql.MutationOptions<Mutation$CreateGreWordSearchPromptInput> {
  WidgetOptions$Mutation$CreateGreWordSearchPromptInput({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWordSearchPromptInput? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateGreWordSearchPromptInput? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateGreWordSearchPromptInput>? update,
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
                        : _parserFn$Mutation$CreateGreWordSearchPromptInput(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateGreWordSearchPromptInput,
          parserFn: _parserFn$Mutation$CreateGreWordSearchPromptInput,
        );

  final OnMutationCompleted$Mutation$CreateGreWordSearchPromptInput?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateGreWordSearchPromptInput
    = graphql.MultiSourceResult<Mutation$CreateGreWordSearchPromptInput>
        Function(
  Variables$Mutation$CreateGreWordSearchPromptInput, {
  Object? optimisticResult,
  Mutation$CreateGreWordSearchPromptInput? typedOptimisticResult,
});
typedef Builder$Mutation$CreateGreWordSearchPromptInput = widgets.Widget
    Function(
  RunMutation$Mutation$CreateGreWordSearchPromptInput,
  graphql.QueryResult<Mutation$CreateGreWordSearchPromptInput>?,
);

class Mutation$CreateGreWordSearchPromptInput$Widget
    extends graphql_flutter.Mutation<Mutation$CreateGreWordSearchPromptInput> {
  Mutation$CreateGreWordSearchPromptInput$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateGreWordSearchPromptInput? options,
    required Builder$Mutation$CreateGreWordSearchPromptInput builder,
  }) : super(
          key: key,
          options: options ??
              WidgetOptions$Mutation$CreateGreWordSearchPromptInput(),
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

class Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput {
  Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput({
    required this.id,
    required this.text,
    required this.userId,
    this.$__typename = 'GreWordSearchPromptInput',
  });

  factory Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput(
      id: (l$id as String),
      text: (l$text as String),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String text;

  final String userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$text,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput
    on Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput {
  CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
          Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput>
      get copyWith =>
          CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
    TRes> {
  factory CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput(
    Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput
        instance,
    TRes Function(
            Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput)
        then,
  ) = _CopyWithImpl$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput;

  factory CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput;

  TRes call({
    String? id,
    String? text,
    String? userId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
        TRes>
    implements
        CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
            TRes> {
  _CopyWithImpl$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput
      _instance;

  final TRes Function(
          Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
        TRes>
    implements
        CopyWith$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateGreWordSearchPromptInput$createGreWordSearchPromptInput(
      this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? userId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateGreWordSearchPromptInput {
  factory Variables$Mutation$UpdateGreWordSearchPromptInput({
    required String text,
    required String id,
  }) =>
      Variables$Mutation$UpdateGreWordSearchPromptInput._({
        r'text': text,
        r'id': id,
      });

  Variables$Mutation$UpdateGreWordSearchPromptInput._(this._$data);

  factory Variables$Mutation$UpdateGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$text = data['text'];
    result$data['text'] = (l$text as String);
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$UpdateGreWordSearchPromptInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get text => (_$data['text'] as String);

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$text = text;
    result$data['text'] = l$text;
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateGreWordSearchPromptInput<
          Variables$Mutation$UpdateGreWordSearchPromptInput>
      get copyWith =>
          CopyWith$Variables$Mutation$UpdateGreWordSearchPromptInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$id = id;
    return Object.hashAll([
      l$text,
      l$id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateGreWordSearchPromptInput<
    TRes> {
  factory CopyWith$Variables$Mutation$UpdateGreWordSearchPromptInput(
    Variables$Mutation$UpdateGreWordSearchPromptInput instance,
    TRes Function(Variables$Mutation$UpdateGreWordSearchPromptInput) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateGreWordSearchPromptInput;

  factory CopyWith$Variables$Mutation$UpdateGreWordSearchPromptInput.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateGreWordSearchPromptInput;

  TRes call({
    String? text,
    String? id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateGreWordSearchPromptInput<TRes>
    implements
        CopyWith$Variables$Mutation$UpdateGreWordSearchPromptInput<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateGreWordSearchPromptInput _instance;

  final TRes Function(Variables$Mutation$UpdateGreWordSearchPromptInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateGreWordSearchPromptInput._({
        ..._instance._$data,
        if (text != _undefined && text != null) 'text': (text as String),
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateGreWordSearchPromptInput<TRes>
    implements
        CopyWith$Variables$Mutation$UpdateGreWordSearchPromptInput<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateGreWordSearchPromptInput(
      this._res);

  TRes _res;

  call({
    String? text,
    String? id,
  }) =>
      _res;
}

class Mutation$UpdateGreWordSearchPromptInput {
  Mutation$UpdateGreWordSearchPromptInput({
    this.updateGreWordSearchPromptInput,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> json) {
    final l$updateGreWordSearchPromptInput =
        json['updateGreWordSearchPromptInput'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateGreWordSearchPromptInput(
      updateGreWordSearchPromptInput: l$updateGreWordSearchPromptInput == null
          ? null
          : Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput
              .fromJson(
                  (l$updateGreWordSearchPromptInput as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput?
      updateGreWordSearchPromptInput;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateGreWordSearchPromptInput = updateGreWordSearchPromptInput;
    _resultData['updateGreWordSearchPromptInput'] =
        l$updateGreWordSearchPromptInput?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateGreWordSearchPromptInput = updateGreWordSearchPromptInput;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateGreWordSearchPromptInput,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateGreWordSearchPromptInput = updateGreWordSearchPromptInput;
    final lOther$updateGreWordSearchPromptInput =
        other.updateGreWordSearchPromptInput;
    if (l$updateGreWordSearchPromptInput !=
        lOther$updateGreWordSearchPromptInput) {
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

extension UtilityExtension$Mutation$UpdateGreWordSearchPromptInput
    on Mutation$UpdateGreWordSearchPromptInput {
  CopyWith$Mutation$UpdateGreWordSearchPromptInput<
          Mutation$UpdateGreWordSearchPromptInput>
      get copyWith => CopyWith$Mutation$UpdateGreWordSearchPromptInput(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateGreWordSearchPromptInput<TRes> {
  factory CopyWith$Mutation$UpdateGreWordSearchPromptInput(
    Mutation$UpdateGreWordSearchPromptInput instance,
    TRes Function(Mutation$UpdateGreWordSearchPromptInput) then,
  ) = _CopyWithImpl$Mutation$UpdateGreWordSearchPromptInput;

  factory CopyWith$Mutation$UpdateGreWordSearchPromptInput.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateGreWordSearchPromptInput;

  TRes call({
    Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput?
        updateGreWordSearchPromptInput,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
      TRes> get updateGreWordSearchPromptInput;
}

class _CopyWithImpl$Mutation$UpdateGreWordSearchPromptInput<TRes>
    implements CopyWith$Mutation$UpdateGreWordSearchPromptInput<TRes> {
  _CopyWithImpl$Mutation$UpdateGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Mutation$UpdateGreWordSearchPromptInput _instance;

  final TRes Function(Mutation$UpdateGreWordSearchPromptInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateGreWordSearchPromptInput = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateGreWordSearchPromptInput(
        updateGreWordSearchPromptInput: updateGreWordSearchPromptInput ==
                _undefined
            ? _instance.updateGreWordSearchPromptInput
            : (updateGreWordSearchPromptInput
                as Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
      TRes> get updateGreWordSearchPromptInput {
    final local$updateGreWordSearchPromptInput =
        _instance.updateGreWordSearchPromptInput;
    return local$updateGreWordSearchPromptInput == null
        ? CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput(
            local$updateGreWordSearchPromptInput,
            (e) => call(updateGreWordSearchPromptInput: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateGreWordSearchPromptInput<TRes>
    implements CopyWith$Mutation$UpdateGreWordSearchPromptInput<TRes> {
  _CopyWithStubImpl$Mutation$UpdateGreWordSearchPromptInput(this._res);

  TRes _res;

  call({
    Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput?
        updateGreWordSearchPromptInput,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
          TRes>
      get updateGreWordSearchPromptInput =>
          CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput
              .stub(_res);
}

const documentNodeMutationUpdateGreWordSearchPromptInput =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateGreWordSearchPromptInput'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'text')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'updateGreWordSearchPromptInput'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'text'),
            value: VariableNode(name: NameNode(value: 'text')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'text'),
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
Mutation$UpdateGreWordSearchPromptInput
    _parserFn$Mutation$UpdateGreWordSearchPromptInput(
            Map<String, dynamic> data) =>
        Mutation$UpdateGreWordSearchPromptInput.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateGreWordSearchPromptInput
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateGreWordSearchPromptInput?,
);

class Options$Mutation$UpdateGreWordSearchPromptInput
    extends graphql.MutationOptions<Mutation$UpdateGreWordSearchPromptInput> {
  Options$Mutation$UpdateGreWordSearchPromptInput({
    String? operationName,
    required Variables$Mutation$UpdateGreWordSearchPromptInput variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateGreWordSearchPromptInput? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateGreWordSearchPromptInput? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateGreWordSearchPromptInput>? update,
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
                        : _parserFn$Mutation$UpdateGreWordSearchPromptInput(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateGreWordSearchPromptInput,
          parserFn: _parserFn$Mutation$UpdateGreWordSearchPromptInput,
        );

  final OnMutationCompleted$Mutation$UpdateGreWordSearchPromptInput?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateGreWordSearchPromptInput
    extends graphql.WatchQueryOptions<Mutation$UpdateGreWordSearchPromptInput> {
  WatchOptions$Mutation$UpdateGreWordSearchPromptInput({
    String? operationName,
    required Variables$Mutation$UpdateGreWordSearchPromptInput variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateGreWordSearchPromptInput? typedOptimisticResult,
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
          document: documentNodeMutationUpdateGreWordSearchPromptInput,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateGreWordSearchPromptInput,
        );
}

extension ClientExtension$Mutation$UpdateGreWordSearchPromptInput
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateGreWordSearchPromptInput>>
      mutate$UpdateGreWordSearchPromptInput(
              Options$Mutation$UpdateGreWordSearchPromptInput options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateGreWordSearchPromptInput>
      watchMutation$UpdateGreWordSearchPromptInput(
              WatchOptions$Mutation$UpdateGreWordSearchPromptInput options) =>
          this.watchMutation(options);
}

class Mutation$UpdateGreWordSearchPromptInput$HookResult {
  Mutation$UpdateGreWordSearchPromptInput$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateGreWordSearchPromptInput runMutation;

  final graphql.QueryResult<Mutation$UpdateGreWordSearchPromptInput> result;
}

Mutation$UpdateGreWordSearchPromptInput$HookResult
    useMutation$UpdateGreWordSearchPromptInput(
        [WidgetOptions$Mutation$UpdateGreWordSearchPromptInput? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$UpdateGreWordSearchPromptInput());
  return Mutation$UpdateGreWordSearchPromptInput$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateGreWordSearchPromptInput>
    useWatchMutation$UpdateGreWordSearchPromptInput(
            WatchOptions$Mutation$UpdateGreWordSearchPromptInput options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateGreWordSearchPromptInput
    extends graphql.MutationOptions<Mutation$UpdateGreWordSearchPromptInput> {
  WidgetOptions$Mutation$UpdateGreWordSearchPromptInput({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateGreWordSearchPromptInput? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateGreWordSearchPromptInput? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateGreWordSearchPromptInput>? update,
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
                        : _parserFn$Mutation$UpdateGreWordSearchPromptInput(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateGreWordSearchPromptInput,
          parserFn: _parserFn$Mutation$UpdateGreWordSearchPromptInput,
        );

  final OnMutationCompleted$Mutation$UpdateGreWordSearchPromptInput?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateGreWordSearchPromptInput
    = graphql.MultiSourceResult<Mutation$UpdateGreWordSearchPromptInput>
        Function(
  Variables$Mutation$UpdateGreWordSearchPromptInput, {
  Object? optimisticResult,
  Mutation$UpdateGreWordSearchPromptInput? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateGreWordSearchPromptInput = widgets.Widget
    Function(
  RunMutation$Mutation$UpdateGreWordSearchPromptInput,
  graphql.QueryResult<Mutation$UpdateGreWordSearchPromptInput>?,
);

class Mutation$UpdateGreWordSearchPromptInput$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateGreWordSearchPromptInput> {
  Mutation$UpdateGreWordSearchPromptInput$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateGreWordSearchPromptInput? options,
    required Builder$Mutation$UpdateGreWordSearchPromptInput builder,
  }) : super(
          key: key,
          options: options ??
              WidgetOptions$Mutation$UpdateGreWordSearchPromptInput(),
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

class Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput {
  Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput({
    required this.id,
    required this.text,
    required this.userId,
    this.$__typename = 'GreWordSearchPromptInput',
  });

  factory Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$text = json['text'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput(
      id: (l$id as String),
      text: (l$text as String),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String text;

  final String userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$text,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput
    on Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput {
  CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
          Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput>
      get copyWith =>
          CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
    TRes> {
  factory CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput(
    Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput
        instance,
    TRes Function(
            Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput)
        then,
  ) = _CopyWithImpl$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput;

  factory CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput;

  TRes call({
    String? id,
    String? text,
    String? userId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
        TRes>
    implements
        CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
            TRes> {
  _CopyWithImpl$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput
      _instance;

  final TRes Function(
          Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
        TRes>
    implements
        CopyWith$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateGreWordSearchPromptInput$updateGreWordSearchPromptInput(
      this._res);

  TRes _res;

  call({
    String? id,
    String? text,
    String? userId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteGreWordSearchPromptInput {
  factory Variables$Mutation$DeleteGreWordSearchPromptInput(
          {required String id}) =>
      Variables$Mutation$DeleteGreWordSearchPromptInput._({
        r'id': id,
      });

  Variables$Mutation$DeleteGreWordSearchPromptInput._(this._$data);

  factory Variables$Mutation$DeleteGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteGreWordSearchPromptInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteGreWordSearchPromptInput<
          Variables$Mutation$DeleteGreWordSearchPromptInput>
      get copyWith =>
          CopyWith$Variables$Mutation$DeleteGreWordSearchPromptInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteGreWordSearchPromptInput<
    TRes> {
  factory CopyWith$Variables$Mutation$DeleteGreWordSearchPromptInput(
    Variables$Mutation$DeleteGreWordSearchPromptInput instance,
    TRes Function(Variables$Mutation$DeleteGreWordSearchPromptInput) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteGreWordSearchPromptInput;

  factory CopyWith$Variables$Mutation$DeleteGreWordSearchPromptInput.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteGreWordSearchPromptInput;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteGreWordSearchPromptInput<TRes>
    implements
        CopyWith$Variables$Mutation$DeleteGreWordSearchPromptInput<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteGreWordSearchPromptInput _instance;

  final TRes Function(Variables$Mutation$DeleteGreWordSearchPromptInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteGreWordSearchPromptInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteGreWordSearchPromptInput<TRes>
    implements
        CopyWith$Variables$Mutation$DeleteGreWordSearchPromptInput<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteGreWordSearchPromptInput(
      this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteGreWordSearchPromptInput {
  Mutation$DeleteGreWordSearchPromptInput({
    this.deleteGreWordSearchPromptInput,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> json) {
    final l$deleteGreWordSearchPromptInput =
        json['deleteGreWordSearchPromptInput'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteGreWordSearchPromptInput(
      deleteGreWordSearchPromptInput: l$deleteGreWordSearchPromptInput == null
          ? null
          : Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput
              .fromJson(
                  (l$deleteGreWordSearchPromptInput as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput?
      deleteGreWordSearchPromptInput;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteGreWordSearchPromptInput = deleteGreWordSearchPromptInput;
    _resultData['deleteGreWordSearchPromptInput'] =
        l$deleteGreWordSearchPromptInput?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteGreWordSearchPromptInput = deleteGreWordSearchPromptInput;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteGreWordSearchPromptInput,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteGreWordSearchPromptInput = deleteGreWordSearchPromptInput;
    final lOther$deleteGreWordSearchPromptInput =
        other.deleteGreWordSearchPromptInput;
    if (l$deleteGreWordSearchPromptInput !=
        lOther$deleteGreWordSearchPromptInput) {
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

extension UtilityExtension$Mutation$DeleteGreWordSearchPromptInput
    on Mutation$DeleteGreWordSearchPromptInput {
  CopyWith$Mutation$DeleteGreWordSearchPromptInput<
          Mutation$DeleteGreWordSearchPromptInput>
      get copyWith => CopyWith$Mutation$DeleteGreWordSearchPromptInput(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteGreWordSearchPromptInput<TRes> {
  factory CopyWith$Mutation$DeleteGreWordSearchPromptInput(
    Mutation$DeleteGreWordSearchPromptInput instance,
    TRes Function(Mutation$DeleteGreWordSearchPromptInput) then,
  ) = _CopyWithImpl$Mutation$DeleteGreWordSearchPromptInput;

  factory CopyWith$Mutation$DeleteGreWordSearchPromptInput.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteGreWordSearchPromptInput;

  TRes call({
    Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput?
        deleteGreWordSearchPromptInput,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
      TRes> get deleteGreWordSearchPromptInput;
}

class _CopyWithImpl$Mutation$DeleteGreWordSearchPromptInput<TRes>
    implements CopyWith$Mutation$DeleteGreWordSearchPromptInput<TRes> {
  _CopyWithImpl$Mutation$DeleteGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Mutation$DeleteGreWordSearchPromptInput _instance;

  final TRes Function(Mutation$DeleteGreWordSearchPromptInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteGreWordSearchPromptInput = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteGreWordSearchPromptInput(
        deleteGreWordSearchPromptInput: deleteGreWordSearchPromptInput ==
                _undefined
            ? _instance.deleteGreWordSearchPromptInput
            : (deleteGreWordSearchPromptInput
                as Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
      TRes> get deleteGreWordSearchPromptInput {
    final local$deleteGreWordSearchPromptInput =
        _instance.deleteGreWordSearchPromptInput;
    return local$deleteGreWordSearchPromptInput == null
        ? CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput
            .stub(_then(_instance))
        : CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput(
            local$deleteGreWordSearchPromptInput,
            (e) => call(deleteGreWordSearchPromptInput: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteGreWordSearchPromptInput<TRes>
    implements CopyWith$Mutation$DeleteGreWordSearchPromptInput<TRes> {
  _CopyWithStubImpl$Mutation$DeleteGreWordSearchPromptInput(this._res);

  TRes _res;

  call({
    Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput?
        deleteGreWordSearchPromptInput,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
          TRes>
      get deleteGreWordSearchPromptInput =>
          CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput
              .stub(_res);
}

const documentNodeMutationDeleteGreWordSearchPromptInput =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteGreWordSearchPromptInput'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'deleteGreWordSearchPromptInput'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
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
Mutation$DeleteGreWordSearchPromptInput
    _parserFn$Mutation$DeleteGreWordSearchPromptInput(
            Map<String, dynamic> data) =>
        Mutation$DeleteGreWordSearchPromptInput.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteGreWordSearchPromptInput
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteGreWordSearchPromptInput?,
);

class Options$Mutation$DeleteGreWordSearchPromptInput
    extends graphql.MutationOptions<Mutation$DeleteGreWordSearchPromptInput> {
  Options$Mutation$DeleteGreWordSearchPromptInput({
    String? operationName,
    required Variables$Mutation$DeleteGreWordSearchPromptInput variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWordSearchPromptInput? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteGreWordSearchPromptInput? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteGreWordSearchPromptInput>? update,
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
                        : _parserFn$Mutation$DeleteGreWordSearchPromptInput(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteGreWordSearchPromptInput,
          parserFn: _parserFn$Mutation$DeleteGreWordSearchPromptInput,
        );

  final OnMutationCompleted$Mutation$DeleteGreWordSearchPromptInput?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteGreWordSearchPromptInput
    extends graphql.WatchQueryOptions<Mutation$DeleteGreWordSearchPromptInput> {
  WatchOptions$Mutation$DeleteGreWordSearchPromptInput({
    String? operationName,
    required Variables$Mutation$DeleteGreWordSearchPromptInput variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWordSearchPromptInput? typedOptimisticResult,
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
          document: documentNodeMutationDeleteGreWordSearchPromptInput,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteGreWordSearchPromptInput,
        );
}

extension ClientExtension$Mutation$DeleteGreWordSearchPromptInput
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteGreWordSearchPromptInput>>
      mutate$DeleteGreWordSearchPromptInput(
              Options$Mutation$DeleteGreWordSearchPromptInput options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteGreWordSearchPromptInput>
      watchMutation$DeleteGreWordSearchPromptInput(
              WatchOptions$Mutation$DeleteGreWordSearchPromptInput options) =>
          this.watchMutation(options);
}

class Mutation$DeleteGreWordSearchPromptInput$HookResult {
  Mutation$DeleteGreWordSearchPromptInput$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteGreWordSearchPromptInput runMutation;

  final graphql.QueryResult<Mutation$DeleteGreWordSearchPromptInput> result;
}

Mutation$DeleteGreWordSearchPromptInput$HookResult
    useMutation$DeleteGreWordSearchPromptInput(
        [WidgetOptions$Mutation$DeleteGreWordSearchPromptInput? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$DeleteGreWordSearchPromptInput());
  return Mutation$DeleteGreWordSearchPromptInput$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteGreWordSearchPromptInput>
    useWatchMutation$DeleteGreWordSearchPromptInput(
            WatchOptions$Mutation$DeleteGreWordSearchPromptInput options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteGreWordSearchPromptInput
    extends graphql.MutationOptions<Mutation$DeleteGreWordSearchPromptInput> {
  WidgetOptions$Mutation$DeleteGreWordSearchPromptInput({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWordSearchPromptInput? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteGreWordSearchPromptInput? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteGreWordSearchPromptInput>? update,
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
                        : _parserFn$Mutation$DeleteGreWordSearchPromptInput(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteGreWordSearchPromptInput,
          parserFn: _parserFn$Mutation$DeleteGreWordSearchPromptInput,
        );

  final OnMutationCompleted$Mutation$DeleteGreWordSearchPromptInput?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteGreWordSearchPromptInput
    = graphql.MultiSourceResult<Mutation$DeleteGreWordSearchPromptInput>
        Function(
  Variables$Mutation$DeleteGreWordSearchPromptInput, {
  Object? optimisticResult,
  Mutation$DeleteGreWordSearchPromptInput? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteGreWordSearchPromptInput = widgets.Widget
    Function(
  RunMutation$Mutation$DeleteGreWordSearchPromptInput,
  graphql.QueryResult<Mutation$DeleteGreWordSearchPromptInput>?,
);

class Mutation$DeleteGreWordSearchPromptInput$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteGreWordSearchPromptInput> {
  Mutation$DeleteGreWordSearchPromptInput$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteGreWordSearchPromptInput? options,
    required Builder$Mutation$DeleteGreWordSearchPromptInput builder,
  }) : super(
          key: key,
          options: options ??
              WidgetOptions$Mutation$DeleteGreWordSearchPromptInput(),
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

class Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput {
  Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput({
    required this.id,
    this.$__typename = 'GreWordSearchPromptInput',
  });

  factory Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput
    on Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput {
  CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
          Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput>
      get copyWith =>
          CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
    TRes> {
  factory CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput(
    Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput
        instance,
    TRes Function(
            Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput)
        then,
  ) = _CopyWithImpl$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput;

  factory CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
        TRes>
    implements
        CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
            TRes> {
  _CopyWithImpl$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput(
    this._instance,
    this._then,
  );

  final Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput
      _instance;

  final TRes Function(
          Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
        TRes>
    implements
        CopyWith$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteGreWordSearchPromptInput$deleteGreWordSearchPromptInput(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}