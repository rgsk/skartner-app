import '../../../__generated/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$GptPromptFields {
  Fragment$GptPromptFields({
    required this.id,
    required this.cacheResponse,
    this.editedResponse,
    this.greWordId,
    this.$__typename = 'GptPrompt',
  });

  factory Fragment$GptPromptFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$cacheResponse = json['cacheResponse'];
    final l$editedResponse = json['editedResponse'];
    final l$greWordId = json['greWordId'];
    final l$$__typename = json['__typename'];
    return Fragment$GptPromptFields(
      id: (l$id as String),
      cacheResponse: Fragment$GptPromptFields$cacheResponse.fromJson(
          (l$cacheResponse as Map<String, dynamic>)),
      editedResponse: (l$editedResponse as String?),
      greWordId: (l$greWordId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$GptPromptFields$cacheResponse cacheResponse;

  final String? editedResponse;

  final String? greWordId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$cacheResponse = cacheResponse;
    _resultData['cacheResponse'] = l$cacheResponse.toJson();
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
    final l$cacheResponse = cacheResponse;
    final l$editedResponse = editedResponse;
    final l$greWordId = greWordId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$cacheResponse,
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
    if (!(other is Fragment$GptPromptFields) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$cacheResponse = cacheResponse;
    final lOther$cacheResponse = other.cacheResponse;
    if (l$cacheResponse != lOther$cacheResponse) {
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

extension UtilityExtension$Fragment$GptPromptFields
    on Fragment$GptPromptFields {
  CopyWith$Fragment$GptPromptFields<Fragment$GptPromptFields> get copyWith =>
      CopyWith$Fragment$GptPromptFields(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$GptPromptFields<TRes> {
  factory CopyWith$Fragment$GptPromptFields(
    Fragment$GptPromptFields instance,
    TRes Function(Fragment$GptPromptFields) then,
  ) = _CopyWithImpl$Fragment$GptPromptFields;

  factory CopyWith$Fragment$GptPromptFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GptPromptFields;

  TRes call({
    String? id,
    Fragment$GptPromptFields$cacheResponse? cacheResponse,
    String? editedResponse,
    String? greWordId,
    String? $__typename,
  });
  CopyWith$Fragment$GptPromptFields$cacheResponse<TRes> get cacheResponse;
}

class _CopyWithImpl$Fragment$GptPromptFields<TRes>
    implements CopyWith$Fragment$GptPromptFields<TRes> {
  _CopyWithImpl$Fragment$GptPromptFields(
    this._instance,
    this._then,
  );

  final Fragment$GptPromptFields _instance;

  final TRes Function(Fragment$GptPromptFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? cacheResponse = _undefined,
    Object? editedResponse = _undefined,
    Object? greWordId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GptPromptFields(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        cacheResponse: cacheResponse == _undefined || cacheResponse == null
            ? _instance.cacheResponse
            : (cacheResponse as Fragment$GptPromptFields$cacheResponse),
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

  CopyWith$Fragment$GptPromptFields$cacheResponse<TRes> get cacheResponse {
    final local$cacheResponse = _instance.cacheResponse;
    return CopyWith$Fragment$GptPromptFields$cacheResponse(
        local$cacheResponse, (e) => call(cacheResponse: e));
  }
}

class _CopyWithStubImpl$Fragment$GptPromptFields<TRes>
    implements CopyWith$Fragment$GptPromptFields<TRes> {
  _CopyWithStubImpl$Fragment$GptPromptFields(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$GptPromptFields$cacheResponse? cacheResponse,
    String? editedResponse,
    String? greWordId,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$GptPromptFields$cacheResponse<TRes> get cacheResponse =>
      CopyWith$Fragment$GptPromptFields$cacheResponse.stub(_res);
}

const fragmentDefinitionGptPromptFields = FragmentDefinitionNode(
  name: NameNode(value: 'GptPromptFields'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'GptPrompt'),
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
      name: NameNode(value: 'cacheResponse'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'cachePrompt'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'text'),
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
          name: NameNode(value: 'cacheWord'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'text'),
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
          name: NameNode(value: 'text'),
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
);
const documentNodeFragmentGptPromptFields = DocumentNode(definitions: [
  fragmentDefinitionGptPromptFields,
]);

extension ClientExtension$Fragment$GptPromptFields on graphql.GraphQLClient {
  void writeFragment$GptPromptFields({
    required Fragment$GptPromptFields data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'GptPromptFields',
            document: documentNodeFragmentGptPromptFields,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$GptPromptFields? readFragment$GptPromptFields({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'GptPromptFields',
          document: documentNodeFragmentGptPromptFields,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$GptPromptFields.fromJson(result);
  }
}

class Fragment$GptPromptFields$cacheResponse {
  Fragment$GptPromptFields$cacheResponse({
    required this.cachePrompt,
    required this.cacheWord,
    required this.text,
    this.$__typename = 'CacheResponse',
  });

  factory Fragment$GptPromptFields$cacheResponse.fromJson(
      Map<String, dynamic> json) {
    final l$cachePrompt = json['cachePrompt'];
    final l$cacheWord = json['cacheWord'];
    final l$text = json['text'];
    final l$$__typename = json['__typename'];
    return Fragment$GptPromptFields$cacheResponse(
      cachePrompt: Fragment$GptPromptFields$cacheResponse$cachePrompt.fromJson(
          (l$cachePrompt as Map<String, dynamic>)),
      cacheWord: Fragment$GptPromptFields$cacheResponse$cacheWord.fromJson(
          (l$cacheWord as Map<String, dynamic>)),
      text: (l$text as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$GptPromptFields$cacheResponse$cachePrompt cachePrompt;

  final Fragment$GptPromptFields$cacheResponse$cacheWord cacheWord;

  final String text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cachePrompt = cachePrompt;
    _resultData['cachePrompt'] = l$cachePrompt.toJson();
    final l$cacheWord = cacheWord;
    _resultData['cacheWord'] = l$cacheWord.toJson();
    final l$text = text;
    _resultData['text'] = l$text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cachePrompt = cachePrompt;
    final l$cacheWord = cacheWord;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cachePrompt,
      l$cacheWord,
      l$text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$GptPromptFields$cacheResponse) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cachePrompt = cachePrompt;
    final lOther$cachePrompt = other.cachePrompt;
    if (l$cachePrompt != lOther$cachePrompt) {
      return false;
    }
    final l$cacheWord = cacheWord;
    final lOther$cacheWord = other.cacheWord;
    if (l$cacheWord != lOther$cacheWord) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Fragment$GptPromptFields$cacheResponse
    on Fragment$GptPromptFields$cacheResponse {
  CopyWith$Fragment$GptPromptFields$cacheResponse<
          Fragment$GptPromptFields$cacheResponse>
      get copyWith => CopyWith$Fragment$GptPromptFields$cacheResponse(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$GptPromptFields$cacheResponse<TRes> {
  factory CopyWith$Fragment$GptPromptFields$cacheResponse(
    Fragment$GptPromptFields$cacheResponse instance,
    TRes Function(Fragment$GptPromptFields$cacheResponse) then,
  ) = _CopyWithImpl$Fragment$GptPromptFields$cacheResponse;

  factory CopyWith$Fragment$GptPromptFields$cacheResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse;

  TRes call({
    Fragment$GptPromptFields$cacheResponse$cachePrompt? cachePrompt,
    Fragment$GptPromptFields$cacheResponse$cacheWord? cacheWord,
    String? text,
    String? $__typename,
  });
  CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt<TRes>
      get cachePrompt;
  CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord<TRes> get cacheWord;
}

class _CopyWithImpl$Fragment$GptPromptFields$cacheResponse<TRes>
    implements CopyWith$Fragment$GptPromptFields$cacheResponse<TRes> {
  _CopyWithImpl$Fragment$GptPromptFields$cacheResponse(
    this._instance,
    this._then,
  );

  final Fragment$GptPromptFields$cacheResponse _instance;

  final TRes Function(Fragment$GptPromptFields$cacheResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cachePrompt = _undefined,
    Object? cacheWord = _undefined,
    Object? text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GptPromptFields$cacheResponse(
        cachePrompt: cachePrompt == _undefined || cachePrompt == null
            ? _instance.cachePrompt
            : (cachePrompt
                as Fragment$GptPromptFields$cacheResponse$cachePrompt),
        cacheWord: cacheWord == _undefined || cacheWord == null
            ? _instance.cacheWord
            : (cacheWord as Fragment$GptPromptFields$cacheResponse$cacheWord),
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt<TRes>
      get cachePrompt {
    final local$cachePrompt = _instance.cachePrompt;
    return CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt(
        local$cachePrompt, (e) => call(cachePrompt: e));
  }

  CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord<TRes>
      get cacheWord {
    final local$cacheWord = _instance.cacheWord;
    return CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord(
        local$cacheWord, (e) => call(cacheWord: e));
  }
}

class _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse<TRes>
    implements CopyWith$Fragment$GptPromptFields$cacheResponse<TRes> {
  _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse(this._res);

  TRes _res;

  call({
    Fragment$GptPromptFields$cacheResponse$cachePrompt? cachePrompt,
    Fragment$GptPromptFields$cacheResponse$cacheWord? cacheWord,
    String? text,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt<TRes>
      get cachePrompt =>
          CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt.stub(
              _res);

  CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord<TRes>
      get cacheWord =>
          CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord.stub(_res);
}

class Fragment$GptPromptFields$cacheResponse$cachePrompt {
  Fragment$GptPromptFields$cacheResponse$cachePrompt({
    required this.text,
    this.$__typename = 'CachePrompt',
  });

  factory Fragment$GptPromptFields$cacheResponse$cachePrompt.fromJson(
      Map<String, dynamic> json) {
    final l$text = json['text'];
    final l$$__typename = json['__typename'];
    return Fragment$GptPromptFields$cacheResponse$cachePrompt(
      text: (l$text as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$text = text;
    _resultData['text'] = l$text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$GptPromptFields$cacheResponse$cachePrompt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Fragment$GptPromptFields$cacheResponse$cachePrompt
    on Fragment$GptPromptFields$cacheResponse$cachePrompt {
  CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt<
          Fragment$GptPromptFields$cacheResponse$cachePrompt>
      get copyWith =>
          CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt<
    TRes> {
  factory CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt(
    Fragment$GptPromptFields$cacheResponse$cachePrompt instance,
    TRes Function(Fragment$GptPromptFields$cacheResponse$cachePrompt) then,
  ) = _CopyWithImpl$Fragment$GptPromptFields$cacheResponse$cachePrompt;

  factory CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse$cachePrompt;

  TRes call({
    String? text,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$GptPromptFields$cacheResponse$cachePrompt<TRes>
    implements
        CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt<TRes> {
  _CopyWithImpl$Fragment$GptPromptFields$cacheResponse$cachePrompt(
    this._instance,
    this._then,
  );

  final Fragment$GptPromptFields$cacheResponse$cachePrompt _instance;

  final TRes Function(Fragment$GptPromptFields$cacheResponse$cachePrompt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GptPromptFields$cacheResponse$cachePrompt(
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse$cachePrompt<TRes>
    implements
        CopyWith$Fragment$GptPromptFields$cacheResponse$cachePrompt<TRes> {
  _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse$cachePrompt(
      this._res);

  TRes _res;

  call({
    String? text,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$GptPromptFields$cacheResponse$cacheWord {
  Fragment$GptPromptFields$cacheResponse$cacheWord({
    required this.text,
    this.$__typename = 'CacheWord',
  });

  factory Fragment$GptPromptFields$cacheResponse$cacheWord.fromJson(
      Map<String, dynamic> json) {
    final l$text = json['text'];
    final l$$__typename = json['__typename'];
    return Fragment$GptPromptFields$cacheResponse$cacheWord(
      text: (l$text as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$text = text;
    _resultData['text'] = l$text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$GptPromptFields$cacheResponse$cacheWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Fragment$GptPromptFields$cacheResponse$cacheWord
    on Fragment$GptPromptFields$cacheResponse$cacheWord {
  CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord<
          Fragment$GptPromptFields$cacheResponse$cacheWord>
      get copyWith => CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord<TRes> {
  factory CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord(
    Fragment$GptPromptFields$cacheResponse$cacheWord instance,
    TRes Function(Fragment$GptPromptFields$cacheResponse$cacheWord) then,
  ) = _CopyWithImpl$Fragment$GptPromptFields$cacheResponse$cacheWord;

  factory CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse$cacheWord;

  TRes call({
    String? text,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$GptPromptFields$cacheResponse$cacheWord<TRes>
    implements CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord<TRes> {
  _CopyWithImpl$Fragment$GptPromptFields$cacheResponse$cacheWord(
    this._instance,
    this._then,
  );

  final Fragment$GptPromptFields$cacheResponse$cacheWord _instance;

  final TRes Function(Fragment$GptPromptFields$cacheResponse$cacheWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GptPromptFields$cacheResponse$cacheWord(
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse$cacheWord<TRes>
    implements CopyWith$Fragment$GptPromptFields$cacheResponse$cacheWord<TRes> {
  _CopyWithStubImpl$Fragment$GptPromptFields$cacheResponse$cacheWord(this._res);

  TRes _res;

  call({
    String? text,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$GreWordFields {
  Fragment$GreWordFields({
    required this.id,
    required this.cacheWord,
    required this.status,
    required this.gptPrompts,
    this.greWordTags,
    this.$__typename = 'GreWord',
  });

  factory Fragment$GreWordFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$cacheWord = json['cacheWord'];
    final l$status = json['status'];
    final l$gptPrompts = json['gptPrompts'];
    final l$greWordTags = json['greWordTags'];
    final l$$__typename = json['__typename'];
    return Fragment$GreWordFields(
      id: (l$id as String),
      cacheWord: Fragment$GreWordFields$cacheWord.fromJson(
          (l$cacheWord as Map<String, dynamic>)),
      status: fromJson$Enum$GreWordStatus((l$status as String)),
      gptPrompts: (l$gptPrompts as List<dynamic>)
          .map((e) =>
              Fragment$GptPromptFields.fromJson((e as Map<String, dynamic>)))
          .toList(),
      greWordTags: (l$greWordTags as List<dynamic>?)
          ?.map((e) => Fragment$GreWordFields$greWordTags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$GreWordFields$cacheWord cacheWord;

  final Enum$GreWordStatus status;

  final List<Fragment$GptPromptFields> gptPrompts;

  final List<Fragment$GreWordFields$greWordTags>? greWordTags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$cacheWord = cacheWord;
    _resultData['cacheWord'] = l$cacheWord.toJson();
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
    final l$cacheWord = cacheWord;
    final l$status = status;
    final l$gptPrompts = gptPrompts;
    final l$greWordTags = greWordTags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$cacheWord,
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
    final l$cacheWord = cacheWord;
    final lOther$cacheWord = other.cacheWord;
    if (l$cacheWord != lOther$cacheWord) {
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
    Fragment$GreWordFields$cacheWord? cacheWord,
    Enum$GreWordStatus? status,
    List<Fragment$GptPromptFields>? gptPrompts,
    List<Fragment$GreWordFields$greWordTags>? greWordTags,
    String? $__typename,
  });
  CopyWith$Fragment$GreWordFields$cacheWord<TRes> get cacheWord;
  TRes gptPrompts(
      Iterable<Fragment$GptPromptFields> Function(
              Iterable<
                  CopyWith$Fragment$GptPromptFields<Fragment$GptPromptFields>>)
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
    Object? cacheWord = _undefined,
    Object? status = _undefined,
    Object? gptPrompts = _undefined,
    Object? greWordTags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GreWordFields(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        cacheWord: cacheWord == _undefined || cacheWord == null
            ? _instance.cacheWord
            : (cacheWord as Fragment$GreWordFields$cacheWord),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$GreWordStatus),
        gptPrompts: gptPrompts == _undefined || gptPrompts == null
            ? _instance.gptPrompts
            : (gptPrompts as List<Fragment$GptPromptFields>),
        greWordTags: greWordTags == _undefined
            ? _instance.greWordTags
            : (greWordTags as List<Fragment$GreWordFields$greWordTags>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$GreWordFields$cacheWord<TRes> get cacheWord {
    final local$cacheWord = _instance.cacheWord;
    return CopyWith$Fragment$GreWordFields$cacheWord(
        local$cacheWord, (e) => call(cacheWord: e));
  }

  TRes gptPrompts(
          Iterable<Fragment$GptPromptFields> Function(
                  Iterable<
                      CopyWith$Fragment$GptPromptFields<
                          Fragment$GptPromptFields>>)
              _fn) =>
      call(
          gptPrompts: _fn(
              _instance.gptPrompts.map((e) => CopyWith$Fragment$GptPromptFields(
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
    Fragment$GreWordFields$cacheWord? cacheWord,
    Enum$GreWordStatus? status,
    List<Fragment$GptPromptFields>? gptPrompts,
    List<Fragment$GreWordFields$greWordTags>? greWordTags,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$GreWordFields$cacheWord<TRes> get cacheWord =>
      CopyWith$Fragment$GreWordFields$cacheWord.stub(_res);

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
      name: NameNode(value: 'cacheWord'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'text'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'pronunciationAudioUrl'),
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
        FragmentSpreadNode(
          name: NameNode(value: 'GptPromptFields'),
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
  fragmentDefinitionGptPromptFields,
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

class Fragment$GreWordFields$cacheWord {
  Fragment$GreWordFields$cacheWord({
    required this.text,
    this.pronunciationAudioUrl,
    this.$__typename = 'CacheWord',
  });

  factory Fragment$GreWordFields$cacheWord.fromJson(Map<String, dynamic> json) {
    final l$text = json['text'];
    final l$pronunciationAudioUrl = json['pronunciationAudioUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$GreWordFields$cacheWord(
      text: (l$text as String),
      pronunciationAudioUrl: (l$pronunciationAudioUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String text;

  final String? pronunciationAudioUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$text = text;
    _resultData['text'] = l$text;
    final l$pronunciationAudioUrl = pronunciationAudioUrl;
    _resultData['pronunciationAudioUrl'] = l$pronunciationAudioUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$text = text;
    final l$pronunciationAudioUrl = pronunciationAudioUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$text,
      l$pronunciationAudioUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$GreWordFields$cacheWord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$pronunciationAudioUrl = pronunciationAudioUrl;
    final lOther$pronunciationAudioUrl = other.pronunciationAudioUrl;
    if (l$pronunciationAudioUrl != lOther$pronunciationAudioUrl) {
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

extension UtilityExtension$Fragment$GreWordFields$cacheWord
    on Fragment$GreWordFields$cacheWord {
  CopyWith$Fragment$GreWordFields$cacheWord<Fragment$GreWordFields$cacheWord>
      get copyWith => CopyWith$Fragment$GreWordFields$cacheWord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$GreWordFields$cacheWord<TRes> {
  factory CopyWith$Fragment$GreWordFields$cacheWord(
    Fragment$GreWordFields$cacheWord instance,
    TRes Function(Fragment$GreWordFields$cacheWord) then,
  ) = _CopyWithImpl$Fragment$GreWordFields$cacheWord;

  factory CopyWith$Fragment$GreWordFields$cacheWord.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GreWordFields$cacheWord;

  TRes call({
    String? text,
    String? pronunciationAudioUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$GreWordFields$cacheWord<TRes>
    implements CopyWith$Fragment$GreWordFields$cacheWord<TRes> {
  _CopyWithImpl$Fragment$GreWordFields$cacheWord(
    this._instance,
    this._then,
  );

  final Fragment$GreWordFields$cacheWord _instance;

  final TRes Function(Fragment$GreWordFields$cacheWord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? text = _undefined,
    Object? pronunciationAudioUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$GreWordFields$cacheWord(
        text: text == _undefined || text == null
            ? _instance.text
            : (text as String),
        pronunciationAudioUrl: pronunciationAudioUrl == _undefined
            ? _instance.pronunciationAudioUrl
            : (pronunciationAudioUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$GreWordFields$cacheWord<TRes>
    implements CopyWith$Fragment$GreWordFields$cacheWord<TRes> {
  _CopyWithStubImpl$Fragment$GreWordFields$cacheWord(this._res);

  TRes _res;

  call({
    String? text,
    String? pronunciationAudioUrl,
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

class Variables$Query$GreWords {
  factory Variables$Query$GreWords({
    Input$GreWordWhereInput? where,
    int? skip,
    int? take,
    List<Input$GreWordOrderByWithRelationInput?>? orderBy,
  }) =>
      Variables$Query$GreWords._({
        if (where != null) r'where': where,
        if (skip != null) r'skip': skip,
        if (take != null) r'take': take,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$GreWords._(this._$data);

  factory Variables$Query$GreWords.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$GreWords._(result$data);
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

  CopyWith$Variables$Query$GreWords<Variables$Query$GreWords> get copyWith =>
      CopyWith$Variables$Query$GreWords(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GreWords) ||
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

abstract class CopyWith$Variables$Query$GreWords<TRes> {
  factory CopyWith$Variables$Query$GreWords(
    Variables$Query$GreWords instance,
    TRes Function(Variables$Query$GreWords) then,
  ) = _CopyWithImpl$Variables$Query$GreWords;

  factory CopyWith$Variables$Query$GreWords.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GreWords;

  TRes call({
    Input$GreWordWhereInput? where,
    int? skip,
    int? take,
    List<Input$GreWordOrderByWithRelationInput?>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$GreWords<TRes>
    implements CopyWith$Variables$Query$GreWords<TRes> {
  _CopyWithImpl$Variables$Query$GreWords(
    this._instance,
    this._then,
  );

  final Variables$Query$GreWords _instance;

  final TRes Function(Variables$Query$GreWords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? skip = _undefined,
    Object? take = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$GreWords._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$GreWordWhereInput?),
        if (skip != _undefined) 'skip': (skip as int?),
        if (take != _undefined) 'take': (take as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$GreWordOrderByWithRelationInput?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GreWords<TRes>
    implements CopyWith$Variables$Query$GreWords<TRes> {
  _CopyWithStubImpl$Variables$Query$GreWords(this._res);

  TRes _res;

  call({
    Input$GreWordWhereInput? where,
    int? skip,
    int? take,
    List<Input$GreWordOrderByWithRelationInput?>? orderBy,
  }) =>
      _res;
}

class Query$GreWords {
  Query$GreWords({
    required this.greWords,
    required this.greWordsCount,
    this.$__typename = 'Query',
  });

  factory Query$GreWords.fromJson(Map<String, dynamic> json) {
    final l$greWords = json['greWords'];
    final l$greWordsCount = json['greWordsCount'];
    final l$$__typename = json['__typename'];
    return Query$GreWords(
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
    if (!(other is Query$GreWords) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GreWords on Query$GreWords {
  CopyWith$Query$GreWords<Query$GreWords> get copyWith =>
      CopyWith$Query$GreWords(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GreWords<TRes> {
  factory CopyWith$Query$GreWords(
    Query$GreWords instance,
    TRes Function(Query$GreWords) then,
  ) = _CopyWithImpl$Query$GreWords;

  factory CopyWith$Query$GreWords.stub(TRes res) =
      _CopyWithStubImpl$Query$GreWords;

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

class _CopyWithImpl$Query$GreWords<TRes>
    implements CopyWith$Query$GreWords<TRes> {
  _CopyWithImpl$Query$GreWords(
    this._instance,
    this._then,
  );

  final Query$GreWords _instance;

  final TRes Function(Query$GreWords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? greWords = _undefined,
    Object? greWordsCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GreWords(
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

class _CopyWithStubImpl$Query$GreWords<TRes>
    implements CopyWith$Query$GreWords<TRes> {
  _CopyWithStubImpl$Query$GreWords(this._res);

  TRes _res;

  call({
    List<Fragment$GreWordFields>? greWords,
    int? greWordsCount,
    String? $__typename,
  }) =>
      _res;

  greWords(_fn) => _res;
}

const documentNodeQueryGreWords = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GreWords'),
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
  fragmentDefinitionGptPromptFields,
]);
Query$GreWords _parserFn$Query$GreWords(Map<String, dynamic> data) =>
    Query$GreWords.fromJson(data);
typedef OnQueryComplete$Query$GreWords = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GreWords?,
);

class Options$Query$GreWords extends graphql.QueryOptions<Query$GreWords> {
  Options$Query$GreWords({
    String? operationName,
    Variables$Query$GreWords? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GreWords? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GreWords? onComplete,
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
                    data == null ? null : _parserFn$Query$GreWords(data),
                  ),
          onError: onError,
          document: documentNodeQueryGreWords,
          parserFn: _parserFn$Query$GreWords,
        );

  final OnQueryComplete$Query$GreWords? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GreWords
    extends graphql.WatchQueryOptions<Query$GreWords> {
  WatchOptions$Query$GreWords({
    String? operationName,
    Variables$Query$GreWords? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GreWords? typedOptimisticResult,
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
          document: documentNodeQueryGreWords,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GreWords,
        );
}

class FetchMoreOptions$Query$GreWords extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GreWords({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GreWords? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGreWords,
        );
}

extension ClientExtension$Query$GreWords on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GreWords>> query$GreWords(
          [Options$Query$GreWords? options]) async =>
      await this.query(options ?? Options$Query$GreWords());
  graphql.ObservableQuery<Query$GreWords> watchQuery$GreWords(
          [WatchOptions$Query$GreWords? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GreWords());
  void writeQuery$GreWords({
    required Query$GreWords data,
    Variables$Query$GreWords? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGreWords),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GreWords? readQuery$GreWords({
    Variables$Query$GreWords? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGreWords),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GreWords.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GreWords> useQuery$GreWords(
        [Options$Query$GreWords? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GreWords());
graphql.ObservableQuery<Query$GreWords> useWatchQuery$GreWords(
        [WatchOptions$Query$GreWords? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GreWords());

class Query$GreWords$Widget extends graphql_flutter.Query<Query$GreWords> {
  Query$GreWords$Widget({
    widgets.Key? key,
    Options$Query$GreWords? options,
    required graphql_flutter.QueryBuilder<Query$GreWords> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GreWords(),
          builder: builder,
        );
}

class Variables$Query$GreWordTags {
  factory Variables$Query$GreWordTags({Input$GreWordTagWhereInput? where}) =>
      Variables$Query$GreWordTags._({
        if (where != null) r'where': where,
      });

  Variables$Query$GreWordTags._(this._$data);

  factory Variables$Query$GreWordTags.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$GreWordTagWhereInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Variables$Query$GreWordTags._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GreWordTagWhereInput? get where =>
      (_$data['where'] as Input$GreWordTagWhereInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GreWordTags<Variables$Query$GreWordTags>
      get copyWith => CopyWith$Variables$Query$GreWordTags(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GreWordTags) ||
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

abstract class CopyWith$Variables$Query$GreWordTags<TRes> {
  factory CopyWith$Variables$Query$GreWordTags(
    Variables$Query$GreWordTags instance,
    TRes Function(Variables$Query$GreWordTags) then,
  ) = _CopyWithImpl$Variables$Query$GreWordTags;

  factory CopyWith$Variables$Query$GreWordTags.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GreWordTags;

  TRes call({Input$GreWordTagWhereInput? where});
}

class _CopyWithImpl$Variables$Query$GreWordTags<TRes>
    implements CopyWith$Variables$Query$GreWordTags<TRes> {
  _CopyWithImpl$Variables$Query$GreWordTags(
    this._instance,
    this._then,
  );

  final Variables$Query$GreWordTags _instance;

  final TRes Function(Variables$Query$GreWordTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined}) =>
      _then(Variables$Query$GreWordTags._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$GreWordTagWhereInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GreWordTags<TRes>
    implements CopyWith$Variables$Query$GreWordTags<TRes> {
  _CopyWithStubImpl$Variables$Query$GreWordTags(this._res);

  TRes _res;

  call({Input$GreWordTagWhereInput? where}) => _res;
}

class Query$GreWordTags {
  Query$GreWordTags({
    required this.greWordTags,
    this.$__typename = 'Query',
  });

  factory Query$GreWordTags.fromJson(Map<String, dynamic> json) {
    final l$greWordTags = json['greWordTags'];
    final l$$__typename = json['__typename'];
    return Query$GreWordTags(
      greWordTags: (l$greWordTags as List<dynamic>)
          .map((e) => Query$GreWordTags$greWordTags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GreWordTags$greWordTags> greWordTags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$greWordTags = greWordTags;
    _resultData['greWordTags'] = l$greWordTags.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$greWordTags = greWordTags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$greWordTags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GreWordTags) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$greWordTags = greWordTags;
    final lOther$greWordTags = other.greWordTags;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GreWordTags on Query$GreWordTags {
  CopyWith$Query$GreWordTags<Query$GreWordTags> get copyWith =>
      CopyWith$Query$GreWordTags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GreWordTags<TRes> {
  factory CopyWith$Query$GreWordTags(
    Query$GreWordTags instance,
    TRes Function(Query$GreWordTags) then,
  ) = _CopyWithImpl$Query$GreWordTags;

  factory CopyWith$Query$GreWordTags.stub(TRes res) =
      _CopyWithStubImpl$Query$GreWordTags;

  TRes call({
    List<Query$GreWordTags$greWordTags>? greWordTags,
    String? $__typename,
  });
  TRes greWordTags(
      Iterable<Query$GreWordTags$greWordTags> Function(
              Iterable<
                  CopyWith$Query$GreWordTags$greWordTags<
                      Query$GreWordTags$greWordTags>>)
          _fn);
}

class _CopyWithImpl$Query$GreWordTags<TRes>
    implements CopyWith$Query$GreWordTags<TRes> {
  _CopyWithImpl$Query$GreWordTags(
    this._instance,
    this._then,
  );

  final Query$GreWordTags _instance;

  final TRes Function(Query$GreWordTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? greWordTags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GreWordTags(
        greWordTags: greWordTags == _undefined || greWordTags == null
            ? _instance.greWordTags
            : (greWordTags as List<Query$GreWordTags$greWordTags>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes greWordTags(
          Iterable<Query$GreWordTags$greWordTags> Function(
                  Iterable<
                      CopyWith$Query$GreWordTags$greWordTags<
                          Query$GreWordTags$greWordTags>>)
              _fn) =>
      call(
          greWordTags: _fn(_instance.greWordTags
              .map((e) => CopyWith$Query$GreWordTags$greWordTags(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GreWordTags<TRes>
    implements CopyWith$Query$GreWordTags<TRes> {
  _CopyWithStubImpl$Query$GreWordTags(this._res);

  TRes _res;

  call({
    List<Query$GreWordTags$greWordTags>? greWordTags,
    String? $__typename,
  }) =>
      _res;

  greWordTags(_fn) => _res;
}

const documentNodeQueryGreWordTags = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GreWordTags'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'GreWordTagWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'greWordTags'),
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
Query$GreWordTags _parserFn$Query$GreWordTags(Map<String, dynamic> data) =>
    Query$GreWordTags.fromJson(data);
typedef OnQueryComplete$Query$GreWordTags = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GreWordTags?,
);

class Options$Query$GreWordTags
    extends graphql.QueryOptions<Query$GreWordTags> {
  Options$Query$GreWordTags({
    String? operationName,
    Variables$Query$GreWordTags? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GreWordTags? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GreWordTags? onComplete,
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
                    data == null ? null : _parserFn$Query$GreWordTags(data),
                  ),
          onError: onError,
          document: documentNodeQueryGreWordTags,
          parserFn: _parserFn$Query$GreWordTags,
        );

  final OnQueryComplete$Query$GreWordTags? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GreWordTags
    extends graphql.WatchQueryOptions<Query$GreWordTags> {
  WatchOptions$Query$GreWordTags({
    String? operationName,
    Variables$Query$GreWordTags? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GreWordTags? typedOptimisticResult,
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
          document: documentNodeQueryGreWordTags,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GreWordTags,
        );
}

class FetchMoreOptions$Query$GreWordTags extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GreWordTags({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GreWordTags? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGreWordTags,
        );
}

extension ClientExtension$Query$GreWordTags on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GreWordTags>> query$GreWordTags(
          [Options$Query$GreWordTags? options]) async =>
      await this.query(options ?? Options$Query$GreWordTags());
  graphql.ObservableQuery<Query$GreWordTags> watchQuery$GreWordTags(
          [WatchOptions$Query$GreWordTags? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GreWordTags());
  void writeQuery$GreWordTags({
    required Query$GreWordTags data,
    Variables$Query$GreWordTags? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGreWordTags),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GreWordTags? readQuery$GreWordTags({
    Variables$Query$GreWordTags? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGreWordTags),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GreWordTags.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GreWordTags> useQuery$GreWordTags(
        [Options$Query$GreWordTags? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GreWordTags());
graphql.ObservableQuery<Query$GreWordTags> useWatchQuery$GreWordTags(
        [WatchOptions$Query$GreWordTags? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GreWordTags());

class Query$GreWordTags$Widget
    extends graphql_flutter.Query<Query$GreWordTags> {
  Query$GreWordTags$Widget({
    widgets.Key? key,
    Options$Query$GreWordTags? options,
    required graphql_flutter.QueryBuilder<Query$GreWordTags> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GreWordTags(),
          builder: builder,
        );
}

class Query$GreWordTags$greWordTags {
  Query$GreWordTags$greWordTags({
    required this.id,
    required this.name,
    this.$__typename = 'GreWordTag',
  });

  factory Query$GreWordTags$greWordTags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GreWordTags$greWordTags(
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
    if (!(other is Query$GreWordTags$greWordTags) ||
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

extension UtilityExtension$Query$GreWordTags$greWordTags
    on Query$GreWordTags$greWordTags {
  CopyWith$Query$GreWordTags$greWordTags<Query$GreWordTags$greWordTags>
      get copyWith => CopyWith$Query$GreWordTags$greWordTags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GreWordTags$greWordTags<TRes> {
  factory CopyWith$Query$GreWordTags$greWordTags(
    Query$GreWordTags$greWordTags instance,
    TRes Function(Query$GreWordTags$greWordTags) then,
  ) = _CopyWithImpl$Query$GreWordTags$greWordTags;

  factory CopyWith$Query$GreWordTags$greWordTags.stub(TRes res) =
      _CopyWithStubImpl$Query$GreWordTags$greWordTags;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GreWordTags$greWordTags<TRes>
    implements CopyWith$Query$GreWordTags$greWordTags<TRes> {
  _CopyWithImpl$Query$GreWordTags$greWordTags(
    this._instance,
    this._then,
  );

  final Query$GreWordTags$greWordTags _instance;

  final TRes Function(Query$GreWordTags$greWordTags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GreWordTags$greWordTags(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GreWordTags$greWordTags<TRes>
    implements CopyWith$Query$GreWordTags$greWordTags<TRes> {
  _CopyWithStubImpl$Query$GreWordTags$greWordTags(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteGreWordTag {
  factory Variables$Mutation$DeleteGreWordTag({
    required String name,
    required String userId,
  }) =>
      Variables$Mutation$DeleteGreWordTag._({
        r'name': name,
        r'userId': userId,
      });

  Variables$Mutation$DeleteGreWordTag._(this._$data);

  factory Variables$Mutation$DeleteGreWordTag.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Mutation$DeleteGreWordTag._(result$data);
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

  CopyWith$Variables$Mutation$DeleteGreWordTag<
          Variables$Mutation$DeleteGreWordTag>
      get copyWith => CopyWith$Variables$Mutation$DeleteGreWordTag(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteGreWordTag) ||
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

abstract class CopyWith$Variables$Mutation$DeleteGreWordTag<TRes> {
  factory CopyWith$Variables$Mutation$DeleteGreWordTag(
    Variables$Mutation$DeleteGreWordTag instance,
    TRes Function(Variables$Mutation$DeleteGreWordTag) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteGreWordTag;

  factory CopyWith$Variables$Mutation$DeleteGreWordTag.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteGreWordTag;

  TRes call({
    String? name,
    String? userId,
  });
}

class _CopyWithImpl$Variables$Mutation$DeleteGreWordTag<TRes>
    implements CopyWith$Variables$Mutation$DeleteGreWordTag<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteGreWordTag(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteGreWordTag _instance;

  final TRes Function(Variables$Mutation$DeleteGreWordTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Mutation$DeleteGreWordTag._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteGreWordTag<TRes>
    implements CopyWith$Variables$Mutation$DeleteGreWordTag<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteGreWordTag(this._res);

  TRes _res;

  call({
    String? name,
    String? userId,
  }) =>
      _res;
}

class Mutation$DeleteGreWordTag {
  Mutation$DeleteGreWordTag({
    required this.deleteGreWordTag,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteGreWordTag.fromJson(Map<String, dynamic> json) {
    final l$deleteGreWordTag = json['deleteGreWordTag'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteGreWordTag(
      deleteGreWordTag: Mutation$DeleteGreWordTag$deleteGreWordTag.fromJson(
          (l$deleteGreWordTag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteGreWordTag$deleteGreWordTag deleteGreWordTag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteGreWordTag = deleteGreWordTag;
    _resultData['deleteGreWordTag'] = l$deleteGreWordTag.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteGreWordTag = deleteGreWordTag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteGreWordTag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteGreWordTag) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteGreWordTag = deleteGreWordTag;
    final lOther$deleteGreWordTag = other.deleteGreWordTag;
    if (l$deleteGreWordTag != lOther$deleteGreWordTag) {
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

extension UtilityExtension$Mutation$DeleteGreWordTag
    on Mutation$DeleteGreWordTag {
  CopyWith$Mutation$DeleteGreWordTag<Mutation$DeleteGreWordTag> get copyWith =>
      CopyWith$Mutation$DeleteGreWordTag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteGreWordTag<TRes> {
  factory CopyWith$Mutation$DeleteGreWordTag(
    Mutation$DeleteGreWordTag instance,
    TRes Function(Mutation$DeleteGreWordTag) then,
  ) = _CopyWithImpl$Mutation$DeleteGreWordTag;

  factory CopyWith$Mutation$DeleteGreWordTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteGreWordTag;

  TRes call({
    Mutation$DeleteGreWordTag$deleteGreWordTag? deleteGreWordTag,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag<TRes>
      get deleteGreWordTag;
}

class _CopyWithImpl$Mutation$DeleteGreWordTag<TRes>
    implements CopyWith$Mutation$DeleteGreWordTag<TRes> {
  _CopyWithImpl$Mutation$DeleteGreWordTag(
    this._instance,
    this._then,
  );

  final Mutation$DeleteGreWordTag _instance;

  final TRes Function(Mutation$DeleteGreWordTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteGreWordTag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteGreWordTag(
        deleteGreWordTag: deleteGreWordTag == _undefined ||
                deleteGreWordTag == null
            ? _instance.deleteGreWordTag
            : (deleteGreWordTag as Mutation$DeleteGreWordTag$deleteGreWordTag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag<TRes>
      get deleteGreWordTag {
    final local$deleteGreWordTag = _instance.deleteGreWordTag;
    return CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag(
        local$deleteGreWordTag, (e) => call(deleteGreWordTag: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteGreWordTag<TRes>
    implements CopyWith$Mutation$DeleteGreWordTag<TRes> {
  _CopyWithStubImpl$Mutation$DeleteGreWordTag(this._res);

  TRes _res;

  call({
    Mutation$DeleteGreWordTag$deleteGreWordTag? deleteGreWordTag,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag<TRes>
      get deleteGreWordTag =>
          CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag.stub(_res);
}

const documentNodeMutationDeleteGreWordTag = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteGreWordTag'),
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
        name: NameNode(value: 'deleteGreWordTag'),
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
Mutation$DeleteGreWordTag _parserFn$Mutation$DeleteGreWordTag(
        Map<String, dynamic> data) =>
    Mutation$DeleteGreWordTag.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteGreWordTag = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteGreWordTag?,
);

class Options$Mutation$DeleteGreWordTag
    extends graphql.MutationOptions<Mutation$DeleteGreWordTag> {
  Options$Mutation$DeleteGreWordTag({
    String? operationName,
    required Variables$Mutation$DeleteGreWordTag variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWordTag? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteGreWordTag? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteGreWordTag>? update,
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
                        : _parserFn$Mutation$DeleteGreWordTag(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteGreWordTag,
          parserFn: _parserFn$Mutation$DeleteGreWordTag,
        );

  final OnMutationCompleted$Mutation$DeleteGreWordTag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteGreWordTag
    extends graphql.WatchQueryOptions<Mutation$DeleteGreWordTag> {
  WatchOptions$Mutation$DeleteGreWordTag({
    String? operationName,
    required Variables$Mutation$DeleteGreWordTag variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWordTag? typedOptimisticResult,
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
          document: documentNodeMutationDeleteGreWordTag,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteGreWordTag,
        );
}

extension ClientExtension$Mutation$DeleteGreWordTag on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteGreWordTag>>
      mutate$DeleteGreWordTag(
              Options$Mutation$DeleteGreWordTag options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteGreWordTag>
      watchMutation$DeleteGreWordTag(
              WatchOptions$Mutation$DeleteGreWordTag options) =>
          this.watchMutation(options);
}

class Mutation$DeleteGreWordTag$HookResult {
  Mutation$DeleteGreWordTag$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteGreWordTag runMutation;

  final graphql.QueryResult<Mutation$DeleteGreWordTag> result;
}

Mutation$DeleteGreWordTag$HookResult useMutation$DeleteGreWordTag(
    [WidgetOptions$Mutation$DeleteGreWordTag? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteGreWordTag());
  return Mutation$DeleteGreWordTag$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteGreWordTag>
    useWatchMutation$DeleteGreWordTag(
            WatchOptions$Mutation$DeleteGreWordTag options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteGreWordTag
    extends graphql.MutationOptions<Mutation$DeleteGreWordTag> {
  WidgetOptions$Mutation$DeleteGreWordTag({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteGreWordTag? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteGreWordTag? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteGreWordTag>? update,
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
                        : _parserFn$Mutation$DeleteGreWordTag(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteGreWordTag,
          parserFn: _parserFn$Mutation$DeleteGreWordTag,
        );

  final OnMutationCompleted$Mutation$DeleteGreWordTag? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteGreWordTag
    = graphql.MultiSourceResult<Mutation$DeleteGreWordTag> Function(
  Variables$Mutation$DeleteGreWordTag, {
  Object? optimisticResult,
  Mutation$DeleteGreWordTag? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteGreWordTag = widgets.Widget Function(
  RunMutation$Mutation$DeleteGreWordTag,
  graphql.QueryResult<Mutation$DeleteGreWordTag>?,
);

class Mutation$DeleteGreWordTag$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteGreWordTag> {
  Mutation$DeleteGreWordTag$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteGreWordTag? options,
    required Builder$Mutation$DeleteGreWordTag builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteGreWordTag(),
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

class Mutation$DeleteGreWordTag$deleteGreWordTag {
  Mutation$DeleteGreWordTag$deleteGreWordTag({
    required this.id,
    required this.name,
    this.$__typename = 'GreWordTag',
  });

  factory Mutation$DeleteGreWordTag$deleteGreWordTag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteGreWordTag$deleteGreWordTag(
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
    if (!(other is Mutation$DeleteGreWordTag$deleteGreWordTag) ||
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

extension UtilityExtension$Mutation$DeleteGreWordTag$deleteGreWordTag
    on Mutation$DeleteGreWordTag$deleteGreWordTag {
  CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag<
          Mutation$DeleteGreWordTag$deleteGreWordTag>
      get copyWith => CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag<TRes> {
  factory CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag(
    Mutation$DeleteGreWordTag$deleteGreWordTag instance,
    TRes Function(Mutation$DeleteGreWordTag$deleteGreWordTag) then,
  ) = _CopyWithImpl$Mutation$DeleteGreWordTag$deleteGreWordTag;

  factory CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteGreWordTag$deleteGreWordTag;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteGreWordTag$deleteGreWordTag<TRes>
    implements CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag<TRes> {
  _CopyWithImpl$Mutation$DeleteGreWordTag$deleteGreWordTag(
    this._instance,
    this._then,
  );

  final Mutation$DeleteGreWordTag$deleteGreWordTag _instance;

  final TRes Function(Mutation$DeleteGreWordTag$deleteGreWordTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteGreWordTag$deleteGreWordTag(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteGreWordTag$deleteGreWordTag<TRes>
    implements CopyWith$Mutation$DeleteGreWordTag$deleteGreWordTag<TRes> {
  _CopyWithStubImpl$Mutation$DeleteGreWordTag$deleteGreWordTag(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
