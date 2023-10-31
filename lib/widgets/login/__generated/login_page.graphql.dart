import '../../../__generated/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$UserFields {
  Fragment$UserFields({
    required this.id,
    required this.email,
    required this.meta,
    this.$__typename = 'User',
  });

  factory Fragment$UserFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$meta = json['meta'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFields(
      id: (l$id as String),
      email: (l$email as String),
      meta: Fragment$UserFields$meta.fromJson((l$meta as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final Fragment$UserFields$meta meta;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$meta = meta;
    _resultData['meta'] = l$meta.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$meta = meta;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$meta,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserFields) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$meta = meta;
    final lOther$meta = other.meta;
    if (l$meta != lOther$meta) {
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

extension UtilityExtension$Fragment$UserFields on Fragment$UserFields {
  CopyWith$Fragment$UserFields<Fragment$UserFields> get copyWith =>
      CopyWith$Fragment$UserFields(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserFields<TRes> {
  factory CopyWith$Fragment$UserFields(
    Fragment$UserFields instance,
    TRes Function(Fragment$UserFields) then,
  ) = _CopyWithImpl$Fragment$UserFields;

  factory CopyWith$Fragment$UserFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFields;

  TRes call({
    String? id,
    String? email,
    Fragment$UserFields$meta? meta,
    String? $__typename,
  });
  CopyWith$Fragment$UserFields$meta<TRes> get meta;
}

class _CopyWithImpl$Fragment$UserFields<TRes>
    implements CopyWith$Fragment$UserFields<TRes> {
  _CopyWithImpl$Fragment$UserFields(
    this._instance,
    this._then,
  );

  final Fragment$UserFields _instance;

  final TRes Function(Fragment$UserFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? meta = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFields(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        meta: meta == _undefined || meta == null
            ? _instance.meta
            : (meta as Fragment$UserFields$meta),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFields$meta<TRes> get meta {
    final local$meta = _instance.meta;
    return CopyWith$Fragment$UserFields$meta(local$meta, (e) => call(meta: e));
  }
}

class _CopyWithStubImpl$Fragment$UserFields<TRes>
    implements CopyWith$Fragment$UserFields<TRes> {
  _CopyWithStubImpl$Fragment$UserFields(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    Fragment$UserFields$meta? meta,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFields$meta<TRes> get meta =>
      CopyWith$Fragment$UserFields$meta.stub(_res);
}

const fragmentDefinitionUserFields = FragmentDefinitionNode(
  name: NameNode(value: 'UserFields'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'meta'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'defaultGreWordSearchPromptInput'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'showDefaultGreWordSearchPromptInputs'),
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
);
const documentNodeFragmentUserFields = DocumentNode(definitions: [
  fragmentDefinitionUserFields,
]);

extension ClientExtension$Fragment$UserFields on graphql.GraphQLClient {
  void writeFragment$UserFields({
    required Fragment$UserFields data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserFields',
            document: documentNodeFragmentUserFields,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UserFields? readFragment$UserFields({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserFields',
          document: documentNodeFragmentUserFields,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserFields.fromJson(result);
  }
}

class Fragment$UserFields$meta {
  Fragment$UserFields$meta({
    this.defaultGreWordSearchPromptInput,
    this.showDefaultGreWordSearchPromptInputs,
    this.$__typename = 'UserMetaParsedJsonValue',
  });

  factory Fragment$UserFields$meta.fromJson(Map<String, dynamic> json) {
    final l$defaultGreWordSearchPromptInput =
        json['defaultGreWordSearchPromptInput'];
    final l$showDefaultGreWordSearchPromptInputs =
        json['showDefaultGreWordSearchPromptInputs'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFields$meta(
      defaultGreWordSearchPromptInput:
          (l$defaultGreWordSearchPromptInput as String?),
      showDefaultGreWordSearchPromptInputs:
          (l$showDefaultGreWordSearchPromptInputs as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? defaultGreWordSearchPromptInput;

  final bool? showDefaultGreWordSearchPromptInputs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$defaultGreWordSearchPromptInput = defaultGreWordSearchPromptInput;
    _resultData['defaultGreWordSearchPromptInput'] =
        l$defaultGreWordSearchPromptInput;
    final l$showDefaultGreWordSearchPromptInputs =
        showDefaultGreWordSearchPromptInputs;
    _resultData['showDefaultGreWordSearchPromptInputs'] =
        l$showDefaultGreWordSearchPromptInputs;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$defaultGreWordSearchPromptInput = defaultGreWordSearchPromptInput;
    final l$showDefaultGreWordSearchPromptInputs =
        showDefaultGreWordSearchPromptInputs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$defaultGreWordSearchPromptInput,
      l$showDefaultGreWordSearchPromptInputs,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserFields$meta) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$defaultGreWordSearchPromptInput = defaultGreWordSearchPromptInput;
    final lOther$defaultGreWordSearchPromptInput =
        other.defaultGreWordSearchPromptInput;
    if (l$defaultGreWordSearchPromptInput !=
        lOther$defaultGreWordSearchPromptInput) {
      return false;
    }
    final l$showDefaultGreWordSearchPromptInputs =
        showDefaultGreWordSearchPromptInputs;
    final lOther$showDefaultGreWordSearchPromptInputs =
        other.showDefaultGreWordSearchPromptInputs;
    if (l$showDefaultGreWordSearchPromptInputs !=
        lOther$showDefaultGreWordSearchPromptInputs) {
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

extension UtilityExtension$Fragment$UserFields$meta
    on Fragment$UserFields$meta {
  CopyWith$Fragment$UserFields$meta<Fragment$UserFields$meta> get copyWith =>
      CopyWith$Fragment$UserFields$meta(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserFields$meta<TRes> {
  factory CopyWith$Fragment$UserFields$meta(
    Fragment$UserFields$meta instance,
    TRes Function(Fragment$UserFields$meta) then,
  ) = _CopyWithImpl$Fragment$UserFields$meta;

  factory CopyWith$Fragment$UserFields$meta.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFields$meta;

  TRes call({
    String? defaultGreWordSearchPromptInput,
    bool? showDefaultGreWordSearchPromptInputs,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFields$meta<TRes>
    implements CopyWith$Fragment$UserFields$meta<TRes> {
  _CopyWithImpl$Fragment$UserFields$meta(
    this._instance,
    this._then,
  );

  final Fragment$UserFields$meta _instance;

  final TRes Function(Fragment$UserFields$meta) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? defaultGreWordSearchPromptInput = _undefined,
    Object? showDefaultGreWordSearchPromptInputs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFields$meta(
        defaultGreWordSearchPromptInput:
            defaultGreWordSearchPromptInput == _undefined
                ? _instance.defaultGreWordSearchPromptInput
                : (defaultGreWordSearchPromptInput as String?),
        showDefaultGreWordSearchPromptInputs:
            showDefaultGreWordSearchPromptInputs == _undefined
                ? _instance.showDefaultGreWordSearchPromptInputs
                : (showDefaultGreWordSearchPromptInputs as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFields$meta<TRes>
    implements CopyWith$Fragment$UserFields$meta<TRes> {
  _CopyWithStubImpl$Fragment$UserFields$meta(this._res);

  TRes _res;

  call({
    String? defaultGreWordSearchPromptInput,
    bool? showDefaultGreWordSearchPromptInputs,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$createUser {
  factory Variables$Mutation$createUser({required String email}) =>
      Variables$Mutation$createUser._({
        r'email': email,
      });

  Variables$Mutation$createUser._(this._$data);

  factory Variables$Mutation$createUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    return Variables$Mutation$createUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    return result$data;
  }

  CopyWith$Variables$Mutation$createUser<Variables$Mutation$createUser>
      get copyWith => CopyWith$Variables$Mutation$createUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$createUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    return Object.hashAll([l$email]);
  }
}

abstract class CopyWith$Variables$Mutation$createUser<TRes> {
  factory CopyWith$Variables$Mutation$createUser(
    Variables$Mutation$createUser instance,
    TRes Function(Variables$Mutation$createUser) then,
  ) = _CopyWithImpl$Variables$Mutation$createUser;

  factory CopyWith$Variables$Mutation$createUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createUser;

  TRes call({String? email});
}

class _CopyWithImpl$Variables$Mutation$createUser<TRes>
    implements CopyWith$Variables$Mutation$createUser<TRes> {
  _CopyWithImpl$Variables$Mutation$createUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createUser _instance;

  final TRes Function(Variables$Mutation$createUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? email = _undefined}) =>
      _then(Variables$Mutation$createUser._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createUser<TRes>
    implements CopyWith$Variables$Mutation$createUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createUser(this._res);

  TRes _res;

  call({String? email}) => _res;
}

class Mutation$createUser {
  Mutation$createUser({
    this.createUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createUser.fromJson(Map<String, dynamic> json) {
    final l$createUser = json['createUser'];
    final l$$__typename = json['__typename'];
    return Mutation$createUser(
      createUser: l$createUser == null
          ? null
          : Fragment$UserFields.fromJson(
              (l$createUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserFields? createUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createUser = createUser;
    _resultData['createUser'] = l$createUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createUser = createUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$createUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createUser = createUser;
    final lOther$createUser = other.createUser;
    if (l$createUser != lOther$createUser) {
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

extension UtilityExtension$Mutation$createUser on Mutation$createUser {
  CopyWith$Mutation$createUser<Mutation$createUser> get copyWith =>
      CopyWith$Mutation$createUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createUser<TRes> {
  factory CopyWith$Mutation$createUser(
    Mutation$createUser instance,
    TRes Function(Mutation$createUser) then,
  ) = _CopyWithImpl$Mutation$createUser;

  factory CopyWith$Mutation$createUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createUser;

  TRes call({
    Fragment$UserFields? createUser,
    String? $__typename,
  });
  CopyWith$Fragment$UserFields<TRes> get createUser;
}

class _CopyWithImpl$Mutation$createUser<TRes>
    implements CopyWith$Mutation$createUser<TRes> {
  _CopyWithImpl$Mutation$createUser(
    this._instance,
    this._then,
  );

  final Mutation$createUser _instance;

  final TRes Function(Mutation$createUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createUser(
        createUser: createUser == _undefined
            ? _instance.createUser
            : (createUser as Fragment$UserFields?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFields<TRes> get createUser {
    final local$createUser = _instance.createUser;
    return local$createUser == null
        ? CopyWith$Fragment$UserFields.stub(_then(_instance))
        : CopyWith$Fragment$UserFields(
            local$createUser, (e) => call(createUser: e));
  }
}

class _CopyWithStubImpl$Mutation$createUser<TRes>
    implements CopyWith$Mutation$createUser<TRes> {
  _CopyWithStubImpl$Mutation$createUser(this._res);

  TRes _res;

  call({
    Fragment$UserFields? createUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFields<TRes> get createUser =>
      CopyWith$Fragment$UserFields.stub(_res);
}

const documentNodeMutationcreateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
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
        name: NameNode(value: 'createUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserFields'),
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
  fragmentDefinitionUserFields,
]);
Mutation$createUser _parserFn$Mutation$createUser(Map<String, dynamic> data) =>
    Mutation$createUser.fromJson(data);
typedef OnMutationCompleted$Mutation$createUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$createUser?,
);

class Options$Mutation$createUser
    extends graphql.MutationOptions<Mutation$createUser> {
  Options$Mutation$createUser({
    String? operationName,
    required Variables$Mutation$createUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$createUser>? update,
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
                    data == null ? null : _parserFn$Mutation$createUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateUser,
          parserFn: _parserFn$Mutation$createUser,
        );

  final OnMutationCompleted$Mutation$createUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createUser
    extends graphql.WatchQueryOptions<Mutation$createUser> {
  WatchOptions$Mutation$createUser({
    String? operationName,
    required Variables$Mutation$createUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createUser? typedOptimisticResult,
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
          document: documentNodeMutationcreateUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createUser,
        );
}

extension ClientExtension$Mutation$createUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createUser>> mutate$createUser(
          Options$Mutation$createUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$createUser> watchMutation$createUser(
          WatchOptions$Mutation$createUser options) =>
      this.watchMutation(options);
}

class Mutation$createUser$HookResult {
  Mutation$createUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createUser runMutation;

  final graphql.QueryResult<Mutation$createUser> result;
}

Mutation$createUser$HookResult useMutation$createUser(
    [WidgetOptions$Mutation$createUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$createUser());
  return Mutation$createUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createUser> useWatchMutation$createUser(
        WatchOptions$Mutation$createUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createUser
    extends graphql.MutationOptions<Mutation$createUser> {
  WidgetOptions$Mutation$createUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$createUser>? update,
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
                    data == null ? null : _parserFn$Mutation$createUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateUser,
          parserFn: _parserFn$Mutation$createUser,
        );

  final OnMutationCompleted$Mutation$createUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createUser
    = graphql.MultiSourceResult<Mutation$createUser> Function(
  Variables$Mutation$createUser, {
  Object? optimisticResult,
  Mutation$createUser? typedOptimisticResult,
});
typedef Builder$Mutation$createUser = widgets.Widget Function(
  RunMutation$Mutation$createUser,
  graphql.QueryResult<Mutation$createUser>?,
);

class Mutation$createUser$Widget
    extends graphql_flutter.Mutation<Mutation$createUser> {
  Mutation$createUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createUser? options,
    required Builder$Mutation$createUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createUser(),
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

class Variables$Query$User {
  factory Variables$Query$User({required Input$UserWhereUniqueInput where}) =>
      Variables$Query$User._({
        r'where': where,
      });

  Variables$Query$User._(this._$data);

  factory Variables$Query$User.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input$UserWhereUniqueInput.fromJson((l$where as Map<String, dynamic>));
    return Variables$Query$User._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserWhereUniqueInput get where =>
      (_$data['where'] as Input$UserWhereUniqueInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$User<Variables$Query$User> get copyWith =>
      CopyWith$Variables$Query$User(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$User) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    return Object.hashAll([l$where]);
  }
}

abstract class CopyWith$Variables$Query$User<TRes> {
  factory CopyWith$Variables$Query$User(
    Variables$Query$User instance,
    TRes Function(Variables$Query$User) then,
  ) = _CopyWithImpl$Variables$Query$User;

  factory CopyWith$Variables$Query$User.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$User;

  TRes call({Input$UserWhereUniqueInput? where});
}

class _CopyWithImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithImpl$Variables$Query$User(
    this._instance,
    this._then,
  );

  final Variables$Query$User _instance;

  final TRes Function(Variables$Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) => _then(Variables$Query$User._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$UserWhereUniqueInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithStubImpl$Variables$Query$User(this._res);

  TRes _res;

  call({Input$UserWhereUniqueInput? where}) => _res;
}

class Query$User {
  Query$User({
    this.user,
    this.$__typename = 'Query',
  });

  factory Query$User.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$User(
      user: l$user == null
          ? null
          : Fragment$UserFields.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserFields? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$User on Query$User {
  CopyWith$Query$User<Query$User> get copyWith => CopyWith$Query$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User<TRes> {
  factory CopyWith$Query$User(
    Query$User instance,
    TRes Function(Query$User) then,
  ) = _CopyWithImpl$Query$User;

  factory CopyWith$Query$User.stub(TRes res) = _CopyWithStubImpl$Query$User;

  TRes call({
    Fragment$UserFields? user,
    String? $__typename,
  });
  CopyWith$Fragment$UserFields<TRes> get user;
}

class _CopyWithImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithImpl$Query$User(
    this._instance,
    this._then,
  );

  final Query$User _instance;

  final TRes Function(Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User(
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFields?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFields<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFields.stub(_then(_instance))
        : CopyWith$Fragment$UserFields(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithStubImpl$Query$User(this._res);

  TRes _res;

  call({
    Fragment$UserFields? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFields<TRes> get user =>
      CopyWith$Fragment$UserFields.stub(_res);
}

const documentNodeQueryUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserWhereUniqueInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
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
            name: NameNode(value: 'UserFields'),
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
  fragmentDefinitionUserFields,
]);
Query$User _parserFn$Query$User(Map<String, dynamic> data) =>
    Query$User.fromJson(data);
typedef OnQueryComplete$Query$User = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$User?,
);

class Options$Query$User extends graphql.QueryOptions<Query$User> {
  Options$Query$User({
    String? operationName,
    required Variables$Query$User variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$User? onComplete,
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
                    data == null ? null : _parserFn$Query$User(data),
                  ),
          onError: onError,
          document: documentNodeQueryUser,
          parserFn: _parserFn$Query$User,
        );

  final OnQueryComplete$Query$User? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$User extends graphql.WatchQueryOptions<Query$User> {
  WatchOptions$Query$User({
    String? operationName,
    required Variables$Query$User variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User? typedOptimisticResult,
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
          document: documentNodeQueryUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$User,
        );
}

class FetchMoreOptions$Query$User extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$User({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$User variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryUser,
        );
}

extension ClientExtension$Query$User on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$User>> query$User(
          Options$Query$User options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$User> watchQuery$User(
          WatchOptions$Query$User options) =>
      this.watchQuery(options);
  void writeQuery$User({
    required Query$User data,
    required Variables$Query$User variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$User? readQuery$User({
    required Variables$Query$User variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$User.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$User> useQuery$User(
        Options$Query$User options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$User> useWatchQuery$User(
        WatchOptions$Query$User options) =>
    graphql_flutter.useWatchQuery(options);

class Query$User$Widget extends graphql_flutter.Query<Query$User> {
  Query$User$Widget({
    widgets.Key? key,
    required Options$Query$User options,
    required graphql_flutter.QueryBuilder<Query$User> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}
