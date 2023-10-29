import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$DeleteGreWord {
  factory Variables$Mutation$DeleteGreWord({required String deleteGreWordId}) =>
      Variables$Mutation$DeleteGreWord._({
        r'deleteGreWordId': deleteGreWordId,
      });

  Variables$Mutation$DeleteGreWord._(this._$data);

  factory Variables$Mutation$DeleteGreWord.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deleteGreWordId = data['deleteGreWordId'];
    result$data['deleteGreWordId'] = (l$deleteGreWordId as String);
    return Variables$Mutation$DeleteGreWord._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deleteGreWordId => (_$data['deleteGreWordId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteGreWordId = deleteGreWordId;
    result$data['deleteGreWordId'] = l$deleteGreWordId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteGreWord<Variables$Mutation$DeleteGreWord>
      get copyWith => CopyWith$Variables$Mutation$DeleteGreWord(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteGreWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteGreWordId = deleteGreWordId;
    final lOther$deleteGreWordId = other.deleteGreWordId;
    if (l$deleteGreWordId != lOther$deleteGreWordId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteGreWordId = deleteGreWordId;
    return Object.hashAll([l$deleteGreWordId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteGreWord<TRes> {
  factory CopyWith$Variables$Mutation$DeleteGreWord(
    Variables$Mutation$DeleteGreWord instance,
    TRes Function(Variables$Mutation$DeleteGreWord) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteGreWord;

  factory CopyWith$Variables$Mutation$DeleteGreWord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteGreWord;

  TRes call({String? deleteGreWordId});
}

class _CopyWithImpl$Variables$Mutation$DeleteGreWord<TRes>
    implements CopyWith$Variables$Mutation$DeleteGreWord<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteGreWord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteGreWord _instance;

  final TRes Function(Variables$Mutation$DeleteGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteGreWordId = _undefined}) =>
      _then(Variables$Mutation$DeleteGreWord._({
        ..._instance._$data,
        if (deleteGreWordId != _undefined && deleteGreWordId != null)
          'deleteGreWordId': (deleteGreWordId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteGreWord<TRes>
    implements CopyWith$Variables$Mutation$DeleteGreWord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteGreWord(this._res);

  TRes _res;

  call({String? deleteGreWordId}) => _res;
}

class Mutation$DeleteGreWord {
  Mutation$DeleteGreWord({
    this.deleteGreWord,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteGreWord.fromJson(Map<String, dynamic> json) {
    final l$deleteGreWord = json['deleteGreWord'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteGreWord(
      deleteGreWord: l$deleteGreWord == null
          ? null
          : Mutation$DeleteGreWord$deleteGreWord.fromJson(
              (l$deleteGreWord as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteGreWord$deleteGreWord? deleteGreWord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteGreWord = deleteGreWord;
    _resultData['deleteGreWord'] = l$deleteGreWord?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteGreWord = deleteGreWord;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteGreWord,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteGreWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteGreWord = deleteGreWord;
    final lOther$deleteGreWord = other.deleteGreWord;
    if (l$deleteGreWord != lOther$deleteGreWord) {
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

extension UtilityExtension$Mutation$DeleteGreWord on Mutation$DeleteGreWord {
  CopyWith$Mutation$DeleteGreWord<Mutation$DeleteGreWord> get copyWith =>
      CopyWith$Mutation$DeleteGreWord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteGreWord<TRes> {
  factory CopyWith$Mutation$DeleteGreWord(
    Mutation$DeleteGreWord instance,
    TRes Function(Mutation$DeleteGreWord) then,
  ) = _CopyWithImpl$Mutation$DeleteGreWord;

  factory CopyWith$Mutation$DeleteGreWord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteGreWord;

  TRes call({
    Mutation$DeleteGreWord$deleteGreWord? deleteGreWord,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteGreWord$deleteGreWord<TRes> get deleteGreWord;
}

class _CopyWithImpl$Mutation$DeleteGreWord<TRes>
    implements CopyWith$Mutation$DeleteGreWord<TRes> {
  _CopyWithImpl$Mutation$DeleteGreWord(
    this._instance,
    this._then,
  );

  final Mutation$DeleteGreWord _instance;

  final TRes Function(Mutation$DeleteGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteGreWord = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteGreWord(
        deleteGreWord: deleteGreWord == _undefined
            ? _instance.deleteGreWord
            : (deleteGreWord as Mutation$DeleteGreWord$deleteGreWord?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteGreWord$deleteGreWord<TRes> get deleteGreWord {
    final local$deleteGreWord = _instance.deleteGreWord;
    return local$deleteGreWord == null
        ? CopyWith$Mutation$DeleteGreWord$deleteGreWord.stub(_then(_instance))
        : CopyWith$Mutation$DeleteGreWord$deleteGreWord(
            local$deleteGreWord, (e) => call(deleteGreWord: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteGreWord<TRes>
    implements CopyWith$Mutation$DeleteGreWord<TRes> {
  _CopyWithStubImpl$Mutation$DeleteGreWord(this._res);

  TRes _res;

  call({
    Mutation$DeleteGreWord$deleteGreWord? deleteGreWord,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteGreWord$deleteGreWord<TRes> get deleteGreWord =>
      CopyWith$Mutation$DeleteGreWord$deleteGreWord.stub(_res);
}

const documentNodeMutationDeleteGreWord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteGreWord'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteGreWordId')),
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
        name: NameNode(value: 'deleteGreWord'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'deleteGreWordId')),
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
Mutation$DeleteGreWord _parserFn$Mutation$DeleteGreWord(
        Map<String, dynamic> data) =>
    Mutation$DeleteGreWord.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteGreWord = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteGreWord?,
);

class Options$Mutation$DeleteGreWord
    extends graphql.MutationOptions<Mutation$DeleteGreWord> {
  Options$Mutation$DeleteGreWord({
    String? operationName,
    required Variables$Mutation$DeleteGreWord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteGreWord? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteGreWord>? update,
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
                        : _parserFn$Mutation$DeleteGreWord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteGreWord,
          parserFn: _parserFn$Mutation$DeleteGreWord,
        );

  final OnMutationCompleted$Mutation$DeleteGreWord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteGreWord
    extends graphql.WatchQueryOptions<Mutation$DeleteGreWord> {
  WatchOptions$Mutation$DeleteGreWord({
    String? operationName,
    required Variables$Mutation$DeleteGreWord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWord? typedOptimisticResult,
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
          document: documentNodeMutationDeleteGreWord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteGreWord,
        );
}

extension ClientExtension$Mutation$DeleteGreWord on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteGreWord>> mutate$DeleteGreWord(
          Options$Mutation$DeleteGreWord options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteGreWord> watchMutation$DeleteGreWord(
          WatchOptions$Mutation$DeleteGreWord options) =>
      this.watchMutation(options);
}

class Mutation$DeleteGreWord$HookResult {
  Mutation$DeleteGreWord$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteGreWord runMutation;

  final graphql.QueryResult<Mutation$DeleteGreWord> result;
}

Mutation$DeleteGreWord$HookResult useMutation$DeleteGreWord(
    [WidgetOptions$Mutation$DeleteGreWord? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteGreWord());
  return Mutation$DeleteGreWord$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteGreWord> useWatchMutation$DeleteGreWord(
        WatchOptions$Mutation$DeleteGreWord options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteGreWord
    extends graphql.MutationOptions<Mutation$DeleteGreWord> {
  WidgetOptions$Mutation$DeleteGreWord({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteGreWord? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteGreWord>? update,
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
                        : _parserFn$Mutation$DeleteGreWord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteGreWord,
          parserFn: _parserFn$Mutation$DeleteGreWord,
        );

  final OnMutationCompleted$Mutation$DeleteGreWord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteGreWord
    = graphql.MultiSourceResult<Mutation$DeleteGreWord> Function(
  Variables$Mutation$DeleteGreWord, {
  Object? optimisticResult,
  Mutation$DeleteGreWord? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteGreWord = widgets.Widget Function(
  RunMutation$Mutation$DeleteGreWord,
  graphql.QueryResult<Mutation$DeleteGreWord>?,
);

class Mutation$DeleteGreWord$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteGreWord> {
  Mutation$DeleteGreWord$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteGreWord? options,
    required Builder$Mutation$DeleteGreWord builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteGreWord(),
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

class Mutation$DeleteGreWord$deleteGreWord {
  Mutation$DeleteGreWord$deleteGreWord({
    required this.id,
    this.$__typename = 'GreWord',
  });

  factory Mutation$DeleteGreWord$deleteGreWord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteGreWord$deleteGreWord(
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
    if (!(other is Mutation$DeleteGreWord$deleteGreWord) ||
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

extension UtilityExtension$Mutation$DeleteGreWord$deleteGreWord
    on Mutation$DeleteGreWord$deleteGreWord {
  CopyWith$Mutation$DeleteGreWord$deleteGreWord<
          Mutation$DeleteGreWord$deleteGreWord>
      get copyWith => CopyWith$Mutation$DeleteGreWord$deleteGreWord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteGreWord$deleteGreWord<TRes> {
  factory CopyWith$Mutation$DeleteGreWord$deleteGreWord(
    Mutation$DeleteGreWord$deleteGreWord instance,
    TRes Function(Mutation$DeleteGreWord$deleteGreWord) then,
  ) = _CopyWithImpl$Mutation$DeleteGreWord$deleteGreWord;

  factory CopyWith$Mutation$DeleteGreWord$deleteGreWord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteGreWord$deleteGreWord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteGreWord$deleteGreWord<TRes>
    implements CopyWith$Mutation$DeleteGreWord$deleteGreWord<TRes> {
  _CopyWithImpl$Mutation$DeleteGreWord$deleteGreWord(
    this._instance,
    this._then,
  );

  final Mutation$DeleteGreWord$deleteGreWord _instance;

  final TRes Function(Mutation$DeleteGreWord$deleteGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteGreWord$deleteGreWord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteGreWord$deleteGreWord<TRes>
    implements CopyWith$Mutation$DeleteGreWord$deleteGreWord<TRes> {
  _CopyWithStubImpl$Mutation$DeleteGreWord$deleteGreWord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
