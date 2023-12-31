import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateGptPrompt {
  factory Variables$Mutation$UpdateGptPrompt({
    required String id,
    String? editedResponse,
    List<String>? imageUrls,
  }) =>
      Variables$Mutation$UpdateGptPrompt._({
        r'id': id,
        if (editedResponse != null) r'editedResponse': editedResponse,
        if (imageUrls != null) r'imageUrls': imageUrls,
      });

  Variables$Mutation$UpdateGptPrompt._(this._$data);

  factory Variables$Mutation$UpdateGptPrompt.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('editedResponse')) {
      final l$editedResponse = data['editedResponse'];
      result$data['editedResponse'] = (l$editedResponse as String?);
    }
    if (data.containsKey('imageUrls')) {
      final l$imageUrls = data['imageUrls'];
      result$data['imageUrls'] =
          (l$imageUrls as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Variables$Mutation$UpdateGptPrompt._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get editedResponse => (_$data['editedResponse'] as String?);

  List<String>? get imageUrls => (_$data['imageUrls'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('editedResponse')) {
      final l$editedResponse = editedResponse;
      result$data['editedResponse'] = l$editedResponse;
    }
    if (_$data.containsKey('imageUrls')) {
      final l$imageUrls = imageUrls;
      result$data['imageUrls'] = l$imageUrls?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateGptPrompt<
          Variables$Mutation$UpdateGptPrompt>
      get copyWith => CopyWith$Variables$Mutation$UpdateGptPrompt(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateGptPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$editedResponse = editedResponse;
    final lOther$editedResponse = other.editedResponse;
    if (_$data.containsKey('editedResponse') !=
        other._$data.containsKey('editedResponse')) {
      return false;
    }
    if (l$editedResponse != lOther$editedResponse) {
      return false;
    }
    final l$imageUrls = imageUrls;
    final lOther$imageUrls = other.imageUrls;
    if (_$data.containsKey('imageUrls') !=
        other._$data.containsKey('imageUrls')) {
      return false;
    }
    if (l$imageUrls != null && lOther$imageUrls != null) {
      if (l$imageUrls.length != lOther$imageUrls.length) {
        return false;
      }
      for (int i = 0; i < l$imageUrls.length; i++) {
        final l$imageUrls$entry = l$imageUrls[i];
        final lOther$imageUrls$entry = lOther$imageUrls[i];
        if (l$imageUrls$entry != lOther$imageUrls$entry) {
          return false;
        }
      }
    } else if (l$imageUrls != lOther$imageUrls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$editedResponse = editedResponse;
    final l$imageUrls = imageUrls;
    return Object.hashAll([
      l$id,
      _$data.containsKey('editedResponse') ? l$editedResponse : const {},
      _$data.containsKey('imageUrls')
          ? l$imageUrls == null
              ? null
              : Object.hashAll(l$imageUrls.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateGptPrompt<TRes> {
  factory CopyWith$Variables$Mutation$UpdateGptPrompt(
    Variables$Mutation$UpdateGptPrompt instance,
    TRes Function(Variables$Mutation$UpdateGptPrompt) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateGptPrompt;

  factory CopyWith$Variables$Mutation$UpdateGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateGptPrompt;

  TRes call({
    String? id,
    String? editedResponse,
    List<String>? imageUrls,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateGptPrompt<TRes>
    implements CopyWith$Variables$Mutation$UpdateGptPrompt<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateGptPrompt(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateGptPrompt _instance;

  final TRes Function(Variables$Mutation$UpdateGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? editedResponse = _undefined,
    Object? imageUrls = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateGptPrompt._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (editedResponse != _undefined)
          'editedResponse': (editedResponse as String?),
        if (imageUrls != _undefined) 'imageUrls': (imageUrls as List<String>?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateGptPrompt<TRes>
    implements CopyWith$Variables$Mutation$UpdateGptPrompt<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateGptPrompt(this._res);

  TRes _res;

  call({
    String? id,
    String? editedResponse,
    List<String>? imageUrls,
  }) =>
      _res;
}

class Mutation$UpdateGptPrompt {
  Mutation$UpdateGptPrompt({
    this.updateGptPrompt,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateGptPrompt.fromJson(Map<String, dynamic> json) {
    final l$updateGptPrompt = json['updateGptPrompt'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateGptPrompt(
      updateGptPrompt: l$updateGptPrompt == null
          ? null
          : Mutation$UpdateGptPrompt$updateGptPrompt.fromJson(
              (l$updateGptPrompt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateGptPrompt$updateGptPrompt? updateGptPrompt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateGptPrompt = updateGptPrompt;
    _resultData['updateGptPrompt'] = l$updateGptPrompt?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateGptPrompt = updateGptPrompt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateGptPrompt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateGptPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateGptPrompt = updateGptPrompt;
    final lOther$updateGptPrompt = other.updateGptPrompt;
    if (l$updateGptPrompt != lOther$updateGptPrompt) {
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

extension UtilityExtension$Mutation$UpdateGptPrompt
    on Mutation$UpdateGptPrompt {
  CopyWith$Mutation$UpdateGptPrompt<Mutation$UpdateGptPrompt> get copyWith =>
      CopyWith$Mutation$UpdateGptPrompt(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateGptPrompt<TRes> {
  factory CopyWith$Mutation$UpdateGptPrompt(
    Mutation$UpdateGptPrompt instance,
    TRes Function(Mutation$UpdateGptPrompt) then,
  ) = _CopyWithImpl$Mutation$UpdateGptPrompt;

  factory CopyWith$Mutation$UpdateGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateGptPrompt;

  TRes call({
    Mutation$UpdateGptPrompt$updateGptPrompt? updateGptPrompt,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt<TRes> get updateGptPrompt;
}

class _CopyWithImpl$Mutation$UpdateGptPrompt<TRes>
    implements CopyWith$Mutation$UpdateGptPrompt<TRes> {
  _CopyWithImpl$Mutation$UpdateGptPrompt(
    this._instance,
    this._then,
  );

  final Mutation$UpdateGptPrompt _instance;

  final TRes Function(Mutation$UpdateGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateGptPrompt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateGptPrompt(
        updateGptPrompt: updateGptPrompt == _undefined
            ? _instance.updateGptPrompt
            : (updateGptPrompt as Mutation$UpdateGptPrompt$updateGptPrompt?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt<TRes> get updateGptPrompt {
    final local$updateGptPrompt = _instance.updateGptPrompt;
    return local$updateGptPrompt == null
        ? CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt(
            local$updateGptPrompt, (e) => call(updateGptPrompt: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateGptPrompt<TRes>
    implements CopyWith$Mutation$UpdateGptPrompt<TRes> {
  _CopyWithStubImpl$Mutation$UpdateGptPrompt(this._res);

  TRes _res;

  call({
    Mutation$UpdateGptPrompt$updateGptPrompt? updateGptPrompt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt<TRes> get updateGptPrompt =>
      CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt.stub(_res);
}

const documentNodeMutationUpdateGptPrompt = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateGptPrompt'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'editedResponse')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'imageUrls')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
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
        name: NameNode(value: 'updateGptPrompt'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'editedResponse'),
            value: VariableNode(name: NameNode(value: 'editedResponse')),
          ),
          ArgumentNode(
            name: NameNode(value: 'imageUrls'),
            value: VariableNode(name: NameNode(value: 'imageUrls')),
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
            name: NameNode(value: 'editedResponse'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'imageUrls'),
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
Mutation$UpdateGptPrompt _parserFn$Mutation$UpdateGptPrompt(
        Map<String, dynamic> data) =>
    Mutation$UpdateGptPrompt.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateGptPrompt = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateGptPrompt?,
);

class Options$Mutation$UpdateGptPrompt
    extends graphql.MutationOptions<Mutation$UpdateGptPrompt> {
  Options$Mutation$UpdateGptPrompt({
    String? operationName,
    required Variables$Mutation$UpdateGptPrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateGptPrompt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateGptPrompt? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateGptPrompt>? update,
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
                        : _parserFn$Mutation$UpdateGptPrompt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateGptPrompt,
          parserFn: _parserFn$Mutation$UpdateGptPrompt,
        );

  final OnMutationCompleted$Mutation$UpdateGptPrompt? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateGptPrompt
    extends graphql.WatchQueryOptions<Mutation$UpdateGptPrompt> {
  WatchOptions$Mutation$UpdateGptPrompt({
    String? operationName,
    required Variables$Mutation$UpdateGptPrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateGptPrompt? typedOptimisticResult,
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
          document: documentNodeMutationUpdateGptPrompt,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateGptPrompt,
        );
}

extension ClientExtension$Mutation$UpdateGptPrompt on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateGptPrompt>> mutate$UpdateGptPrompt(
          Options$Mutation$UpdateGptPrompt options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateGptPrompt>
      watchMutation$UpdateGptPrompt(
              WatchOptions$Mutation$UpdateGptPrompt options) =>
          this.watchMutation(options);
}

class Mutation$UpdateGptPrompt$HookResult {
  Mutation$UpdateGptPrompt$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateGptPrompt runMutation;

  final graphql.QueryResult<Mutation$UpdateGptPrompt> result;
}

Mutation$UpdateGptPrompt$HookResult useMutation$UpdateGptPrompt(
    [WidgetOptions$Mutation$UpdateGptPrompt? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateGptPrompt());
  return Mutation$UpdateGptPrompt$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateGptPrompt>
    useWatchMutation$UpdateGptPrompt(
            WatchOptions$Mutation$UpdateGptPrompt options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateGptPrompt
    extends graphql.MutationOptions<Mutation$UpdateGptPrompt> {
  WidgetOptions$Mutation$UpdateGptPrompt({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateGptPrompt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateGptPrompt? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateGptPrompt>? update,
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
                        : _parserFn$Mutation$UpdateGptPrompt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateGptPrompt,
          parserFn: _parserFn$Mutation$UpdateGptPrompt,
        );

  final OnMutationCompleted$Mutation$UpdateGptPrompt? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateGptPrompt
    = graphql.MultiSourceResult<Mutation$UpdateGptPrompt> Function(
  Variables$Mutation$UpdateGptPrompt, {
  Object? optimisticResult,
  Mutation$UpdateGptPrompt? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateGptPrompt = widgets.Widget Function(
  RunMutation$Mutation$UpdateGptPrompt,
  graphql.QueryResult<Mutation$UpdateGptPrompt>?,
);

class Mutation$UpdateGptPrompt$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateGptPrompt> {
  Mutation$UpdateGptPrompt$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateGptPrompt? options,
    required Builder$Mutation$UpdateGptPrompt builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateGptPrompt(),
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

class Mutation$UpdateGptPrompt$updateGptPrompt {
  Mutation$UpdateGptPrompt$updateGptPrompt({
    required this.id,
    this.editedResponse,
    required this.imageUrls,
    this.$__typename = 'GptPrompt',
  });

  factory Mutation$UpdateGptPrompt$updateGptPrompt.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$editedResponse = json['editedResponse'];
    final l$imageUrls = json['imageUrls'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateGptPrompt$updateGptPrompt(
      id: (l$id as String),
      editedResponse: (l$editedResponse as String?),
      imageUrls:
          (l$imageUrls as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? editedResponse;

  final List<String> imageUrls;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$editedResponse = editedResponse;
    _resultData['editedResponse'] = l$editedResponse;
    final l$imageUrls = imageUrls;
    _resultData['imageUrls'] = l$imageUrls.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$editedResponse = editedResponse;
    final l$imageUrls = imageUrls;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$editedResponse,
      Object.hashAll(l$imageUrls.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateGptPrompt$updateGptPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$editedResponse = editedResponse;
    final lOther$editedResponse = other.editedResponse;
    if (l$editedResponse != lOther$editedResponse) {
      return false;
    }
    final l$imageUrls = imageUrls;
    final lOther$imageUrls = other.imageUrls;
    if (l$imageUrls.length != lOther$imageUrls.length) {
      return false;
    }
    for (int i = 0; i < l$imageUrls.length; i++) {
      final l$imageUrls$entry = l$imageUrls[i];
      final lOther$imageUrls$entry = lOther$imageUrls[i];
      if (l$imageUrls$entry != lOther$imageUrls$entry) {
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

extension UtilityExtension$Mutation$UpdateGptPrompt$updateGptPrompt
    on Mutation$UpdateGptPrompt$updateGptPrompt {
  CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt<
          Mutation$UpdateGptPrompt$updateGptPrompt>
      get copyWith => CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt<TRes> {
  factory CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt(
    Mutation$UpdateGptPrompt$updateGptPrompt instance,
    TRes Function(Mutation$UpdateGptPrompt$updateGptPrompt) then,
  ) = _CopyWithImpl$Mutation$UpdateGptPrompt$updateGptPrompt;

  factory CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateGptPrompt$updateGptPrompt;

  TRes call({
    String? id,
    String? editedResponse,
    List<String>? imageUrls,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateGptPrompt$updateGptPrompt<TRes>
    implements CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt<TRes> {
  _CopyWithImpl$Mutation$UpdateGptPrompt$updateGptPrompt(
    this._instance,
    this._then,
  );

  final Mutation$UpdateGptPrompt$updateGptPrompt _instance;

  final TRes Function(Mutation$UpdateGptPrompt$updateGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? editedResponse = _undefined,
    Object? imageUrls = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateGptPrompt$updateGptPrompt(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        editedResponse: editedResponse == _undefined
            ? _instance.editedResponse
            : (editedResponse as String?),
        imageUrls: imageUrls == _undefined || imageUrls == null
            ? _instance.imageUrls
            : (imageUrls as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateGptPrompt$updateGptPrompt<TRes>
    implements CopyWith$Mutation$UpdateGptPrompt$updateGptPrompt<TRes> {
  _CopyWithStubImpl$Mutation$UpdateGptPrompt$updateGptPrompt(this._res);

  TRes _res;

  call({
    String? id,
    String? editedResponse,
    List<String>? imageUrls,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteGptPrompt {
  factory Variables$Mutation$DeleteGptPrompt(
          {required String deleteGptPromptId}) =>
      Variables$Mutation$DeleteGptPrompt._({
        r'deleteGptPromptId': deleteGptPromptId,
      });

  Variables$Mutation$DeleteGptPrompt._(this._$data);

  factory Variables$Mutation$DeleteGptPrompt.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$deleteGptPromptId = data['deleteGptPromptId'];
    result$data['deleteGptPromptId'] = (l$deleteGptPromptId as String);
    return Variables$Mutation$DeleteGptPrompt._(result$data);
  }

  Map<String, dynamic> _$data;

  String get deleteGptPromptId => (_$data['deleteGptPromptId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteGptPromptId = deleteGptPromptId;
    result$data['deleteGptPromptId'] = l$deleteGptPromptId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteGptPrompt<
          Variables$Mutation$DeleteGptPrompt>
      get copyWith => CopyWith$Variables$Mutation$DeleteGptPrompt(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteGptPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteGptPromptId = deleteGptPromptId;
    final lOther$deleteGptPromptId = other.deleteGptPromptId;
    if (l$deleteGptPromptId != lOther$deleteGptPromptId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteGptPromptId = deleteGptPromptId;
    return Object.hashAll([l$deleteGptPromptId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteGptPrompt<TRes> {
  factory CopyWith$Variables$Mutation$DeleteGptPrompt(
    Variables$Mutation$DeleteGptPrompt instance,
    TRes Function(Variables$Mutation$DeleteGptPrompt) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteGptPrompt;

  factory CopyWith$Variables$Mutation$DeleteGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteGptPrompt;

  TRes call({String? deleteGptPromptId});
}

class _CopyWithImpl$Variables$Mutation$DeleteGptPrompt<TRes>
    implements CopyWith$Variables$Mutation$DeleteGptPrompt<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteGptPrompt(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteGptPrompt _instance;

  final TRes Function(Variables$Mutation$DeleteGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteGptPromptId = _undefined}) =>
      _then(Variables$Mutation$DeleteGptPrompt._({
        ..._instance._$data,
        if (deleteGptPromptId != _undefined && deleteGptPromptId != null)
          'deleteGptPromptId': (deleteGptPromptId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteGptPrompt<TRes>
    implements CopyWith$Variables$Mutation$DeleteGptPrompt<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteGptPrompt(this._res);

  TRes _res;

  call({String? deleteGptPromptId}) => _res;
}

class Mutation$DeleteGptPrompt {
  Mutation$DeleteGptPrompt({
    this.deleteGptPrompt,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteGptPrompt.fromJson(Map<String, dynamic> json) {
    final l$deleteGptPrompt = json['deleteGptPrompt'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteGptPrompt(
      deleteGptPrompt: l$deleteGptPrompt == null
          ? null
          : Mutation$DeleteGptPrompt$deleteGptPrompt.fromJson(
              (l$deleteGptPrompt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteGptPrompt$deleteGptPrompt? deleteGptPrompt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteGptPrompt = deleteGptPrompt;
    _resultData['deleteGptPrompt'] = l$deleteGptPrompt?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteGptPrompt = deleteGptPrompt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteGptPrompt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteGptPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteGptPrompt = deleteGptPrompt;
    final lOther$deleteGptPrompt = other.deleteGptPrompt;
    if (l$deleteGptPrompt != lOther$deleteGptPrompt) {
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

extension UtilityExtension$Mutation$DeleteGptPrompt
    on Mutation$DeleteGptPrompt {
  CopyWith$Mutation$DeleteGptPrompt<Mutation$DeleteGptPrompt> get copyWith =>
      CopyWith$Mutation$DeleteGptPrompt(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteGptPrompt<TRes> {
  factory CopyWith$Mutation$DeleteGptPrompt(
    Mutation$DeleteGptPrompt instance,
    TRes Function(Mutation$DeleteGptPrompt) then,
  ) = _CopyWithImpl$Mutation$DeleteGptPrompt;

  factory CopyWith$Mutation$DeleteGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteGptPrompt;

  TRes call({
    Mutation$DeleteGptPrompt$deleteGptPrompt? deleteGptPrompt,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt<TRes> get deleteGptPrompt;
}

class _CopyWithImpl$Mutation$DeleteGptPrompt<TRes>
    implements CopyWith$Mutation$DeleteGptPrompt<TRes> {
  _CopyWithImpl$Mutation$DeleteGptPrompt(
    this._instance,
    this._then,
  );

  final Mutation$DeleteGptPrompt _instance;

  final TRes Function(Mutation$DeleteGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteGptPrompt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteGptPrompt(
        deleteGptPrompt: deleteGptPrompt == _undefined
            ? _instance.deleteGptPrompt
            : (deleteGptPrompt as Mutation$DeleteGptPrompt$deleteGptPrompt?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt<TRes> get deleteGptPrompt {
    final local$deleteGptPrompt = _instance.deleteGptPrompt;
    return local$deleteGptPrompt == null
        ? CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt(
            local$deleteGptPrompt, (e) => call(deleteGptPrompt: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteGptPrompt<TRes>
    implements CopyWith$Mutation$DeleteGptPrompt<TRes> {
  _CopyWithStubImpl$Mutation$DeleteGptPrompt(this._res);

  TRes _res;

  call({
    Mutation$DeleteGptPrompt$deleteGptPrompt? deleteGptPrompt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt<TRes> get deleteGptPrompt =>
      CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt.stub(_res);
}

const documentNodeMutationDeleteGptPrompt = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteGptPrompt'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deleteGptPromptId')),
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
        name: NameNode(value: 'deleteGptPrompt'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'deleteGptPromptId')),
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
Mutation$DeleteGptPrompt _parserFn$Mutation$DeleteGptPrompt(
        Map<String, dynamic> data) =>
    Mutation$DeleteGptPrompt.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteGptPrompt = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteGptPrompt?,
);

class Options$Mutation$DeleteGptPrompt
    extends graphql.MutationOptions<Mutation$DeleteGptPrompt> {
  Options$Mutation$DeleteGptPrompt({
    String? operationName,
    required Variables$Mutation$DeleteGptPrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGptPrompt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteGptPrompt? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteGptPrompt>? update,
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
                        : _parserFn$Mutation$DeleteGptPrompt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteGptPrompt,
          parserFn: _parserFn$Mutation$DeleteGptPrompt,
        );

  final OnMutationCompleted$Mutation$DeleteGptPrompt? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteGptPrompt
    extends graphql.WatchQueryOptions<Mutation$DeleteGptPrompt> {
  WatchOptions$Mutation$DeleteGptPrompt({
    String? operationName,
    required Variables$Mutation$DeleteGptPrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGptPrompt? typedOptimisticResult,
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
          document: documentNodeMutationDeleteGptPrompt,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteGptPrompt,
        );
}

extension ClientExtension$Mutation$DeleteGptPrompt on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteGptPrompt>> mutate$DeleteGptPrompt(
          Options$Mutation$DeleteGptPrompt options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteGptPrompt>
      watchMutation$DeleteGptPrompt(
              WatchOptions$Mutation$DeleteGptPrompt options) =>
          this.watchMutation(options);
}

class Mutation$DeleteGptPrompt$HookResult {
  Mutation$DeleteGptPrompt$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteGptPrompt runMutation;

  final graphql.QueryResult<Mutation$DeleteGptPrompt> result;
}

Mutation$DeleteGptPrompt$HookResult useMutation$DeleteGptPrompt(
    [WidgetOptions$Mutation$DeleteGptPrompt? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteGptPrompt());
  return Mutation$DeleteGptPrompt$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteGptPrompt>
    useWatchMutation$DeleteGptPrompt(
            WatchOptions$Mutation$DeleteGptPrompt options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteGptPrompt
    extends graphql.MutationOptions<Mutation$DeleteGptPrompt> {
  WidgetOptions$Mutation$DeleteGptPrompt({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGptPrompt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteGptPrompt? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteGptPrompt>? update,
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
                        : _parserFn$Mutation$DeleteGptPrompt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteGptPrompt,
          parserFn: _parserFn$Mutation$DeleteGptPrompt,
        );

  final OnMutationCompleted$Mutation$DeleteGptPrompt? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteGptPrompt
    = graphql.MultiSourceResult<Mutation$DeleteGptPrompt> Function(
  Variables$Mutation$DeleteGptPrompt, {
  Object? optimisticResult,
  Mutation$DeleteGptPrompt? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteGptPrompt = widgets.Widget Function(
  RunMutation$Mutation$DeleteGptPrompt,
  graphql.QueryResult<Mutation$DeleteGptPrompt>?,
);

class Mutation$DeleteGptPrompt$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteGptPrompt> {
  Mutation$DeleteGptPrompt$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteGptPrompt? options,
    required Builder$Mutation$DeleteGptPrompt builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteGptPrompt(),
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

class Mutation$DeleteGptPrompt$deleteGptPrompt {
  Mutation$DeleteGptPrompt$deleteGptPrompt({
    required this.id,
    this.$__typename = 'GptPrompt',
  });

  factory Mutation$DeleteGptPrompt$deleteGptPrompt.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteGptPrompt$deleteGptPrompt(
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
    if (!(other is Mutation$DeleteGptPrompt$deleteGptPrompt) ||
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

extension UtilityExtension$Mutation$DeleteGptPrompt$deleteGptPrompt
    on Mutation$DeleteGptPrompt$deleteGptPrompt {
  CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt<
          Mutation$DeleteGptPrompt$deleteGptPrompt>
      get copyWith => CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt<TRes> {
  factory CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt(
    Mutation$DeleteGptPrompt$deleteGptPrompt instance,
    TRes Function(Mutation$DeleteGptPrompt$deleteGptPrompt) then,
  ) = _CopyWithImpl$Mutation$DeleteGptPrompt$deleteGptPrompt;

  factory CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteGptPrompt$deleteGptPrompt;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteGptPrompt$deleteGptPrompt<TRes>
    implements CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt<TRes> {
  _CopyWithImpl$Mutation$DeleteGptPrompt$deleteGptPrompt(
    this._instance,
    this._then,
  );

  final Mutation$DeleteGptPrompt$deleteGptPrompt _instance;

  final TRes Function(Mutation$DeleteGptPrompt$deleteGptPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteGptPrompt$deleteGptPrompt(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteGptPrompt$deleteGptPrompt<TRes>
    implements CopyWith$Mutation$DeleteGptPrompt$deleteGptPrompt<TRes> {
  _CopyWithStubImpl$Mutation$DeleteGptPrompt$deleteGptPrompt(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GenerateImagesForPrompt {
  factory Variables$Query$GenerateImagesForPrompt({required String prompt}) =>
      Variables$Query$GenerateImagesForPrompt._({
        r'prompt': prompt,
      });

  Variables$Query$GenerateImagesForPrompt._(this._$data);

  factory Variables$Query$GenerateImagesForPrompt.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$prompt = data['prompt'];
    result$data['prompt'] = (l$prompt as String);
    return Variables$Query$GenerateImagesForPrompt._(result$data);
  }

  Map<String, dynamic> _$data;

  String get prompt => (_$data['prompt'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$prompt = prompt;
    result$data['prompt'] = l$prompt;
    return result$data;
  }

  CopyWith$Variables$Query$GenerateImagesForPrompt<
          Variables$Query$GenerateImagesForPrompt>
      get copyWith => CopyWith$Variables$Query$GenerateImagesForPrompt(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GenerateImagesForPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$prompt = prompt;
    final lOther$prompt = other.prompt;
    if (l$prompt != lOther$prompt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$prompt = prompt;
    return Object.hashAll([l$prompt]);
  }
}

abstract class CopyWith$Variables$Query$GenerateImagesForPrompt<TRes> {
  factory CopyWith$Variables$Query$GenerateImagesForPrompt(
    Variables$Query$GenerateImagesForPrompt instance,
    TRes Function(Variables$Query$GenerateImagesForPrompt) then,
  ) = _CopyWithImpl$Variables$Query$GenerateImagesForPrompt;

  factory CopyWith$Variables$Query$GenerateImagesForPrompt.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GenerateImagesForPrompt;

  TRes call({String? prompt});
}

class _CopyWithImpl$Variables$Query$GenerateImagesForPrompt<TRes>
    implements CopyWith$Variables$Query$GenerateImagesForPrompt<TRes> {
  _CopyWithImpl$Variables$Query$GenerateImagesForPrompt(
    this._instance,
    this._then,
  );

  final Variables$Query$GenerateImagesForPrompt _instance;

  final TRes Function(Variables$Query$GenerateImagesForPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? prompt = _undefined}) =>
      _then(Variables$Query$GenerateImagesForPrompt._({
        ..._instance._$data,
        if (prompt != _undefined && prompt != null)
          'prompt': (prompt as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GenerateImagesForPrompt<TRes>
    implements CopyWith$Variables$Query$GenerateImagesForPrompt<TRes> {
  _CopyWithStubImpl$Variables$Query$GenerateImagesForPrompt(this._res);

  TRes _res;

  call({String? prompt}) => _res;
}

class Query$GenerateImagesForPrompt {
  Query$GenerateImagesForPrompt({
    this.generateImagesForPrompt,
    this.$__typename = 'Query',
  });

  factory Query$GenerateImagesForPrompt.fromJson(Map<String, dynamic> json) {
    final l$generateImagesForPrompt = json['generateImagesForPrompt'];
    final l$$__typename = json['__typename'];
    return Query$GenerateImagesForPrompt(
      generateImagesForPrompt: l$generateImagesForPrompt == null
          ? null
          : Query$GenerateImagesForPrompt$generateImagesForPrompt.fromJson(
              (l$generateImagesForPrompt as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GenerateImagesForPrompt$generateImagesForPrompt?
      generateImagesForPrompt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$generateImagesForPrompt = generateImagesForPrompt;
    _resultData['generateImagesForPrompt'] =
        l$generateImagesForPrompt?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$generateImagesForPrompt = generateImagesForPrompt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$generateImagesForPrompt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GenerateImagesForPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$generateImagesForPrompt = generateImagesForPrompt;
    final lOther$generateImagesForPrompt = other.generateImagesForPrompt;
    if (l$generateImagesForPrompt != lOther$generateImagesForPrompt) {
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

extension UtilityExtension$Query$GenerateImagesForPrompt
    on Query$GenerateImagesForPrompt {
  CopyWith$Query$GenerateImagesForPrompt<Query$GenerateImagesForPrompt>
      get copyWith => CopyWith$Query$GenerateImagesForPrompt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GenerateImagesForPrompt<TRes> {
  factory CopyWith$Query$GenerateImagesForPrompt(
    Query$GenerateImagesForPrompt instance,
    TRes Function(Query$GenerateImagesForPrompt) then,
  ) = _CopyWithImpl$Query$GenerateImagesForPrompt;

  factory CopyWith$Query$GenerateImagesForPrompt.stub(TRes res) =
      _CopyWithStubImpl$Query$GenerateImagesForPrompt;

  TRes call({
    Query$GenerateImagesForPrompt$generateImagesForPrompt?
        generateImagesForPrompt,
    String? $__typename,
  });
  CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt<TRes>
      get generateImagesForPrompt;
}

class _CopyWithImpl$Query$GenerateImagesForPrompt<TRes>
    implements CopyWith$Query$GenerateImagesForPrompt<TRes> {
  _CopyWithImpl$Query$GenerateImagesForPrompt(
    this._instance,
    this._then,
  );

  final Query$GenerateImagesForPrompt _instance;

  final TRes Function(Query$GenerateImagesForPrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? generateImagesForPrompt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GenerateImagesForPrompt(
        generateImagesForPrompt: generateImagesForPrompt == _undefined
            ? _instance.generateImagesForPrompt
            : (generateImagesForPrompt
                as Query$GenerateImagesForPrompt$generateImagesForPrompt?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt<TRes>
      get generateImagesForPrompt {
    final local$generateImagesForPrompt = _instance.generateImagesForPrompt;
    return local$generateImagesForPrompt == null
        ? CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt.stub(
            _then(_instance))
        : CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt(
            local$generateImagesForPrompt,
            (e) => call(generateImagesForPrompt: e));
  }
}

class _CopyWithStubImpl$Query$GenerateImagesForPrompt<TRes>
    implements CopyWith$Query$GenerateImagesForPrompt<TRes> {
  _CopyWithStubImpl$Query$GenerateImagesForPrompt(this._res);

  TRes _res;

  call({
    Query$GenerateImagesForPrompt$generateImagesForPrompt?
        generateImagesForPrompt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt<TRes>
      get generateImagesForPrompt =>
          CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt.stub(
              _res);
}

const documentNodeQueryGenerateImagesForPrompt = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GenerateImagesForPrompt'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'prompt')),
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
        name: NameNode(value: 'generateImagesForPrompt'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'prompt'),
            value: VariableNode(name: NameNode(value: 'prompt')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'imageUrls'),
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
Query$GenerateImagesForPrompt _parserFn$Query$GenerateImagesForPrompt(
        Map<String, dynamic> data) =>
    Query$GenerateImagesForPrompt.fromJson(data);
typedef OnQueryComplete$Query$GenerateImagesForPrompt = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GenerateImagesForPrompt?,
);

class Options$Query$GenerateImagesForPrompt
    extends graphql.QueryOptions<Query$GenerateImagesForPrompt> {
  Options$Query$GenerateImagesForPrompt({
    String? operationName,
    required Variables$Query$GenerateImagesForPrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GenerateImagesForPrompt? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GenerateImagesForPrompt? onComplete,
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
                        : _parserFn$Query$GenerateImagesForPrompt(data),
                  ),
          onError: onError,
          document: documentNodeQueryGenerateImagesForPrompt,
          parserFn: _parserFn$Query$GenerateImagesForPrompt,
        );

  final OnQueryComplete$Query$GenerateImagesForPrompt? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GenerateImagesForPrompt
    extends graphql.WatchQueryOptions<Query$GenerateImagesForPrompt> {
  WatchOptions$Query$GenerateImagesForPrompt({
    String? operationName,
    required Variables$Query$GenerateImagesForPrompt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GenerateImagesForPrompt? typedOptimisticResult,
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
          document: documentNodeQueryGenerateImagesForPrompt,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GenerateImagesForPrompt,
        );
}

class FetchMoreOptions$Query$GenerateImagesForPrompt
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GenerateImagesForPrompt({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GenerateImagesForPrompt variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGenerateImagesForPrompt,
        );
}

extension ClientExtension$Query$GenerateImagesForPrompt
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GenerateImagesForPrompt>>
      query$GenerateImagesForPrompt(
              Options$Query$GenerateImagesForPrompt options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GenerateImagesForPrompt>
      watchQuery$GenerateImagesForPrompt(
              WatchOptions$Query$GenerateImagesForPrompt options) =>
          this.watchQuery(options);
  void writeQuery$GenerateImagesForPrompt({
    required Query$GenerateImagesForPrompt data,
    required Variables$Query$GenerateImagesForPrompt variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGenerateImagesForPrompt),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GenerateImagesForPrompt? readQuery$GenerateImagesForPrompt({
    required Variables$Query$GenerateImagesForPrompt variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGenerateImagesForPrompt),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GenerateImagesForPrompt.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GenerateImagesForPrompt>
    useQuery$GenerateImagesForPrompt(
            Options$Query$GenerateImagesForPrompt options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GenerateImagesForPrompt>
    useWatchQuery$GenerateImagesForPrompt(
            WatchOptions$Query$GenerateImagesForPrompt options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GenerateImagesForPrompt$Widget
    extends graphql_flutter.Query<Query$GenerateImagesForPrompt> {
  Query$GenerateImagesForPrompt$Widget({
    widgets.Key? key,
    required Options$Query$GenerateImagesForPrompt options,
    required graphql_flutter.QueryBuilder<Query$GenerateImagesForPrompt>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GenerateImagesForPrompt$generateImagesForPrompt {
  Query$GenerateImagesForPrompt$generateImagesForPrompt({
    this.imageUrls,
    this.$__typename = 'GenerateImagesForPromptResponse',
  });

  factory Query$GenerateImagesForPrompt$generateImagesForPrompt.fromJson(
      Map<String, dynamic> json) {
    final l$imageUrls = json['imageUrls'];
    final l$$__typename = json['__typename'];
    return Query$GenerateImagesForPrompt$generateImagesForPrompt(
      imageUrls:
          (l$imageUrls as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? imageUrls;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$imageUrls = imageUrls;
    _resultData['imageUrls'] = l$imageUrls?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$imageUrls = imageUrls;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$imageUrls == null ? null : Object.hashAll(l$imageUrls.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GenerateImagesForPrompt$generateImagesForPrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$imageUrls = imageUrls;
    final lOther$imageUrls = other.imageUrls;
    if (l$imageUrls != null && lOther$imageUrls != null) {
      if (l$imageUrls.length != lOther$imageUrls.length) {
        return false;
      }
      for (int i = 0; i < l$imageUrls.length; i++) {
        final l$imageUrls$entry = l$imageUrls[i];
        final lOther$imageUrls$entry = lOther$imageUrls[i];
        if (l$imageUrls$entry != lOther$imageUrls$entry) {
          return false;
        }
      }
    } else if (l$imageUrls != lOther$imageUrls) {
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

extension UtilityExtension$Query$GenerateImagesForPrompt$generateImagesForPrompt
    on Query$GenerateImagesForPrompt$generateImagesForPrompt {
  CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt<
          Query$GenerateImagesForPrompt$generateImagesForPrompt>
      get copyWith =>
          CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt<
    TRes> {
  factory CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt(
    Query$GenerateImagesForPrompt$generateImagesForPrompt instance,
    TRes Function(Query$GenerateImagesForPrompt$generateImagesForPrompt) then,
  ) = _CopyWithImpl$Query$GenerateImagesForPrompt$generateImagesForPrompt;

  factory CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GenerateImagesForPrompt$generateImagesForPrompt;

  TRes call({
    List<String?>? imageUrls,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GenerateImagesForPrompt$generateImagesForPrompt<TRes>
    implements
        CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt<TRes> {
  _CopyWithImpl$Query$GenerateImagesForPrompt$generateImagesForPrompt(
    this._instance,
    this._then,
  );

  final Query$GenerateImagesForPrompt$generateImagesForPrompt _instance;

  final TRes Function(Query$GenerateImagesForPrompt$generateImagesForPrompt)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? imageUrls = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GenerateImagesForPrompt$generateImagesForPrompt(
        imageUrls: imageUrls == _undefined
            ? _instance.imageUrls
            : (imageUrls as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GenerateImagesForPrompt$generateImagesForPrompt<
        TRes>
    implements
        CopyWith$Query$GenerateImagesForPrompt$generateImagesForPrompt<TRes> {
  _CopyWithStubImpl$Query$GenerateImagesForPrompt$generateImagesForPrompt(
      this._res);

  TRes _res;

  call({
    List<String?>? imageUrls,
    String? $__typename,
  }) =>
      _res;
}
