import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

import '../../../__generated/schema.graphql.dart';

class Fragment$GreWordFields {
  Fragment$GreWordFields({
    required this.id,
    required this.spelling,
    required this.status,
    required this.gptPrompts,
    this.greWordTags,
    this.$__typename = 'GreWord',
  });

  factory Fragment$GreWordFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$spelling = json['spelling'];
    final l$status = json['status'];
    final l$gptPrompts = json['gptPrompts'];
    final l$greWordTags = json['greWordTags'];
    final l$$__typename = json['__typename'];
    return Fragment$GreWordFields(
      id: (l$id as String),
      spelling: (l$spelling as String),
      status: fromJson$Enum$GreWordStatus((l$status as String)),
      gptPrompts: (l$gptPrompts as List<dynamic>)
          .map((e) => Fragment$GreWordFields$gptPrompts.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      greWordTags: (l$greWordTags as List<dynamic>?)
          ?.map((e) => Fragment$GreWordFields$greWordTags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String spelling;

  final Enum$GreWordStatus status;

  final List<Fragment$GreWordFields$gptPrompts> gptPrompts;

  final List<Fragment$GreWordFields$greWordTags>? greWordTags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$spelling = spelling;
    _resultData['spelling'] = l$spelling;
    final l$status = status;
    _resultData['status'] = toJson$Enum$GreWordStatus(l$status);
    final l$gptPrompts = gptPrompts;
    _resultData['gptPrompts'] = l$gptPrompts.map((e) => e.toJson()).toList();
    final l$greWordTags = greWordTags;
    _resultData['greWordTags'] = l$greWordTags?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$spelling = spelling;
    final l$status = status;
    final l$gptPrompts = gptPrompts;
    final l$greWordTags = greWordTags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$spelling,
      l$status,
      Object.hashAll(l$gptPrompts.map((v) => v)),
      l$greWordTags == null
          ? null
          : Object.hashAll(l$greWordTags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$GreWordFields) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$spelling = spelling;
    final lOther$spelling = other.spelling;
    if (l$spelling != lOther$spelling) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$gptPrompts = gptPrompts;
    final lOther$gptPrompts = other.gptPrompts;
    if (l$gptPrompts.length != lOther$gptPrompts.length) {
      return false;
    }
    for (int i = 0; i < l$gptPrompts.length; i++) {
      final l$gptPrompts$entry = l$gptPrompts[i];
      final lOther$gptPrompts$entry = lOther$gptPrompts[i];
      if (l$gptPrompts$entry != lOther$gptPrompts$entry) {
        return false;
      }
    }
    final l$greWordTags = greWordTags;
    final lOther$greWordTags = other.greWordTags;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$GreWordFields on Fragment$GreWordFields {
  CopyWith$Fragment$GreWordFields<Fragment$GreWordFields> get copyWith =>
      CopyWith$Fragment$GreWordFields(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$GreWordFields<TRes> {
  factory CopyWith$Fragment$GreWordFields(
    Fragment$GreWordFields instance,
    TRes Function(Fragment$GreWordFields) then,
  ) = _CopyWithImpl$Fragment$GreWordFields;

  factory CopyWith$Fragment$GreWordFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GreWordFields;

  TRes call({
    String? id,
    String? spelling,
    Enum$GreWordStatus? status,
    List<Fragment$GreWordFields$gptPrompts>? gptPrompts,
    List<Fragment$GreWordFields$greWordTags>? greWordTags,
    String? $__typename,
  });
  TRes gptPrompts(
      Iterable<Fragment$GreWordFields$gptPrompts> Function(
              Iterable<
                  CopyWith$Fragment$GreWordFields$gptPrompts<
                      Fragment$GreWordFields$gptPrompts>>)
          _fn);
  TRes greWordTags(
      Iterable<Fragment$GreWordFields$greWordTags>? Function(
              Iterable<
                  CopyWith$Fragment$GreWordFields$greWordTags<
                      Fragment$GreWordFields$greWordTags>>?)
          _fn);
}

class _CopyWithImpl$Fragment$GreWordFields<TRes>
    implements CopyWith$Fragment$GreWordFields<TRes> {
  _CopyWithImpl$Fragment$GreWordFields(
    this._instance,
    this._then,
  );

  final Fragment$GreWordFields _instance;

  final TRes Function(Fragment$GreWordFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? spelling = _undefined,
    Object? status = _undefined,
    Object? gptPrompts = _undefined,
    Object? greWordTags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GreWordFields(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        spelling: spelling == _undefined || spelling == null
            ? _instance.spelling
            : (spelling as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$GreWordStatus),
        gptPrompts: gptPrompts == _undefined || gptPrompts == null
            ? _instance.gptPrompts
            : (gptPrompts as List<Fragment$GreWordFields$gptPrompts>),
        greWordTags: greWordTags == _undefined
            ? _instance.greWordTags
            : (greWordTags as List<Fragment$GreWordFields$greWordTags>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes gptPrompts(
          Iterable<Fragment$GreWordFields$gptPrompts> Function(
                  Iterable<
                      CopyWith$Fragment$GreWordFields$gptPrompts<
                          Fragment$GreWordFields$gptPrompts>>)
              _fn) =>
      call(
          gptPrompts: _fn(_instance.gptPrompts
              .map((e) => CopyWith$Fragment$GreWordFields$gptPrompts(
                    e,
                    (i) => i,
                  ))).toList());

  TRes greWordTags(
          Iterable<Fragment$GreWordFields$greWordTags>? Function(
                  Iterable<
                      CopyWith$Fragment$GreWordFields$greWordTags<
                          Fragment$GreWordFields$greWordTags>>?)
              _fn) =>
      call(
          greWordTags: _fn(_instance.greWordTags
              ?.map((e) => CopyWith$Fragment$GreWordFields$greWordTags(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Fragment$GreWordFields<TRes>
    implements CopyWith$Fragment$GreWordFields<TRes> {
  _CopyWithStubImpl$Fragment$GreWordFields(this._res);

  TRes _res;

  call({
    String? id,
    String? spelling,
    Enum$GreWordStatus? status,
    List<Fragment$GreWordFields$gptPrompts>? gptPrompts,
    List<Fragment$GreWordFields$greWordTags>? greWordTags,
    String? $__typename,
  }) =>
      _res;

  gptPrompts(_fn) => _res;

  greWordTags(_fn) => _res;
}

const fragmentDefinitionGreWordFields = FragmentDefinitionNode(
  name: NameNode(value: 'GreWordFields'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'GreWord'),
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
      name: NameNode(value: 'spelling'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'gptPrompts'),
      alias: null,
      arguments: [],
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
          name: NameNode(value: 'input'),
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
          name: NameNode(value: 'editedResponse'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'greWordId'),
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
      name: NameNode(value: 'greWordTags'),
      alias: null,
      arguments: [],
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
);
const documentNodeFragmentGreWordFields = DocumentNode(definitions: [
  fragmentDefinitionGreWordFields,
]);

extension ClientExtension$Fragment$GreWordFields on graphql.GraphQLClient {
  void writeFragment$GreWordFields({
    required Fragment$GreWordFields data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'GreWordFields',
            document: documentNodeFragmentGreWordFields,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$GreWordFields? readFragment$GreWordFields({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'GreWordFields',
          document: documentNodeFragmentGreWordFields,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$GreWordFields.fromJson(result);
  }
}

class Fragment$GreWordFields$gptPrompts {
  Fragment$GreWordFields$gptPrompts({
    required this.id,
    required this.input,
    required this.response,
    this.editedResponse,
    this.greWordId,
    this.$__typename = 'GptPrompt',
  });

  factory Fragment$GreWordFields$gptPrompts.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$input = json['input'];
    final l$response = json['response'];
    final l$editedResponse = json['editedResponse'];
    final l$greWordId = json['greWordId'];
    final l$$__typename = json['__typename'];
    return Fragment$GreWordFields$gptPrompts(
      id: (l$id as String),
      input: (l$input as String),
      response: (l$response as String),
      editedResponse: (l$editedResponse as String?),
      greWordId: (l$greWordId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String input;

  final String response;

  final String? editedResponse;

  final String? greWordId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$input = input;
    _resultData['input'] = l$input;
    final l$response = response;
    _resultData['response'] = l$response;
    final l$editedResponse = editedResponse;
    _resultData['editedResponse'] = l$editedResponse;
    final l$greWordId = greWordId;
    _resultData['greWordId'] = l$greWordId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    final l$response = response;
    final l$editedResponse = editedResponse;
    final l$greWordId = greWordId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$input,
      l$response,
      l$editedResponse,
      l$greWordId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$GreWordFields$gptPrompts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$editedResponse = editedResponse;
    final lOther$editedResponse = other.editedResponse;
    if (l$editedResponse != lOther$editedResponse) {
      return false;
    }
    final l$greWordId = greWordId;
    final lOther$greWordId = other.greWordId;
    if (l$greWordId != lOther$greWordId) {
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

extension UtilityExtension$Fragment$GreWordFields$gptPrompts
    on Fragment$GreWordFields$gptPrompts {
  CopyWith$Fragment$GreWordFields$gptPrompts<Fragment$GreWordFields$gptPrompts>
      get copyWith => CopyWith$Fragment$GreWordFields$gptPrompts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$GreWordFields$gptPrompts<TRes> {
  factory CopyWith$Fragment$GreWordFields$gptPrompts(
    Fragment$GreWordFields$gptPrompts instance,
    TRes Function(Fragment$GreWordFields$gptPrompts) then,
  ) = _CopyWithImpl$Fragment$GreWordFields$gptPrompts;

  factory CopyWith$Fragment$GreWordFields$gptPrompts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GreWordFields$gptPrompts;

  TRes call({
    String? id,
    String? input,
    String? response,
    String? editedResponse,
    String? greWordId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$GreWordFields$gptPrompts<TRes>
    implements CopyWith$Fragment$GreWordFields$gptPrompts<TRes> {
  _CopyWithImpl$Fragment$GreWordFields$gptPrompts(
    this._instance,
    this._then,
  );

  final Fragment$GreWordFields$gptPrompts _instance;

  final TRes Function(Fragment$GreWordFields$gptPrompts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
    Object? response = _undefined,
    Object? editedResponse = _undefined,
    Object? greWordId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GreWordFields$gptPrompts(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        input: input == _undefined || input == null
            ? _instance.input
            : (input as String),
        response: response == _undefined || response == null
            ? _instance.response
            : (response as String),
        editedResponse: editedResponse == _undefined
            ? _instance.editedResponse
            : (editedResponse as String?),
        greWordId: greWordId == _undefined
            ? _instance.greWordId
            : (greWordId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$GreWordFields$gptPrompts<TRes>
    implements CopyWith$Fragment$GreWordFields$gptPrompts<TRes> {
  _CopyWithStubImpl$Fragment$GreWordFields$gptPrompts(this._res);

  TRes _res;

  call({
    String? id,
    String? input,
    String? response,
    String? editedResponse,
    String? greWordId,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$GreWordFields$greWordTags {
  Fragment$GreWordFields$greWordTags({
    required this.id,
    required this.name,
    this.$__typename = 'GreWordTag',
  });

  factory Fragment$GreWordFields$greWordTags.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$GreWordFields$greWordTags(
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
    if (!(other is Fragment$GreWordFields$greWordTags) ||
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

extension UtilityExtension$Fragment$GreWordFields$greWordTags
    on Fragment$GreWordFields$greWordTags {
  CopyWith$Fragment$GreWordFields$greWordTags<
          Fragment$GreWordFields$greWordTags>
      get copyWith => CopyWith$Fragment$GreWordFields$greWordTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$GreWordFields$greWordTags<TRes> {
  factory CopyWith$Fragment$GreWordFields$greWordTags(
    Fragment$GreWordFields$greWordTags instance,
    TRes Function(Fragment$GreWordFields$greWordTags) then,
  ) = _CopyWithImpl$Fragment$GreWordFields$greWordTags;

  factory CopyWith$Fragment$GreWordFields$greWordTags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GreWordFields$greWordTags;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$GreWordFields$greWordTags<TRes>
    implements CopyWith$Fragment$GreWordFields$greWordTags<TRes> {
  _CopyWithImpl$Fragment$GreWordFields$greWordTags(
    this._instance,
    this._then,
  );

  final Fragment$GreWordFields$greWordTags _instance;

  final TRes Function(Fragment$GreWordFields$greWordTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GreWordFields$greWordTags(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$GreWordFields$greWordTags<TRes>
    implements CopyWith$Fragment$GreWordFields$greWordTags<TRes> {
  _CopyWithStubImpl$Fragment$GreWordFields$greWordTags(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$greWords {
  factory Variables$Query$greWords({
    Input$GreWordWhereInput? where,
    int? skip,
    int? take,
    List<Input$GreWordOrderByWithRelationInput?>? orderBy,
  }) =>
      Variables$Query$greWords._({
        if (where != null) r'where': where,
        if (skip != null) r'skip': skip,
        if (take != null) r'take': take,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$greWords._(this._$data);

  factory Variables$Query$greWords.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$GreWordWhereInput.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('skip')) {
      final l$skip = data['skip'];
      result$data['skip'] = (l$skip as int?);
    }
    if (data.containsKey('take')) {
      final l$take = data['take'];
      result$data['take'] = (l$take as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Input$GreWordOrderByWithRelationInput.fromJson(
                  (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$greWords._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GreWordWhereInput? get where =>
      (_$data['where'] as Input$GreWordWhereInput?);

  int? get skip => (_$data['skip'] as int?);

  int? get take => (_$data['take'] as int?);

  List<Input$GreWordOrderByWithRelationInput?>? get orderBy =>
      (_$data['orderBy'] as List<Input$GreWordOrderByWithRelationInput?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('skip')) {
      final l$skip = skip;
      result$data['skip'] = l$skip;
    }
    if (_$data.containsKey('take')) {
      final l$take = take;
      result$data['take'] = l$take;
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e?.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$greWords<Variables$Query$greWords> get copyWith =>
      CopyWith$Variables$Query$greWords(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$greWords) ||
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
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (_$data.containsKey('skip') != other._$data.containsKey('skip')) {
      return false;
    }
    if (l$skip != lOther$skip) {
      return false;
    }
    final l$take = take;
    final lOther$take = other.take;
    if (_$data.containsKey('take') != other._$data.containsKey('take')) {
      return false;
    }
    if (l$take != lOther$take) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$skip = skip;
    final l$take = take;
    final l$orderBy = orderBy;
    return Object.hashAll([
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('skip') ? l$skip : const {},
      _$data.containsKey('take') ? l$take : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$greWords<TRes> {
  factory CopyWith$Variables$Query$greWords(
    Variables$Query$greWords instance,
    TRes Function(Variables$Query$greWords) then,
  ) = _CopyWithImpl$Variables$Query$greWords;

  factory CopyWith$Variables$Query$greWords.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$greWords;

  TRes call({
    Input$GreWordWhereInput? where,
    int? skip,
    int? take,
    List<Input$GreWordOrderByWithRelationInput?>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$greWords<TRes>
    implements CopyWith$Variables$Query$greWords<TRes> {
  _CopyWithImpl$Variables$Query$greWords(
    this._instance,
    this._then,
  );

  final Variables$Query$greWords _instance;

  final TRes Function(Variables$Query$greWords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? skip = _undefined,
    Object? take = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$greWords._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$GreWordWhereInput?),
        if (skip != _undefined) 'skip': (skip as int?),
        if (take != _undefined) 'take': (take as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$GreWordOrderByWithRelationInput?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$greWords<TRes>
    implements CopyWith$Variables$Query$greWords<TRes> {
  _CopyWithStubImpl$Variables$Query$greWords(this._res);

  TRes _res;

  call({
    Input$GreWordWhereInput? where,
    int? skip,
    int? take,
    List<Input$GreWordOrderByWithRelationInput?>? orderBy,
  }) =>
      _res;
}

class Query$greWords {
  Query$greWords({
    required this.greWords,
    required this.greWordsCount,
    this.$__typename = 'Query',
  });

  factory Query$greWords.fromJson(Map<String, dynamic> json) {
    final l$greWords = json['greWords'];
    final l$greWordsCount = json['greWordsCount'];
    final l$$__typename = json['__typename'];
    return Query$greWords(
      greWords: (l$greWords as List<dynamic>)
          .map((e) =>
              Fragment$GreWordFields.fromJson((e as Map<String, dynamic>)))
          .toList(),
      greWordsCount: (l$greWordsCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$GreWordFields> greWords;

  final int greWordsCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$greWords = greWords;
    _resultData['greWords'] = l$greWords.map((e) => e.toJson()).toList();
    final l$greWordsCount = greWordsCount;
    _resultData['greWordsCount'] = l$greWordsCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$greWords = greWords;
    final l$greWordsCount = greWordsCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$greWords.map((v) => v)),
      l$greWordsCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$greWords) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$greWords = greWords;
    final lOther$greWords = other.greWords;
    if (l$greWords.length != lOther$greWords.length) {
      return false;
    }
    for (int i = 0; i < l$greWords.length; i++) {
      final l$greWords$entry = l$greWords[i];
      final lOther$greWords$entry = lOther$greWords[i];
      if (l$greWords$entry != lOther$greWords$entry) {
        return false;
      }
    }
    final l$greWordsCount = greWordsCount;
    final lOther$greWordsCount = other.greWordsCount;
    if (l$greWordsCount != lOther$greWordsCount) {
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

extension UtilityExtension$Query$greWords on Query$greWords {
  CopyWith$Query$greWords<Query$greWords> get copyWith =>
      CopyWith$Query$greWords(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$greWords<TRes> {
  factory CopyWith$Query$greWords(
    Query$greWords instance,
    TRes Function(Query$greWords) then,
  ) = _CopyWithImpl$Query$greWords;

  factory CopyWith$Query$greWords.stub(TRes res) =
      _CopyWithStubImpl$Query$greWords;

  TRes call({
    List<Fragment$GreWordFields>? greWords,
    int? greWordsCount,
    String? $__typename,
  });
  TRes greWords(
      Iterable<Fragment$GreWordFields> Function(
              Iterable<CopyWith$Fragment$GreWordFields<Fragment$GreWordFields>>)
          _fn);
}

class _CopyWithImpl$Query$greWords<TRes>
    implements CopyWith$Query$greWords<TRes> {
  _CopyWithImpl$Query$greWords(
    this._instance,
    this._then,
  );

  final Query$greWords _instance;

  final TRes Function(Query$greWords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? greWords = _undefined,
    Object? greWordsCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$greWords(
        greWords: greWords == _undefined || greWords == null
            ? _instance.greWords
            : (greWords as List<Fragment$GreWordFields>),
        greWordsCount: greWordsCount == _undefined || greWordsCount == null
            ? _instance.greWordsCount
            : (greWordsCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes greWords(
          Iterable<Fragment$GreWordFields> Function(
                  Iterable<
                      CopyWith$Fragment$GreWordFields<Fragment$GreWordFields>>)
              _fn) =>
      call(
          greWords:
              _fn(_instance.greWords.map((e) => CopyWith$Fragment$GreWordFields(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$greWords<TRes>
    implements CopyWith$Query$greWords<TRes> {
  _CopyWithStubImpl$Query$greWords(this._res);

  TRes _res;

  call({
    List<Fragment$GreWordFields>? greWords,
    int? greWordsCount,
    String? $__typename,
  }) =>
      _res;

  greWords(_fn) => _res;
}

const documentNodeQuerygreWords = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'greWords'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'GreWordWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'skip')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'take')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'GreWordOrderByWithRelationInput'),
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
        name: NameNode(value: 'greWords'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
          ArgumentNode(
            name: NameNode(value: 'skip'),
            value: VariableNode(name: NameNode(value: 'skip')),
          ),
          ArgumentNode(
            name: NameNode(value: 'take'),
            value: VariableNode(name: NameNode(value: 'take')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
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
        name: NameNode(value: 'greWordsCount'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
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
  fragmentDefinitionGreWordFields,
]);
Query$greWords _parserFn$Query$greWords(Map<String, dynamic> data) =>
    Query$greWords.fromJson(data);
typedef OnQueryComplete$Query$greWords = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$greWords?,
);

class Options$Query$greWords extends graphql.QueryOptions<Query$greWords> {
  Options$Query$greWords({
    String? operationName,
    Variables$Query$greWords? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$greWords? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$greWords? onComplete,
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
                    data == null ? null : _parserFn$Query$greWords(data),
                  ),
          onError: onError,
          document: documentNodeQuerygreWords,
          parserFn: _parserFn$Query$greWords,
        );

  final OnQueryComplete$Query$greWords? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$greWords
    extends graphql.WatchQueryOptions<Query$greWords> {
  WatchOptions$Query$greWords({
    String? operationName,
    Variables$Query$greWords? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$greWords? typedOptimisticResult,
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
          document: documentNodeQuerygreWords,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$greWords,
        );
}

class FetchMoreOptions$Query$greWords extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$greWords({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$greWords? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygreWords,
        );
}

extension ClientExtension$Query$greWords on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$greWords>> query$greWords(
          [Options$Query$greWords? options]) async =>
      await this.query(options ?? Options$Query$greWords());
  graphql.ObservableQuery<Query$greWords> watchQuery$greWords(
          [WatchOptions$Query$greWords? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$greWords());
  void writeQuery$greWords({
    required Query$greWords data,
    Variables$Query$greWords? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerygreWords),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$greWords? readQuery$greWords({
    Variables$Query$greWords? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygreWords),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$greWords.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$greWords> useQuery$greWords(
        [Options$Query$greWords? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$greWords());
graphql.ObservableQuery<Query$greWords> useWatchQuery$greWords(
        [WatchOptions$Query$greWords? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$greWords());

class Query$greWords$Widget extends graphql_flutter.Query<Query$greWords> {
  Query$greWords$Widget({
    widgets.Key? key,
    Options$Query$greWords? options,
    required graphql_flutter.QueryBuilder<Query$greWords> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$greWords(),
          builder: builder,
        );
}
