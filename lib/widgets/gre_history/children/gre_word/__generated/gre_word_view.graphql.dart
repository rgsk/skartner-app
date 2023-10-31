import '../../../../../__generated/schema.graphql.dart';
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

class Variables$Mutation$updateGreWord {
  factory Variables$Mutation$updateGreWord({
    required String updateGreWordId,
    List<Input$GreWordTagWhereUniqueInput?>? greWordTags,
    Enum$GreWordStatus? status,
  }) =>
      Variables$Mutation$updateGreWord._({
        r'updateGreWordId': updateGreWordId,
        if (greWordTags != null) r'greWordTags': greWordTags,
        if (status != null) r'status': status,
      });

  Variables$Mutation$updateGreWord._(this._$data);

  factory Variables$Mutation$updateGreWord.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$updateGreWordId = data['updateGreWordId'];
    result$data['updateGreWordId'] = (l$updateGreWordId as String);
    if (data.containsKey('greWordTags')) {
      final l$greWordTags = data['greWordTags'];
      result$data['greWordTags'] = (l$greWordTags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GreWordTagWhereUniqueInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$GreWordStatus((l$status as String));
    }
    return Variables$Mutation$updateGreWord._(result$data);
  }

  Map<String, dynamic> _$data;

  String get updateGreWordId => (_$data['updateGreWordId'] as String);

  List<Input$GreWordTagWhereUniqueInput?>? get greWordTags =>
      (_$data['greWordTags'] as List<Input$GreWordTagWhereUniqueInput?>?);

  Enum$GreWordStatus? get status => (_$data['status'] as Enum$GreWordStatus?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$updateGreWordId = updateGreWordId;
    result$data['updateGreWordId'] = l$updateGreWordId;
    if (_$data.containsKey('greWordTags')) {
      final l$greWordTags = greWordTags;
      result$data['greWordTags'] =
          l$greWordTags?.map((e) => e?.toJson()).toList();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$GreWordStatus(l$status);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$updateGreWord<Variables$Mutation$updateGreWord>
      get copyWith => CopyWith$Variables$Mutation$updateGreWord(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateGreWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateGreWordId = updateGreWordId;
    final lOther$updateGreWordId = other.updateGreWordId;
    if (l$updateGreWordId != lOther$updateGreWordId) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$updateGreWordId = updateGreWordId;
    final l$greWordTags = greWordTags;
    final l$status = status;
    return Object.hashAll([
      l$updateGreWordId,
      _$data.containsKey('greWordTags')
          ? l$greWordTags == null
              ? null
              : Object.hashAll(l$greWordTags.map((v) => v))
          : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateGreWord<TRes> {
  factory CopyWith$Variables$Mutation$updateGreWord(
    Variables$Mutation$updateGreWord instance,
    TRes Function(Variables$Mutation$updateGreWord) then,
  ) = _CopyWithImpl$Variables$Mutation$updateGreWord;

  factory CopyWith$Variables$Mutation$updateGreWord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateGreWord;

  TRes call({
    String? updateGreWordId,
    List<Input$GreWordTagWhereUniqueInput?>? greWordTags,
    Enum$GreWordStatus? status,
  });
}

class _CopyWithImpl$Variables$Mutation$updateGreWord<TRes>
    implements CopyWith$Variables$Mutation$updateGreWord<TRes> {
  _CopyWithImpl$Variables$Mutation$updateGreWord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateGreWord _instance;

  final TRes Function(Variables$Mutation$updateGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateGreWordId = _undefined,
    Object? greWordTags = _undefined,
    Object? status = _undefined,
  }) =>
      _then(Variables$Mutation$updateGreWord._({
        ..._instance._$data,
        if (updateGreWordId != _undefined && updateGreWordId != null)
          'updateGreWordId': (updateGreWordId as String),
        if (greWordTags != _undefined)
          'greWordTags':
              (greWordTags as List<Input$GreWordTagWhereUniqueInput?>?),
        if (status != _undefined) 'status': (status as Enum$GreWordStatus?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateGreWord<TRes>
    implements CopyWith$Variables$Mutation$updateGreWord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateGreWord(this._res);

  TRes _res;

  call({
    String? updateGreWordId,
    List<Input$GreWordTagWhereUniqueInput?>? greWordTags,
    Enum$GreWordStatus? status,
  }) =>
      _res;
}

class Mutation$updateGreWord {
  Mutation$updateGreWord({
    this.updateGreWord,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateGreWord.fromJson(Map<String, dynamic> json) {
    final l$updateGreWord = json['updateGreWord'];
    final l$$__typename = json['__typename'];
    return Mutation$updateGreWord(
      updateGreWord: l$updateGreWord == null
          ? null
          : Mutation$updateGreWord$updateGreWord.fromJson(
              (l$updateGreWord as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateGreWord$updateGreWord? updateGreWord;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateGreWord = updateGreWord;
    _resultData['updateGreWord'] = l$updateGreWord?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateGreWord = updateGreWord;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateGreWord,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateGreWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateGreWord = updateGreWord;
    final lOther$updateGreWord = other.updateGreWord;
    if (l$updateGreWord != lOther$updateGreWord) {
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

extension UtilityExtension$Mutation$updateGreWord on Mutation$updateGreWord {
  CopyWith$Mutation$updateGreWord<Mutation$updateGreWord> get copyWith =>
      CopyWith$Mutation$updateGreWord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateGreWord<TRes> {
  factory CopyWith$Mutation$updateGreWord(
    Mutation$updateGreWord instance,
    TRes Function(Mutation$updateGreWord) then,
  ) = _CopyWithImpl$Mutation$updateGreWord;

  factory CopyWith$Mutation$updateGreWord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateGreWord;

  TRes call({
    Mutation$updateGreWord$updateGreWord? updateGreWord,
    String? $__typename,
  });
  CopyWith$Mutation$updateGreWord$updateGreWord<TRes> get updateGreWord;
}

class _CopyWithImpl$Mutation$updateGreWord<TRes>
    implements CopyWith$Mutation$updateGreWord<TRes> {
  _CopyWithImpl$Mutation$updateGreWord(
    this._instance,
    this._then,
  );

  final Mutation$updateGreWord _instance;

  final TRes Function(Mutation$updateGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateGreWord = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateGreWord(
        updateGreWord: updateGreWord == _undefined
            ? _instance.updateGreWord
            : (updateGreWord as Mutation$updateGreWord$updateGreWord?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$updateGreWord$updateGreWord<TRes> get updateGreWord {
    final local$updateGreWord = _instance.updateGreWord;
    return local$updateGreWord == null
        ? CopyWith$Mutation$updateGreWord$updateGreWord.stub(_then(_instance))
        : CopyWith$Mutation$updateGreWord$updateGreWord(
            local$updateGreWord, (e) => call(updateGreWord: e));
  }
}

class _CopyWithStubImpl$Mutation$updateGreWord<TRes>
    implements CopyWith$Mutation$updateGreWord<TRes> {
  _CopyWithStubImpl$Mutation$updateGreWord(this._res);

  TRes _res;

  call({
    Mutation$updateGreWord$updateGreWord? updateGreWord,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$updateGreWord$updateGreWord<TRes> get updateGreWord =>
      CopyWith$Mutation$updateGreWord$updateGreWord.stub(_res);
}

const documentNodeMutationupdateGreWord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateGreWord'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateGreWordId')),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'GreWordStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateGreWord'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'updateGreWordId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'greWordTags'),
            value: VariableNode(name: NameNode(value: 'greWordTags')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
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
Mutation$updateGreWord _parserFn$Mutation$updateGreWord(
        Map<String, dynamic> data) =>
    Mutation$updateGreWord.fromJson(data);
typedef OnMutationCompleted$Mutation$updateGreWord = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$updateGreWord?,
);

class Options$Mutation$updateGreWord
    extends graphql.MutationOptions<Mutation$updateGreWord> {
  Options$Mutation$updateGreWord({
    String? operationName,
    required Variables$Mutation$updateGreWord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateGreWord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateGreWord? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateGreWord>? update,
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
                        : _parserFn$Mutation$updateGreWord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateGreWord,
          parserFn: _parserFn$Mutation$updateGreWord,
        );

  final OnMutationCompleted$Mutation$updateGreWord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateGreWord
    extends graphql.WatchQueryOptions<Mutation$updateGreWord> {
  WatchOptions$Mutation$updateGreWord({
    String? operationName,
    required Variables$Mutation$updateGreWord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateGreWord? typedOptimisticResult,
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
          document: documentNodeMutationupdateGreWord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateGreWord,
        );
}

extension ClientExtension$Mutation$updateGreWord on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateGreWord>> mutate$updateGreWord(
          Options$Mutation$updateGreWord options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$updateGreWord> watchMutation$updateGreWord(
          WatchOptions$Mutation$updateGreWord options) =>
      this.watchMutation(options);
}

class Mutation$updateGreWord$HookResult {
  Mutation$updateGreWord$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateGreWord runMutation;

  final graphql.QueryResult<Mutation$updateGreWord> result;
}

Mutation$updateGreWord$HookResult useMutation$updateGreWord(
    [WidgetOptions$Mutation$updateGreWord? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$updateGreWord());
  return Mutation$updateGreWord$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateGreWord> useWatchMutation$updateGreWord(
        WatchOptions$Mutation$updateGreWord options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateGreWord
    extends graphql.MutationOptions<Mutation$updateGreWord> {
  WidgetOptions$Mutation$updateGreWord({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateGreWord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateGreWord? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateGreWord>? update,
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
                        : _parserFn$Mutation$updateGreWord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateGreWord,
          parserFn: _parserFn$Mutation$updateGreWord,
        );

  final OnMutationCompleted$Mutation$updateGreWord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateGreWord
    = graphql.MultiSourceResult<Mutation$updateGreWord> Function(
  Variables$Mutation$updateGreWord, {
  Object? optimisticResult,
  Mutation$updateGreWord? typedOptimisticResult,
});
typedef Builder$Mutation$updateGreWord = widgets.Widget Function(
  RunMutation$Mutation$updateGreWord,
  graphql.QueryResult<Mutation$updateGreWord>?,
);

class Mutation$updateGreWord$Widget
    extends graphql_flutter.Mutation<Mutation$updateGreWord> {
  Mutation$updateGreWord$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateGreWord? options,
    required Builder$Mutation$updateGreWord builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateGreWord(),
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

class Mutation$updateGreWord$updateGreWord {
  Mutation$updateGreWord$updateGreWord({
    required this.id,
    this.$__typename = 'GreWord',
  });

  factory Mutation$updateGreWord$updateGreWord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$updateGreWord$updateGreWord(
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
    if (!(other is Mutation$updateGreWord$updateGreWord) ||
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

extension UtilityExtension$Mutation$updateGreWord$updateGreWord
    on Mutation$updateGreWord$updateGreWord {
  CopyWith$Mutation$updateGreWord$updateGreWord<
          Mutation$updateGreWord$updateGreWord>
      get copyWith => CopyWith$Mutation$updateGreWord$updateGreWord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateGreWord$updateGreWord<TRes> {
  factory CopyWith$Mutation$updateGreWord$updateGreWord(
    Mutation$updateGreWord$updateGreWord instance,
    TRes Function(Mutation$updateGreWord$updateGreWord) then,
  ) = _CopyWithImpl$Mutation$updateGreWord$updateGreWord;

  factory CopyWith$Mutation$updateGreWord$updateGreWord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateGreWord$updateGreWord;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateGreWord$updateGreWord<TRes>
    implements CopyWith$Mutation$updateGreWord$updateGreWord<TRes> {
  _CopyWithImpl$Mutation$updateGreWord$updateGreWord(
    this._instance,
    this._then,
  );

  final Mutation$updateGreWord$updateGreWord _instance;

  final TRes Function(Mutation$updateGreWord$updateGreWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateGreWord$updateGreWord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateGreWord$updateGreWord<TRes>
    implements CopyWith$Mutation$updateGreWord$updateGreWord<TRes> {
  _CopyWithStubImpl$Mutation$updateGreWord$updateGreWord(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateGreWordTag {
  factory Variables$Mutation$CreateGreWordTag({
    required String name,
    required String userId,
  }) =>
      Variables$Mutation$CreateGreWordTag._({
        r'name': name,
        r'userId': userId,
      });

  Variables$Mutation$CreateGreWordTag._(this._$data);

  factory Variables$Mutation$CreateGreWordTag.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Mutation$CreateGreWordTag._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateGreWordTag<
          Variables$Mutation$CreateGreWordTag>
      get copyWith => CopyWith$Variables$Mutation$CreateGreWordTag(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateGreWordTag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    final l$name = name;
    final l$userId = userId;
    return Object.hashAll([
      l$name,
      l$userId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateGreWordTag<TRes> {
  factory CopyWith$Variables$Mutation$CreateGreWordTag(
    Variables$Mutation$CreateGreWordTag instance,
    TRes Function(Variables$Mutation$CreateGreWordTag) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateGreWordTag;

  factory CopyWith$Variables$Mutation$CreateGreWordTag.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateGreWordTag;

  TRes call({
    String? name,
    String? userId,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateGreWordTag<TRes>
    implements CopyWith$Variables$Mutation$CreateGreWordTag<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateGreWordTag(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateGreWordTag _instance;

  final TRes Function(Variables$Mutation$CreateGreWordTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Mutation$CreateGreWordTag._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateGreWordTag<TRes>
    implements CopyWith$Variables$Mutation$CreateGreWordTag<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateGreWordTag(this._res);

  TRes _res;

  call({
    String? name,
    String? userId,
  }) =>
      _res;
}

class Mutation$CreateGreWordTag {
  Mutation$CreateGreWordTag({
    required this.createGreWordTag,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateGreWordTag.fromJson(Map<String, dynamic> json) {
    final l$createGreWordTag = json['createGreWordTag'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateGreWordTag(
      createGreWordTag: Mutation$CreateGreWordTag$createGreWordTag.fromJson(
          (l$createGreWordTag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateGreWordTag$createGreWordTag createGreWordTag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createGreWordTag = createGreWordTag;
    _resultData['createGreWordTag'] = l$createGreWordTag.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createGreWordTag = createGreWordTag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createGreWordTag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateGreWordTag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createGreWordTag = createGreWordTag;
    final lOther$createGreWordTag = other.createGreWordTag;
    if (l$createGreWordTag != lOther$createGreWordTag) {
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

extension UtilityExtension$Mutation$CreateGreWordTag
    on Mutation$CreateGreWordTag {
  CopyWith$Mutation$CreateGreWordTag<Mutation$CreateGreWordTag> get copyWith =>
      CopyWith$Mutation$CreateGreWordTag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateGreWordTag<TRes> {
  factory CopyWith$Mutation$CreateGreWordTag(
    Mutation$CreateGreWordTag instance,
    TRes Function(Mutation$CreateGreWordTag) then,
  ) = _CopyWithImpl$Mutation$CreateGreWordTag;

  factory CopyWith$Mutation$CreateGreWordTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateGreWordTag;

  TRes call({
    Mutation$CreateGreWordTag$createGreWordTag? createGreWordTag,
    String? $__typename,
  });
  CopyWith$Mutation$CreateGreWordTag$createGreWordTag<TRes>
      get createGreWordTag;
}

class _CopyWithImpl$Mutation$CreateGreWordTag<TRes>
    implements CopyWith$Mutation$CreateGreWordTag<TRes> {
  _CopyWithImpl$Mutation$CreateGreWordTag(
    this._instance,
    this._then,
  );

  final Mutation$CreateGreWordTag _instance;

  final TRes Function(Mutation$CreateGreWordTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createGreWordTag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateGreWordTag(
        createGreWordTag: createGreWordTag == _undefined ||
                createGreWordTag == null
            ? _instance.createGreWordTag
            : (createGreWordTag as Mutation$CreateGreWordTag$createGreWordTag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateGreWordTag$createGreWordTag<TRes>
      get createGreWordTag {
    final local$createGreWordTag = _instance.createGreWordTag;
    return CopyWith$Mutation$CreateGreWordTag$createGreWordTag(
        local$createGreWordTag, (e) => call(createGreWordTag: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateGreWordTag<TRes>
    implements CopyWith$Mutation$CreateGreWordTag<TRes> {
  _CopyWithStubImpl$Mutation$CreateGreWordTag(this._res);

  TRes _res;

  call({
    Mutation$CreateGreWordTag$createGreWordTag? createGreWordTag,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateGreWordTag$createGreWordTag<TRes>
      get createGreWordTag =>
          CopyWith$Mutation$CreateGreWordTag$createGreWordTag.stub(_res);
}

const documentNodeMutationCreateGreWordTag = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateGreWordTag'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
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
        name: NameNode(value: 'createGreWordTag'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
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
            name: NameNode(value: 'name'),
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
Mutation$CreateGreWordTag _parserFn$Mutation$CreateGreWordTag(
        Map<String, dynamic> data) =>
    Mutation$CreateGreWordTag.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateGreWordTag = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateGreWordTag?,
);

class Options$Mutation$CreateGreWordTag
    extends graphql.MutationOptions<Mutation$CreateGreWordTag> {
  Options$Mutation$CreateGreWordTag({
    String? operationName,
    required Variables$Mutation$CreateGreWordTag variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWordTag? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateGreWordTag? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateGreWordTag>? update,
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
                        : _parserFn$Mutation$CreateGreWordTag(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateGreWordTag,
          parserFn: _parserFn$Mutation$CreateGreWordTag,
        );

  final OnMutationCompleted$Mutation$CreateGreWordTag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateGreWordTag
    extends graphql.WatchQueryOptions<Mutation$CreateGreWordTag> {
  WatchOptions$Mutation$CreateGreWordTag({
    String? operationName,
    required Variables$Mutation$CreateGreWordTag variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWordTag? typedOptimisticResult,
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
          document: documentNodeMutationCreateGreWordTag,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateGreWordTag,
        );
}

extension ClientExtension$Mutation$CreateGreWordTag on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateGreWordTag>>
      mutate$CreateGreWordTag(
              Options$Mutation$CreateGreWordTag options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateGreWordTag>
      watchMutation$CreateGreWordTag(
              WatchOptions$Mutation$CreateGreWordTag options) =>
          this.watchMutation(options);
}

class Mutation$CreateGreWordTag$HookResult {
  Mutation$CreateGreWordTag$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateGreWordTag runMutation;

  final graphql.QueryResult<Mutation$CreateGreWordTag> result;
}

Mutation$CreateGreWordTag$HookResult useMutation$CreateGreWordTag(
    [WidgetOptions$Mutation$CreateGreWordTag? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateGreWordTag());
  return Mutation$CreateGreWordTag$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateGreWordTag>
    useWatchMutation$CreateGreWordTag(
            WatchOptions$Mutation$CreateGreWordTag options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateGreWordTag
    extends graphql.MutationOptions<Mutation$CreateGreWordTag> {
  WidgetOptions$Mutation$CreateGreWordTag({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateGreWordTag? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateGreWordTag? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateGreWordTag>? update,
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
                        : _parserFn$Mutation$CreateGreWordTag(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateGreWordTag,
          parserFn: _parserFn$Mutation$CreateGreWordTag,
        );

  final OnMutationCompleted$Mutation$CreateGreWordTag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateGreWordTag
    = graphql.MultiSourceResult<Mutation$CreateGreWordTag> Function(
  Variables$Mutation$CreateGreWordTag, {
  Object? optimisticResult,
  Mutation$CreateGreWordTag? typedOptimisticResult,
});
typedef Builder$Mutation$CreateGreWordTag = widgets.Widget Function(
  RunMutation$Mutation$CreateGreWordTag,
  graphql.QueryResult<Mutation$CreateGreWordTag>?,
);

class Mutation$CreateGreWordTag$Widget
    extends graphql_flutter.Mutation<Mutation$CreateGreWordTag> {
  Mutation$CreateGreWordTag$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateGreWordTag? options,
    required Builder$Mutation$CreateGreWordTag builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateGreWordTag(),
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

class Mutation$CreateGreWordTag$createGreWordTag {
  Mutation$CreateGreWordTag$createGreWordTag({
    required this.id,
    required this.name,
    this.$__typename = 'GreWordTag',
  });

  factory Mutation$CreateGreWordTag$createGreWordTag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateGreWordTag$createGreWordTag(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateGreWordTag$createGreWordTag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$CreateGreWordTag$createGreWordTag
    on Mutation$CreateGreWordTag$createGreWordTag {
  CopyWith$Mutation$CreateGreWordTag$createGreWordTag<
          Mutation$CreateGreWordTag$createGreWordTag>
      get copyWith => CopyWith$Mutation$CreateGreWordTag$createGreWordTag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateGreWordTag$createGreWordTag<TRes> {
  factory CopyWith$Mutation$CreateGreWordTag$createGreWordTag(
    Mutation$CreateGreWordTag$createGreWordTag instance,
    TRes Function(Mutation$CreateGreWordTag$createGreWordTag) then,
  ) = _CopyWithImpl$Mutation$CreateGreWordTag$createGreWordTag;

  factory CopyWith$Mutation$CreateGreWordTag$createGreWordTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateGreWordTag$createGreWordTag;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateGreWordTag$createGreWordTag<TRes>
    implements CopyWith$Mutation$CreateGreWordTag$createGreWordTag<TRes> {
  _CopyWithImpl$Mutation$CreateGreWordTag$createGreWordTag(
    this._instance,
    this._then,
  );

  final Mutation$CreateGreWordTag$createGreWordTag _instance;

  final TRes Function(Mutation$CreateGreWordTag$createGreWordTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateGreWordTag$createGreWordTag(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateGreWordTag$createGreWordTag<TRes>
    implements CopyWith$Mutation$CreateGreWordTag$createGreWordTag<TRes> {
  _CopyWithStubImpl$Mutation$CreateGreWordTag$createGreWordTag(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
