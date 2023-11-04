class Input$EnumGreWordStatusFilter {
  factory Input$EnumGreWordStatusFilter({
    Enum$GreWordStatus? equals,
    List<Enum$GreWordStatus>? $in,
    Enum$GreWordStatus? not,
    List<Enum$GreWordStatus>? notIn,
  }) =>
      Input$EnumGreWordStatusFilter._({
        if (equals != null) r'equals': equals,
        if ($in != null) r'in': $in,
        if (not != null) r'not': not,
        if (notIn != null) r'notIn': notIn,
      });

  Input$EnumGreWordStatusFilter._(this._$data);

  factory Input$EnumGreWordStatusFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = l$equals == null
          ? null
          : fromJson$Enum$GreWordStatus((l$equals as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$GreWordStatus((e as String)))
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] =
          l$not == null ? null : fromJson$Enum$GreWordStatus((l$not as String));
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$GreWordStatus((e as String)))
          .toList();
    }
    return Input$EnumGreWordStatusFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$GreWordStatus? get equals => (_$data['equals'] as Enum$GreWordStatus?);

  List<Enum$GreWordStatus>? get $in =>
      (_$data['in'] as List<Enum$GreWordStatus>?);

  Enum$GreWordStatus? get not => (_$data['not'] as Enum$GreWordStatus?);

  List<Enum$GreWordStatus>? get notIn =>
      (_$data['notIn'] as List<Enum$GreWordStatus>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] =
          l$equals == null ? null : toJson$Enum$GreWordStatus(l$equals);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$GreWordStatus(e)).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] =
          l$not == null ? null : toJson$Enum$GreWordStatus(l$not);
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] =
          l$notIn?.map((e) => toJson$Enum$GreWordStatus(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$EnumGreWordStatusFilter<Input$EnumGreWordStatusFilter>
      get copyWith => CopyWith$Input$EnumGreWordStatusFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EnumGreWordStatusFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$equals = equals;
    final l$$in = $in;
    final l$not = not;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$EnumGreWordStatusFilter<TRes> {
  factory CopyWith$Input$EnumGreWordStatusFilter(
    Input$EnumGreWordStatusFilter instance,
    TRes Function(Input$EnumGreWordStatusFilter) then,
  ) = _CopyWithImpl$Input$EnumGreWordStatusFilter;

  factory CopyWith$Input$EnumGreWordStatusFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$EnumGreWordStatusFilter;

  TRes call({
    Enum$GreWordStatus? equals,
    List<Enum$GreWordStatus>? $in,
    Enum$GreWordStatus? not,
    List<Enum$GreWordStatus>? notIn,
  });
}

class _CopyWithImpl$Input$EnumGreWordStatusFilter<TRes>
    implements CopyWith$Input$EnumGreWordStatusFilter<TRes> {
  _CopyWithImpl$Input$EnumGreWordStatusFilter(
    this._instance,
    this._then,
  );

  final Input$EnumGreWordStatusFilter _instance;

  final TRes Function(Input$EnumGreWordStatusFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? equals = _undefined,
    Object? $in = _undefined,
    Object? not = _undefined,
    Object? notIn = _undefined,
  }) =>
      _then(Input$EnumGreWordStatusFilter._({
        ..._instance._$data,
        if (equals != _undefined) 'equals': (equals as Enum$GreWordStatus?),
        if ($in != _undefined) 'in': ($in as List<Enum$GreWordStatus>?),
        if (not != _undefined) 'not': (not as Enum$GreWordStatus?),
        if (notIn != _undefined) 'notIn': (notIn as List<Enum$GreWordStatus>?),
      }));
}

class _CopyWithStubImpl$Input$EnumGreWordStatusFilter<TRes>
    implements CopyWith$Input$EnumGreWordStatusFilter<TRes> {
  _CopyWithStubImpl$Input$EnumGreWordStatusFilter(this._res);

  TRes _res;

  call({
    Enum$GreWordStatus? equals,
    List<Enum$GreWordStatus>? $in,
    Enum$GreWordStatus? not,
    List<Enum$GreWordStatus>? notIn,
  }) =>
      _res;
}

class Input$GreWordOrderByWithRelationInput {
  factory Input$GreWordOrderByWithRelationInput({
    Enum$SortOrder? createdAt,
    Enum$SortOrder? id,
    Enum$SortOrder? spelling,
    Enum$SortOrder? updatedAt,
  }) =>
      Input$GreWordOrderByWithRelationInput._({
        if (createdAt != null) r'createdAt': createdAt,
        if (id != null) r'id': id,
        if (spelling != null) r'spelling': spelling,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$GreWordOrderByWithRelationInput._(this._$data);

  factory Input$GreWordOrderByWithRelationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$SortOrder((l$createdAt as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('spelling')) {
      final l$spelling = data['spelling'];
      result$data['spelling'] = l$spelling == null
          ? null
          : fromJson$Enum$SortOrder((l$spelling as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$SortOrder((l$updatedAt as String));
    }
    return Input$GreWordOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get createdAt => (_$data['createdAt'] as Enum$SortOrder?);

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);

  Enum$SortOrder? get spelling => (_$data['spelling'] as Enum$SortOrder?);

  Enum$SortOrder? get updatedAt => (_$data['updatedAt'] as Enum$SortOrder?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$SortOrder(l$createdAt);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('spelling')) {
      final l$spelling = spelling;
      result$data['spelling'] =
          l$spelling == null ? null : toJson$Enum$SortOrder(l$spelling);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$SortOrder(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$GreWordOrderByWithRelationInput<
          Input$GreWordOrderByWithRelationInput>
      get copyWith => CopyWith$Input$GreWordOrderByWithRelationInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordOrderByWithRelationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$spelling = spelling;
    final lOther$spelling = other.spelling;
    if (_$data.containsKey('spelling') !=
        other._$data.containsKey('spelling')) {
      return false;
    }
    if (l$spelling != lOther$spelling) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$id = id;
    final l$spelling = spelling;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('spelling') ? l$spelling : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$GreWordOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$GreWordOrderByWithRelationInput(
    Input$GreWordOrderByWithRelationInput instance,
    TRes Function(Input$GreWordOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$GreWordOrderByWithRelationInput;

  factory CopyWith$Input$GreWordOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GreWordOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? createdAt,
    Enum$SortOrder? id,
    Enum$SortOrder? spelling,
    Enum$SortOrder? updatedAt,
  });
}

class _CopyWithImpl$Input$GreWordOrderByWithRelationInput<TRes>
    implements CopyWith$Input$GreWordOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$GreWordOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$GreWordOrderByWithRelationInput _instance;

  final TRes Function(Input$GreWordOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? id = _undefined,
    Object? spelling = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$GreWordOrderByWithRelationInput._({
        ..._instance._$data,
        if (createdAt != _undefined)
          'createdAt': (createdAt as Enum$SortOrder?),
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (spelling != _undefined) 'spelling': (spelling as Enum$SortOrder?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$GreWordOrderByWithRelationInput<TRes>
    implements CopyWith$Input$GreWordOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$GreWordOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? createdAt,
    Enum$SortOrder? id,
    Enum$SortOrder? spelling,
    Enum$SortOrder? updatedAt,
  }) =>
      _res;
}

class Input$GreWordSearchPromptInputWhereInput {
  factory Input$GreWordSearchPromptInputWhereInput({
    Input$StringFilter? id,
    Input$StringFilter? text,
    Input$StringFilter? userId,
  }) =>
      Input$GreWordSearchPromptInputWhereInput._({
        if (id != null) r'id': id,
        if (text != null) r'text': text,
        if (userId != null) r'userId': userId,
      });

  Input$GreWordSearchPromptInputWhereInput._(this._$data);

  factory Input$GreWordSearchPromptInputWhereInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = l$text == null
          ? null
          : Input$StringFilter.fromJson((l$text as Map<String, dynamic>));
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : Input$StringFilter.fromJson((l$userId as Map<String, dynamic>));
    }
    return Input$GreWordSearchPromptInputWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFilter? get id => (_$data['id'] as Input$StringFilter?);

  Input$StringFilter? get text => (_$data['text'] as Input$StringFilter?);

  Input$StringFilter? get userId => (_$data['userId'] as Input$StringFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text?.toJson();
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GreWordSearchPromptInputWhereInput<
          Input$GreWordSearchPromptInputWhereInput>
      get copyWith => CopyWith$Input$GreWordSearchPromptInputWhereInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordSearchPromptInputWhereInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$GreWordSearchPromptInputWhereInput<TRes> {
  factory CopyWith$Input$GreWordSearchPromptInputWhereInput(
    Input$GreWordSearchPromptInputWhereInput instance,
    TRes Function(Input$GreWordSearchPromptInputWhereInput) then,
  ) = _CopyWithImpl$Input$GreWordSearchPromptInputWhereInput;

  factory CopyWith$Input$GreWordSearchPromptInputWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GreWordSearchPromptInputWhereInput;

  TRes call({
    Input$StringFilter? id,
    Input$StringFilter? text,
    Input$StringFilter? userId,
  });
  CopyWith$Input$StringFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get text;
  CopyWith$Input$StringFilter<TRes> get userId;
}

class _CopyWithImpl$Input$GreWordSearchPromptInputWhereInput<TRes>
    implements CopyWith$Input$GreWordSearchPromptInputWhereInput<TRes> {
  _CopyWithImpl$Input$GreWordSearchPromptInputWhereInput(
    this._instance,
    this._then,
  );

  final Input$GreWordSearchPromptInputWhereInput _instance;

  final TRes Function(Input$GreWordSearchPromptInputWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$GreWordSearchPromptInputWhereInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$StringFilter?),
        if (text != _undefined) 'text': (text as Input$StringFilter?),
        if (userId != _undefined) 'userId': (userId as Input$StringFilter?),
      }));

  CopyWith$Input$StringFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get text {
    final local$text = _instance.text;
    return local$text == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$text, (e) => call(text: e));
  }

  CopyWith$Input$StringFilter<TRes> get userId {
    final local$userId = _instance.userId;
    return local$userId == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$userId, (e) => call(userId: e));
  }
}

class _CopyWithStubImpl$Input$GreWordSearchPromptInputWhereInput<TRes>
    implements CopyWith$Input$GreWordSearchPromptInputWhereInput<TRes> {
  _CopyWithStubImpl$Input$GreWordSearchPromptInputWhereInput(this._res);

  TRes _res;

  call({
    Input$StringFilter? id,
    Input$StringFilter? text,
    Input$StringFilter? userId,
  }) =>
      _res;

  CopyWith$Input$StringFilter<TRes> get id =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get text =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get userId =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$GreWordSpellingUserIdCompoundUniqueInput {
  factory Input$GreWordSpellingUserIdCompoundUniqueInput({
    required String spelling,
    required String userId,
  }) =>
      Input$GreWordSpellingUserIdCompoundUniqueInput._({
        r'spelling': spelling,
        r'userId': userId,
      });

  Input$GreWordSpellingUserIdCompoundUniqueInput._(this._$data);

  factory Input$GreWordSpellingUserIdCompoundUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$spelling = data['spelling'];
    result$data['spelling'] = (l$spelling as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Input$GreWordSpellingUserIdCompoundUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get spelling => (_$data['spelling'] as String);

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$spelling = spelling;
    result$data['spelling'] = l$spelling;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput<
          Input$GreWordSpellingUserIdCompoundUniqueInput>
      get copyWith => CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordSpellingUserIdCompoundUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$spelling = spelling;
    final lOther$spelling = other.spelling;
    if (l$spelling != lOther$spelling) {
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
    final l$spelling = spelling;
    final l$userId = userId;
    return Object.hashAll([
      l$spelling,
      l$userId,
    ]);
  }
}

abstract class CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput<TRes> {
  factory CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput(
    Input$GreWordSpellingUserIdCompoundUniqueInput instance,
    TRes Function(Input$GreWordSpellingUserIdCompoundUniqueInput) then,
  ) = _CopyWithImpl$Input$GreWordSpellingUserIdCompoundUniqueInput;

  factory CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$GreWordSpellingUserIdCompoundUniqueInput;

  TRes call({
    String? spelling,
    String? userId,
  });
}

class _CopyWithImpl$Input$GreWordSpellingUserIdCompoundUniqueInput<TRes>
    implements CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput<TRes> {
  _CopyWithImpl$Input$GreWordSpellingUserIdCompoundUniqueInput(
    this._instance,
    this._then,
  );

  final Input$GreWordSpellingUserIdCompoundUniqueInput _instance;

  final TRes Function(Input$GreWordSpellingUserIdCompoundUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? spelling = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$GreWordSpellingUserIdCompoundUniqueInput._({
        ..._instance._$data,
        if (spelling != _undefined && spelling != null)
          'spelling': (spelling as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Input$GreWordSpellingUserIdCompoundUniqueInput<TRes>
    implements CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput<TRes> {
  _CopyWithStubImpl$Input$GreWordSpellingUserIdCompoundUniqueInput(this._res);

  TRes _res;

  call({
    String? spelling,
    String? userId,
  }) =>
      _res;
}

class Input$GreWordTagListRelationFilter {
  factory Input$GreWordTagListRelationFilter({
    Input$GreWordTagWhereInput? every,
    Input$GreWordTagWhereInput? none,
    Input$GreWordTagWhereInput? some,
  }) =>
      Input$GreWordTagListRelationFilter._({
        if (every != null) r'every': every,
        if (none != null) r'none': none,
        if (some != null) r'some': some,
      });

  Input$GreWordTagListRelationFilter._(this._$data);

  factory Input$GreWordTagListRelationFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('every')) {
      final l$every = data['every'];
      result$data['every'] = l$every == null
          ? null
          : Input$GreWordTagWhereInput.fromJson(
              (l$every as Map<String, dynamic>));
    }
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = l$none == null
          ? null
          : Input$GreWordTagWhereInput.fromJson(
              (l$none as Map<String, dynamic>));
    }
    if (data.containsKey('some')) {
      final l$some = data['some'];
      result$data['some'] = l$some == null
          ? null
          : Input$GreWordTagWhereInput.fromJson(
              (l$some as Map<String, dynamic>));
    }
    return Input$GreWordTagListRelationFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GreWordTagWhereInput? get every =>
      (_$data['every'] as Input$GreWordTagWhereInput?);

  Input$GreWordTagWhereInput? get none =>
      (_$data['none'] as Input$GreWordTagWhereInput?);

  Input$GreWordTagWhereInput? get some =>
      (_$data['some'] as Input$GreWordTagWhereInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('every')) {
      final l$every = every;
      result$data['every'] = l$every?.toJson();
    }
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none?.toJson();
    }
    if (_$data.containsKey('some')) {
      final l$some = some;
      result$data['some'] = l$some?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GreWordTagListRelationFilter<
          Input$GreWordTagListRelationFilter>
      get copyWith => CopyWith$Input$GreWordTagListRelationFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordTagListRelationFilter) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$every = every;
    final lOther$every = other.every;
    if (_$data.containsKey('every') != other._$data.containsKey('every')) {
      return false;
    }
    if (l$every != lOther$every) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    final l$some = some;
    final lOther$some = other.some;
    if (_$data.containsKey('some') != other._$data.containsKey('some')) {
      return false;
    }
    if (l$some != lOther$some) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$every = every;
    final l$none = none;
    final l$some = some;
    return Object.hashAll([
      _$data.containsKey('every') ? l$every : const {},
      _$data.containsKey('none') ? l$none : const {},
      _$data.containsKey('some') ? l$some : const {},
    ]);
  }
}

abstract class CopyWith$Input$GreWordTagListRelationFilter<TRes> {
  factory CopyWith$Input$GreWordTagListRelationFilter(
    Input$GreWordTagListRelationFilter instance,
    TRes Function(Input$GreWordTagListRelationFilter) then,
  ) = _CopyWithImpl$Input$GreWordTagListRelationFilter;

  factory CopyWith$Input$GreWordTagListRelationFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$GreWordTagListRelationFilter;

  TRes call({
    Input$GreWordTagWhereInput? every,
    Input$GreWordTagWhereInput? none,
    Input$GreWordTagWhereInput? some,
  });
  CopyWith$Input$GreWordTagWhereInput<TRes> get every;
  CopyWith$Input$GreWordTagWhereInput<TRes> get none;
  CopyWith$Input$GreWordTagWhereInput<TRes> get some;
}

class _CopyWithImpl$Input$GreWordTagListRelationFilter<TRes>
    implements CopyWith$Input$GreWordTagListRelationFilter<TRes> {
  _CopyWithImpl$Input$GreWordTagListRelationFilter(
    this._instance,
    this._then,
  );

  final Input$GreWordTagListRelationFilter _instance;

  final TRes Function(Input$GreWordTagListRelationFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? every = _undefined,
    Object? none = _undefined,
    Object? some = _undefined,
  }) =>
      _then(Input$GreWordTagListRelationFilter._({
        ..._instance._$data,
        if (every != _undefined)
          'every': (every as Input$GreWordTagWhereInput?),
        if (none != _undefined) 'none': (none as Input$GreWordTagWhereInput?),
        if (some != _undefined) 'some': (some as Input$GreWordTagWhereInput?),
      }));

  CopyWith$Input$GreWordTagWhereInput<TRes> get every {
    final local$every = _instance.every;
    return local$every == null
        ? CopyWith$Input$GreWordTagWhereInput.stub(_then(_instance))
        : CopyWith$Input$GreWordTagWhereInput(
            local$every, (e) => call(every: e));
  }

  CopyWith$Input$GreWordTagWhereInput<TRes> get none {
    final local$none = _instance.none;
    return local$none == null
        ? CopyWith$Input$GreWordTagWhereInput.stub(_then(_instance))
        : CopyWith$Input$GreWordTagWhereInput(local$none, (e) => call(none: e));
  }

  CopyWith$Input$GreWordTagWhereInput<TRes> get some {
    final local$some = _instance.some;
    return local$some == null
        ? CopyWith$Input$GreWordTagWhereInput.stub(_then(_instance))
        : CopyWith$Input$GreWordTagWhereInput(local$some, (e) => call(some: e));
  }
}

class _CopyWithStubImpl$Input$GreWordTagListRelationFilter<TRes>
    implements CopyWith$Input$GreWordTagListRelationFilter<TRes> {
  _CopyWithStubImpl$Input$GreWordTagListRelationFilter(this._res);

  TRes _res;

  call({
    Input$GreWordTagWhereInput? every,
    Input$GreWordTagWhereInput? none,
    Input$GreWordTagWhereInput? some,
  }) =>
      _res;

  CopyWith$Input$GreWordTagWhereInput<TRes> get every =>
      CopyWith$Input$GreWordTagWhereInput.stub(_res);

  CopyWith$Input$GreWordTagWhereInput<TRes> get none =>
      CopyWith$Input$GreWordTagWhereInput.stub(_res);

  CopyWith$Input$GreWordTagWhereInput<TRes> get some =>
      CopyWith$Input$GreWordTagWhereInput.stub(_res);
}

class Input$GreWordTagNameUserIdCompoundUniqueInput {
  factory Input$GreWordTagNameUserIdCompoundUniqueInput({
    required String name,
    required String userId,
  }) =>
      Input$GreWordTagNameUserIdCompoundUniqueInput._({
        r'name': name,
        r'userId': userId,
      });

  Input$GreWordTagNameUserIdCompoundUniqueInput._(this._$data);

  factory Input$GreWordTagNameUserIdCompoundUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Input$GreWordTagNameUserIdCompoundUniqueInput._(result$data);
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

  CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput<
          Input$GreWordTagNameUserIdCompoundUniqueInput>
      get copyWith => CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordTagNameUserIdCompoundUniqueInput) ||
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

abstract class CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput<TRes> {
  factory CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput(
    Input$GreWordTagNameUserIdCompoundUniqueInput instance,
    TRes Function(Input$GreWordTagNameUserIdCompoundUniqueInput) then,
  ) = _CopyWithImpl$Input$GreWordTagNameUserIdCompoundUniqueInput;

  factory CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput.stub(
          TRes res) =
      _CopyWithStubImpl$Input$GreWordTagNameUserIdCompoundUniqueInput;

  TRes call({
    String? name,
    String? userId,
  });
}

class _CopyWithImpl$Input$GreWordTagNameUserIdCompoundUniqueInput<TRes>
    implements CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput<TRes> {
  _CopyWithImpl$Input$GreWordTagNameUserIdCompoundUniqueInput(
    this._instance,
    this._then,
  );

  final Input$GreWordTagNameUserIdCompoundUniqueInput _instance;

  final TRes Function(Input$GreWordTagNameUserIdCompoundUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$GreWordTagNameUserIdCompoundUniqueInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Input$GreWordTagNameUserIdCompoundUniqueInput<TRes>
    implements CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput<TRes> {
  _CopyWithStubImpl$Input$GreWordTagNameUserIdCompoundUniqueInput(this._res);

  TRes _res;

  call({
    String? name,
    String? userId,
  }) =>
      _res;
}

class Input$GreWordTagWhereInput {
  factory Input$GreWordTagWhereInput({
    Input$StringFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? userId,
  }) =>
      Input$GreWordTagWhereInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (userId != null) r'userId': userId,
      });

  Input$GreWordTagWhereInput._(this._$data);

  factory Input$GreWordTagWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$StringFilter.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : Input$StringFilter.fromJson((l$userId as Map<String, dynamic>));
    }
    return Input$GreWordTagWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFilter? get id => (_$data['id'] as Input$StringFilter?);

  Input$StringFilter? get name => (_$data['name'] as Input$StringFilter?);

  Input$StringFilter? get userId => (_$data['userId'] as Input$StringFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GreWordTagWhereInput<Input$GreWordTagWhereInput>
      get copyWith => CopyWith$Input$GreWordTagWhereInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordTagWhereInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$GreWordTagWhereInput<TRes> {
  factory CopyWith$Input$GreWordTagWhereInput(
    Input$GreWordTagWhereInput instance,
    TRes Function(Input$GreWordTagWhereInput) then,
  ) = _CopyWithImpl$Input$GreWordTagWhereInput;

  factory CopyWith$Input$GreWordTagWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GreWordTagWhereInput;

  TRes call({
    Input$StringFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? userId,
  });
  CopyWith$Input$StringFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get name;
  CopyWith$Input$StringFilter<TRes> get userId;
}

class _CopyWithImpl$Input$GreWordTagWhereInput<TRes>
    implements CopyWith$Input$GreWordTagWhereInput<TRes> {
  _CopyWithImpl$Input$GreWordTagWhereInput(
    this._instance,
    this._then,
  );

  final Input$GreWordTagWhereInput _instance;

  final TRes Function(Input$GreWordTagWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$GreWordTagWhereInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$StringFilter?),
        if (name != _undefined) 'name': (name as Input$StringFilter?),
        if (userId != _undefined) 'userId': (userId as Input$StringFilter?),
      }));

  CopyWith$Input$StringFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringFilter<TRes> get userId {
    final local$userId = _instance.userId;
    return local$userId == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$userId, (e) => call(userId: e));
  }
}

class _CopyWithStubImpl$Input$GreWordTagWhereInput<TRes>
    implements CopyWith$Input$GreWordTagWhereInput<TRes> {
  _CopyWithStubImpl$Input$GreWordTagWhereInput(this._res);

  TRes _res;

  call({
    Input$StringFilter? id,
    Input$StringFilter? name,
    Input$StringFilter? userId,
  }) =>
      _res;

  CopyWith$Input$StringFilter<TRes> get id =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get name =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get userId =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$GreWordTagWhereUniqueInput {
  factory Input$GreWordTagWhereUniqueInput({
    String? id,
    Input$GreWordTagNameUserIdCompoundUniqueInput? name_userId,
  }) =>
      Input$GreWordTagWhereUniqueInput._({
        if (id != null) r'id': id,
        if (name_userId != null) r'name_userId': name_userId,
      });

  Input$GreWordTagWhereUniqueInput._(this._$data);

  factory Input$GreWordTagWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name_userId')) {
      final l$name_userId = data['name_userId'];
      result$data['name_userId'] = l$name_userId == null
          ? null
          : Input$GreWordTagNameUserIdCompoundUniqueInput.fromJson(
              (l$name_userId as Map<String, dynamic>));
    }
    return Input$GreWordTagWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Input$GreWordTagNameUserIdCompoundUniqueInput? get name_userId =>
      (_$data['name_userId'] as Input$GreWordTagNameUserIdCompoundUniqueInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name_userId')) {
      final l$name_userId = name_userId;
      result$data['name_userId'] = l$name_userId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GreWordTagWhereUniqueInput<Input$GreWordTagWhereUniqueInput>
      get copyWith => CopyWith$Input$GreWordTagWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordTagWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name_userId = name_userId;
    final lOther$name_userId = other.name_userId;
    if (_$data.containsKey('name_userId') !=
        other._$data.containsKey('name_userId')) {
      return false;
    }
    if (l$name_userId != lOther$name_userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name_userId = name_userId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name_userId') ? l$name_userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$GreWordTagWhereUniqueInput<TRes> {
  factory CopyWith$Input$GreWordTagWhereUniqueInput(
    Input$GreWordTagWhereUniqueInput instance,
    TRes Function(Input$GreWordTagWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$GreWordTagWhereUniqueInput;

  factory CopyWith$Input$GreWordTagWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GreWordTagWhereUniqueInput;

  TRes call({
    String? id,
    Input$GreWordTagNameUserIdCompoundUniqueInput? name_userId,
  });
  CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput<TRes> get name_userId;
}

class _CopyWithImpl$Input$GreWordTagWhereUniqueInput<TRes>
    implements CopyWith$Input$GreWordTagWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$GreWordTagWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$GreWordTagWhereUniqueInput _instance;

  final TRes Function(Input$GreWordTagWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name_userId = _undefined,
  }) =>
      _then(Input$GreWordTagWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (name_userId != _undefined)
          'name_userId':
              (name_userId as Input$GreWordTagNameUserIdCompoundUniqueInput?),
      }));

  CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput<TRes> get name_userId {
    final local$name_userId = _instance.name_userId;
    return local$name_userId == null
        ? CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput.stub(
            _then(_instance))
        : CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput(
            local$name_userId, (e) => call(name_userId: e));
  }
}

class _CopyWithStubImpl$Input$GreWordTagWhereUniqueInput<TRes>
    implements CopyWith$Input$GreWordTagWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$GreWordTagWhereUniqueInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$GreWordTagNameUserIdCompoundUniqueInput? name_userId,
  }) =>
      _res;

  CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput<TRes>
      get name_userId =>
          CopyWith$Input$GreWordTagNameUserIdCompoundUniqueInput.stub(_res);
}

class Input$GreWordWhereInput {
  factory Input$GreWordWhereInput({
    Input$GreWordTagListRelationFilter? greWordTags,
    Input$StringFilter? id,
    Input$StringFilter? spelling,
    Input$EnumGreWordStatusFilter? status,
    Input$UserWhereInput? user,
    Input$StringFilter? userId,
  }) =>
      Input$GreWordWhereInput._({
        if (greWordTags != null) r'greWordTags': greWordTags,
        if (id != null) r'id': id,
        if (spelling != null) r'spelling': spelling,
        if (status != null) r'status': status,
        if (user != null) r'user': user,
        if (userId != null) r'userId': userId,
      });

  Input$GreWordWhereInput._(this._$data);

  factory Input$GreWordWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('greWordTags')) {
      final l$greWordTags = data['greWordTags'];
      result$data['greWordTags'] = l$greWordTags == null
          ? null
          : Input$GreWordTagListRelationFilter.fromJson(
              (l$greWordTags as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('spelling')) {
      final l$spelling = data['spelling'];
      result$data['spelling'] = l$spelling == null
          ? null
          : Input$StringFilter.fromJson((l$spelling as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$EnumGreWordStatusFilter.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input$UserWhereInput.fromJson((l$user as Map<String, dynamic>));
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : Input$StringFilter.fromJson((l$userId as Map<String, dynamic>));
    }
    return Input$GreWordWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GreWordTagListRelationFilter? get greWordTags =>
      (_$data['greWordTags'] as Input$GreWordTagListRelationFilter?);

  Input$StringFilter? get id => (_$data['id'] as Input$StringFilter?);

  Input$StringFilter? get spelling =>
      (_$data['spelling'] as Input$StringFilter?);

  Input$EnumGreWordStatusFilter? get status =>
      (_$data['status'] as Input$EnumGreWordStatusFilter?);

  Input$UserWhereInput? get user => (_$data['user'] as Input$UserWhereInput?);

  Input$StringFilter? get userId => (_$data['userId'] as Input$StringFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('greWordTags')) {
      final l$greWordTags = greWordTags;
      result$data['greWordTags'] = l$greWordTags?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('spelling')) {
      final l$spelling = spelling;
      result$data['spelling'] = l$spelling?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GreWordWhereInput<Input$GreWordWhereInput> get copyWith =>
      CopyWith$Input$GreWordWhereInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordWhereInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$greWordTags = greWordTags;
    final lOther$greWordTags = other.greWordTags;
    if (_$data.containsKey('greWordTags') !=
        other._$data.containsKey('greWordTags')) {
      return false;
    }
    if (l$greWordTags != lOther$greWordTags) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$spelling = spelling;
    final lOther$spelling = other.spelling;
    if (_$data.containsKey('spelling') !=
        other._$data.containsKey('spelling')) {
      return false;
    }
    if (l$spelling != lOther$spelling) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$greWordTags = greWordTags;
    final l$id = id;
    final l$spelling = spelling;
    final l$status = status;
    final l$user = user;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('greWordTags') ? l$greWordTags : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('spelling') ? l$spelling : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$GreWordWhereInput<TRes> {
  factory CopyWith$Input$GreWordWhereInput(
    Input$GreWordWhereInput instance,
    TRes Function(Input$GreWordWhereInput) then,
  ) = _CopyWithImpl$Input$GreWordWhereInput;

  factory CopyWith$Input$GreWordWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GreWordWhereInput;

  TRes call({
    Input$GreWordTagListRelationFilter? greWordTags,
    Input$StringFilter? id,
    Input$StringFilter? spelling,
    Input$EnumGreWordStatusFilter? status,
    Input$UserWhereInput? user,
    Input$StringFilter? userId,
  });
  CopyWith$Input$GreWordTagListRelationFilter<TRes> get greWordTags;
  CopyWith$Input$StringFilter<TRes> get id;
  CopyWith$Input$StringFilter<TRes> get spelling;
  CopyWith$Input$EnumGreWordStatusFilter<TRes> get status;
  CopyWith$Input$UserWhereInput<TRes> get user;
  CopyWith$Input$StringFilter<TRes> get userId;
}

class _CopyWithImpl$Input$GreWordWhereInput<TRes>
    implements CopyWith$Input$GreWordWhereInput<TRes> {
  _CopyWithImpl$Input$GreWordWhereInput(
    this._instance,
    this._then,
  );

  final Input$GreWordWhereInput _instance;

  final TRes Function(Input$GreWordWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? greWordTags = _undefined,
    Object? id = _undefined,
    Object? spelling = _undefined,
    Object? status = _undefined,
    Object? user = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$GreWordWhereInput._({
        ..._instance._$data,
        if (greWordTags != _undefined)
          'greWordTags': (greWordTags as Input$GreWordTagListRelationFilter?),
        if (id != _undefined) 'id': (id as Input$StringFilter?),
        if (spelling != _undefined)
          'spelling': (spelling as Input$StringFilter?),
        if (status != _undefined)
          'status': (status as Input$EnumGreWordStatusFilter?),
        if (user != _undefined) 'user': (user as Input$UserWhereInput?),
        if (userId != _undefined) 'userId': (userId as Input$StringFilter?),
      }));

  CopyWith$Input$GreWordTagListRelationFilter<TRes> get greWordTags {
    final local$greWordTags = _instance.greWordTags;
    return local$greWordTags == null
        ? CopyWith$Input$GreWordTagListRelationFilter.stub(_then(_instance))
        : CopyWith$Input$GreWordTagListRelationFilter(
            local$greWordTags, (e) => call(greWordTags: e));
  }

  CopyWith$Input$StringFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFilter<TRes> get spelling {
    final local$spelling = _instance.spelling;
    return local$spelling == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$spelling, (e) => call(spelling: e));
  }

  CopyWith$Input$EnumGreWordStatusFilter<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$EnumGreWordStatusFilter.stub(_then(_instance))
        : CopyWith$Input$EnumGreWordStatusFilter(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$UserWhereInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Input$UserWhereInput.stub(_then(_instance))
        : CopyWith$Input$UserWhereInput(local$user, (e) => call(user: e));
  }

  CopyWith$Input$StringFilter<TRes> get userId {
    final local$userId = _instance.userId;
    return local$userId == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$userId, (e) => call(userId: e));
  }
}

class _CopyWithStubImpl$Input$GreWordWhereInput<TRes>
    implements CopyWith$Input$GreWordWhereInput<TRes> {
  _CopyWithStubImpl$Input$GreWordWhereInput(this._res);

  TRes _res;

  call({
    Input$GreWordTagListRelationFilter? greWordTags,
    Input$StringFilter? id,
    Input$StringFilter? spelling,
    Input$EnumGreWordStatusFilter? status,
    Input$UserWhereInput? user,
    Input$StringFilter? userId,
  }) =>
      _res;

  CopyWith$Input$GreWordTagListRelationFilter<TRes> get greWordTags =>
      CopyWith$Input$GreWordTagListRelationFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get id =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get spelling =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$EnumGreWordStatusFilter<TRes> get status =>
      CopyWith$Input$EnumGreWordStatusFilter.stub(_res);

  CopyWith$Input$UserWhereInput<TRes> get user =>
      CopyWith$Input$UserWhereInput.stub(_res);

  CopyWith$Input$StringFilter<TRes> get userId =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$GreWordWhereUniqueInput {
  factory Input$GreWordWhereUniqueInput({
    String? id,
    Input$GreWordSpellingUserIdCompoundUniqueInput? spelling_userId,
  }) =>
      Input$GreWordWhereUniqueInput._({
        if (id != null) r'id': id,
        if (spelling_userId != null) r'spelling_userId': spelling_userId,
      });

  Input$GreWordWhereUniqueInput._(this._$data);

  factory Input$GreWordWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('spelling_userId')) {
      final l$spelling_userId = data['spelling_userId'];
      result$data['spelling_userId'] = l$spelling_userId == null
          ? null
          : Input$GreWordSpellingUserIdCompoundUniqueInput.fromJson(
              (l$spelling_userId as Map<String, dynamic>));
    }
    return Input$GreWordWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Input$GreWordSpellingUserIdCompoundUniqueInput? get spelling_userId =>
      (_$data['spelling_userId']
          as Input$GreWordSpellingUserIdCompoundUniqueInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('spelling_userId')) {
      final l$spelling_userId = spelling_userId;
      result$data['spelling_userId'] = l$spelling_userId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$GreWordWhereUniqueInput<Input$GreWordWhereUniqueInput>
      get copyWith => CopyWith$Input$GreWordWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GreWordWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$spelling_userId = spelling_userId;
    final lOther$spelling_userId = other.spelling_userId;
    if (_$data.containsKey('spelling_userId') !=
        other._$data.containsKey('spelling_userId')) {
      return false;
    }
    if (l$spelling_userId != lOther$spelling_userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$spelling_userId = spelling_userId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('spelling_userId') ? l$spelling_userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$GreWordWhereUniqueInput<TRes> {
  factory CopyWith$Input$GreWordWhereUniqueInput(
    Input$GreWordWhereUniqueInput instance,
    TRes Function(Input$GreWordWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$GreWordWhereUniqueInput;

  factory CopyWith$Input$GreWordWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GreWordWhereUniqueInput;

  TRes call({
    String? id,
    Input$GreWordSpellingUserIdCompoundUniqueInput? spelling_userId,
  });
  CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput<TRes>
      get spelling_userId;
}

class _CopyWithImpl$Input$GreWordWhereUniqueInput<TRes>
    implements CopyWith$Input$GreWordWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$GreWordWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$GreWordWhereUniqueInput _instance;

  final TRes Function(Input$GreWordWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? spelling_userId = _undefined,
  }) =>
      _then(Input$GreWordWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (spelling_userId != _undefined)
          'spelling_userId': (spelling_userId
              as Input$GreWordSpellingUserIdCompoundUniqueInput?),
      }));

  CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput<TRes>
      get spelling_userId {
    final local$spelling_userId = _instance.spelling_userId;
    return local$spelling_userId == null
        ? CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput.stub(
            _then(_instance))
        : CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput(
            local$spelling_userId, (e) => call(spelling_userId: e));
  }
}

class _CopyWithStubImpl$Input$GreWordWhereUniqueInput<TRes>
    implements CopyWith$Input$GreWordWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$GreWordWhereUniqueInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$GreWordSpellingUserIdCompoundUniqueInput? spelling_userId,
  }) =>
      _res;

  CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput<TRes>
      get spelling_userId =>
          CopyWith$Input$GreWordSpellingUserIdCompoundUniqueInput.stub(_res);
}

class Input$StringFilter {
  factory Input$StringFilter({
    String? contains,
    String? endsWith,
    String? equals,
    String? gt,
    String? gte,
    List<String>? $in,
    String? lt,
    String? lte,
    String? not,
    List<String>? notIn,
    String? startsWith,
  }) =>
      Input$StringFilter._({
        if (contains != null) r'contains': contains,
        if (endsWith != null) r'endsWith': endsWith,
        if (equals != null) r'equals': equals,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if ($in != null) r'in': $in,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (not != null) r'not': not,
        if (notIn != null) r'notIn': notIn,
        if (startsWith != null) r'startsWith': startsWith,
      });

  Input$StringFilter._(this._$data);

  factory Input$StringFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('endsWith')) {
      final l$endsWith = data['endsWith'];
      result$data['endsWith'] = (l$endsWith as String?);
    }
    if (data.containsKey('equals')) {
      final l$equals = data['equals'];
      result$data['equals'] = (l$equals as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as String?);
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('startsWith')) {
      final l$startsWith = data['startsWith'];
      result$data['startsWith'] = (l$startsWith as String?);
    }
    return Input$StringFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get contains => (_$data['contains'] as String?);

  String? get endsWith => (_$data['endsWith'] as String?);

  String? get equals => (_$data['equals'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get gte => (_$data['gte'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lt => (_$data['lt'] as String?);

  String? get lte => (_$data['lte'] as String?);

  String? get not => (_$data['not'] as String?);

  List<String>? get notIn => (_$data['notIn'] as List<String>?);

  String? get startsWith => (_$data['startsWith'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('endsWith')) {
      final l$endsWith = endsWith;
      result$data['endsWith'] = l$endsWith;
    }
    if (_$data.containsKey('equals')) {
      final l$equals = equals;
      result$data['equals'] = l$equals;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not;
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('startsWith')) {
      final l$startsWith = startsWith;
      result$data['startsWith'] = l$startsWith;
    }
    return result$data;
  }

  CopyWith$Input$StringFilter<Input$StringFilter> get copyWith =>
      CopyWith$Input$StringFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$StringFilter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$endsWith = endsWith;
    final lOther$endsWith = other.endsWith;
    if (_$data.containsKey('endsWith') !=
        other._$data.containsKey('endsWith')) {
      return false;
    }
    if (l$endsWith != lOther$endsWith) {
      return false;
    }
    final l$equals = equals;
    final lOther$equals = other.equals;
    if (_$data.containsKey('equals') != other._$data.containsKey('equals')) {
      return false;
    }
    if (l$equals != lOther$equals) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != lOther$not) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$startsWith = startsWith;
    final lOther$startsWith = other.startsWith;
    if (_$data.containsKey('startsWith') !=
        other._$data.containsKey('startsWith')) {
      return false;
    }
    if (l$startsWith != lOther$startsWith) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$contains = contains;
    final l$endsWith = endsWith;
    final l$equals = equals;
    final l$gt = gt;
    final l$gte = gte;
    final l$$in = $in;
    final l$lt = lt;
    final l$lte = lte;
    final l$not = not;
    final l$notIn = notIn;
    final l$startsWith = startsWith;
    return Object.hashAll([
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('endsWith') ? l$endsWith : const {},
      _$data.containsKey('equals') ? l$equals : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('not') ? l$not : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('startsWith') ? l$startsWith : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringFilter<TRes> {
  factory CopyWith$Input$StringFilter(
    Input$StringFilter instance,
    TRes Function(Input$StringFilter) then,
  ) = _CopyWithImpl$Input$StringFilter;

  factory CopyWith$Input$StringFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$StringFilter;

  TRes call({
    String? contains,
    String? endsWith,
    String? equals,
    String? gt,
    String? gte,
    List<String>? $in,
    String? lt,
    String? lte,
    String? not,
    List<String>? notIn,
    String? startsWith,
  });
}

class _CopyWithImpl$Input$StringFilter<TRes>
    implements CopyWith$Input$StringFilter<TRes> {
  _CopyWithImpl$Input$StringFilter(
    this._instance,
    this._then,
  );

  final Input$StringFilter _instance;

  final TRes Function(Input$StringFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contains = _undefined,
    Object? endsWith = _undefined,
    Object? equals = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? $in = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? not = _undefined,
    Object? notIn = _undefined,
    Object? startsWith = _undefined,
  }) =>
      _then(Input$StringFilter._({
        ..._instance._$data,
        if (contains != _undefined) 'contains': (contains as String?),
        if (endsWith != _undefined) 'endsWith': (endsWith as String?),
        if (equals != _undefined) 'equals': (equals as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (not != _undefined) 'not': (not as String?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
        if (startsWith != _undefined) 'startsWith': (startsWith as String?),
      }));
}

class _CopyWithStubImpl$Input$StringFilter<TRes>
    implements CopyWith$Input$StringFilter<TRes> {
  _CopyWithStubImpl$Input$StringFilter(this._res);

  TRes _res;

  call({
    String? contains,
    String? endsWith,
    String? equals,
    String? gt,
    String? gte,
    List<String>? $in,
    String? lt,
    String? lte,
    String? not,
    List<String>? notIn,
    String? startsWith,
  }) =>
      _res;
}

class Input$UserMetaParsedJsonValueInput {
  factory Input$UserMetaParsedJsonValueInput({
    String? defaultGreWordSearchPromptInput,
    bool? showDefaultGreWordSearchPromptInputs,
  }) =>
      Input$UserMetaParsedJsonValueInput._({
        if (defaultGreWordSearchPromptInput != null)
          r'defaultGreWordSearchPromptInput': defaultGreWordSearchPromptInput,
        if (showDefaultGreWordSearchPromptInputs != null)
          r'showDefaultGreWordSearchPromptInputs':
              showDefaultGreWordSearchPromptInputs,
      });

  Input$UserMetaParsedJsonValueInput._(this._$data);

  factory Input$UserMetaParsedJsonValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('defaultGreWordSearchPromptInput')) {
      final l$defaultGreWordSearchPromptInput =
          data['defaultGreWordSearchPromptInput'];
      result$data['defaultGreWordSearchPromptInput'] =
          (l$defaultGreWordSearchPromptInput as String?);
    }
    if (data.containsKey('showDefaultGreWordSearchPromptInputs')) {
      final l$showDefaultGreWordSearchPromptInputs =
          data['showDefaultGreWordSearchPromptInputs'];
      result$data['showDefaultGreWordSearchPromptInputs'] =
          (l$showDefaultGreWordSearchPromptInputs as bool?);
    }
    return Input$UserMetaParsedJsonValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get defaultGreWordSearchPromptInput =>
      (_$data['defaultGreWordSearchPromptInput'] as String?);

  bool? get showDefaultGreWordSearchPromptInputs =>
      (_$data['showDefaultGreWordSearchPromptInputs'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('defaultGreWordSearchPromptInput')) {
      final l$defaultGreWordSearchPromptInput = defaultGreWordSearchPromptInput;
      result$data['defaultGreWordSearchPromptInput'] =
          l$defaultGreWordSearchPromptInput;
    }
    if (_$data.containsKey('showDefaultGreWordSearchPromptInputs')) {
      final l$showDefaultGreWordSearchPromptInputs =
          showDefaultGreWordSearchPromptInputs;
      result$data['showDefaultGreWordSearchPromptInputs'] =
          l$showDefaultGreWordSearchPromptInputs;
    }
    return result$data;
  }

  CopyWith$Input$UserMetaParsedJsonValueInput<
          Input$UserMetaParsedJsonValueInput>
      get copyWith => CopyWith$Input$UserMetaParsedJsonValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserMetaParsedJsonValueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$defaultGreWordSearchPromptInput = defaultGreWordSearchPromptInput;
    final lOther$defaultGreWordSearchPromptInput =
        other.defaultGreWordSearchPromptInput;
    if (_$data.containsKey('defaultGreWordSearchPromptInput') !=
        other._$data.containsKey('defaultGreWordSearchPromptInput')) {
      return false;
    }
    if (l$defaultGreWordSearchPromptInput !=
        lOther$defaultGreWordSearchPromptInput) {
      return false;
    }
    final l$showDefaultGreWordSearchPromptInputs =
        showDefaultGreWordSearchPromptInputs;
    final lOther$showDefaultGreWordSearchPromptInputs =
        other.showDefaultGreWordSearchPromptInputs;
    if (_$data.containsKey('showDefaultGreWordSearchPromptInputs') !=
        other._$data.containsKey('showDefaultGreWordSearchPromptInputs')) {
      return false;
    }
    if (l$showDefaultGreWordSearchPromptInputs !=
        lOther$showDefaultGreWordSearchPromptInputs) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$defaultGreWordSearchPromptInput = defaultGreWordSearchPromptInput;
    final l$showDefaultGreWordSearchPromptInputs =
        showDefaultGreWordSearchPromptInputs;
    return Object.hashAll([
      _$data.containsKey('defaultGreWordSearchPromptInput')
          ? l$defaultGreWordSearchPromptInput
          : const {},
      _$data.containsKey('showDefaultGreWordSearchPromptInputs')
          ? l$showDefaultGreWordSearchPromptInputs
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserMetaParsedJsonValueInput<TRes> {
  factory CopyWith$Input$UserMetaParsedJsonValueInput(
    Input$UserMetaParsedJsonValueInput instance,
    TRes Function(Input$UserMetaParsedJsonValueInput) then,
  ) = _CopyWithImpl$Input$UserMetaParsedJsonValueInput;

  factory CopyWith$Input$UserMetaParsedJsonValueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserMetaParsedJsonValueInput;

  TRes call({
    String? defaultGreWordSearchPromptInput,
    bool? showDefaultGreWordSearchPromptInputs,
  });
}

class _CopyWithImpl$Input$UserMetaParsedJsonValueInput<TRes>
    implements CopyWith$Input$UserMetaParsedJsonValueInput<TRes> {
  _CopyWithImpl$Input$UserMetaParsedJsonValueInput(
    this._instance,
    this._then,
  );

  final Input$UserMetaParsedJsonValueInput _instance;

  final TRes Function(Input$UserMetaParsedJsonValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? defaultGreWordSearchPromptInput = _undefined,
    Object? showDefaultGreWordSearchPromptInputs = _undefined,
  }) =>
      _then(Input$UserMetaParsedJsonValueInput._({
        ..._instance._$data,
        if (defaultGreWordSearchPromptInput != _undefined)
          'defaultGreWordSearchPromptInput':
              (defaultGreWordSearchPromptInput as String?),
        if (showDefaultGreWordSearchPromptInputs != _undefined)
          'showDefaultGreWordSearchPromptInputs':
              (showDefaultGreWordSearchPromptInputs as bool?),
      }));
}

class _CopyWithStubImpl$Input$UserMetaParsedJsonValueInput<TRes>
    implements CopyWith$Input$UserMetaParsedJsonValueInput<TRes> {
  _CopyWithStubImpl$Input$UserMetaParsedJsonValueInput(this._res);

  TRes _res;

  call({
    String? defaultGreWordSearchPromptInput,
    bool? showDefaultGreWordSearchPromptInputs,
  }) =>
      _res;
}

class Input$UserOrderByWithRelationInput {
  factory Input$UserOrderByWithRelationInput({
    Enum$SortOrder? createdAt,
    Enum$SortOrder? email,
    Enum$SortOrder? id,
    Enum$SortOrder? updatedAt,
  }) =>
      Input$UserOrderByWithRelationInput._({
        if (createdAt != null) r'createdAt': createdAt,
        if (email != null) r'email': email,
        if (id != null) r'id': id,
        if (updatedAt != null) r'updatedAt': updatedAt,
      });

  Input$UserOrderByWithRelationInput._(this._$data);

  factory Input$UserOrderByWithRelationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson$Enum$SortOrder((l$createdAt as String));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] =
          l$email == null ? null : fromJson$Enum$SortOrder((l$email as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson$Enum$SortOrder((l$updatedAt as String));
    }
    return Input$UserOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get createdAt => (_$data['createdAt'] as Enum$SortOrder?);

  Enum$SortOrder? get email => (_$data['email'] as Enum$SortOrder?);

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);

  Enum$SortOrder? get updatedAt => (_$data['updatedAt'] as Enum$SortOrder?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] =
          l$createdAt == null ? null : toJson$Enum$SortOrder(l$createdAt);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] =
          l$email == null ? null : toJson$Enum$SortOrder(l$email);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] =
          l$updatedAt == null ? null : toJson$Enum$SortOrder(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$UserOrderByWithRelationInput<
          Input$UserOrderByWithRelationInput>
      get copyWith => CopyWith$Input$UserOrderByWithRelationInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserOrderByWithRelationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$email = email;
    final l$id = id;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$UserOrderByWithRelationInput(
    Input$UserOrderByWithRelationInput instance,
    TRes Function(Input$UserOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$UserOrderByWithRelationInput;

  factory CopyWith$Input$UserOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? createdAt,
    Enum$SortOrder? email,
    Enum$SortOrder? id,
    Enum$SortOrder? updatedAt,
  });
}

class _CopyWithImpl$Input$UserOrderByWithRelationInput<TRes>
    implements CopyWith$Input$UserOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$UserOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$UserOrderByWithRelationInput _instance;

  final TRes Function(Input$UserOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? email = _undefined,
    Object? id = _undefined,
    Object? updatedAt = _undefined,
  }) =>
      _then(Input$UserOrderByWithRelationInput._({
        ..._instance._$data,
        if (createdAt != _undefined)
          'createdAt': (createdAt as Enum$SortOrder?),
        if (email != _undefined) 'email': (email as Enum$SortOrder?),
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (updatedAt != _undefined)
          'updatedAt': (updatedAt as Enum$SortOrder?),
      }));
}

class _CopyWithStubImpl$Input$UserOrderByWithRelationInput<TRes>
    implements CopyWith$Input$UserOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$UserOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? createdAt,
    Enum$SortOrder? email,
    Enum$SortOrder? id,
    Enum$SortOrder? updatedAt,
  }) =>
      _res;
}

class Input$UserSessionMetaParsedJsonValueInput {
  factory Input$UserSessionMetaParsedJsonValueInput({String? none}) =>
      Input$UserSessionMetaParsedJsonValueInput._({
        if (none != null) r'none': none,
      });

  Input$UserSessionMetaParsedJsonValueInput._(this._$data);

  factory Input$UserSessionMetaParsedJsonValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('none')) {
      final l$none = data['none'];
      result$data['none'] = (l$none as String?);
    }
    return Input$UserSessionMetaParsedJsonValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get none => (_$data['none'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('none')) {
      final l$none = none;
      result$data['none'] = l$none;
    }
    return result$data;
  }

  CopyWith$Input$UserSessionMetaParsedJsonValueInput<
          Input$UserSessionMetaParsedJsonValueInput>
      get copyWith => CopyWith$Input$UserSessionMetaParsedJsonValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSessionMetaParsedJsonValueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$none = none;
    final lOther$none = other.none;
    if (_$data.containsKey('none') != other._$data.containsKey('none')) {
      return false;
    }
    if (l$none != lOther$none) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$none = none;
    return Object.hashAll([_$data.containsKey('none') ? l$none : const {}]);
  }
}

abstract class CopyWith$Input$UserSessionMetaParsedJsonValueInput<TRes> {
  factory CopyWith$Input$UserSessionMetaParsedJsonValueInput(
    Input$UserSessionMetaParsedJsonValueInput instance,
    TRes Function(Input$UserSessionMetaParsedJsonValueInput) then,
  ) = _CopyWithImpl$Input$UserSessionMetaParsedJsonValueInput;

  factory CopyWith$Input$UserSessionMetaParsedJsonValueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSessionMetaParsedJsonValueInput;

  TRes call({String? none});
}

class _CopyWithImpl$Input$UserSessionMetaParsedJsonValueInput<TRes>
    implements CopyWith$Input$UserSessionMetaParsedJsonValueInput<TRes> {
  _CopyWithImpl$Input$UserSessionMetaParsedJsonValueInput(
    this._instance,
    this._then,
  );

  final Input$UserSessionMetaParsedJsonValueInput _instance;

  final TRes Function(Input$UserSessionMetaParsedJsonValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? none = _undefined}) =>
      _then(Input$UserSessionMetaParsedJsonValueInput._({
        ..._instance._$data,
        if (none != _undefined) 'none': (none as String?),
      }));
}

class _CopyWithStubImpl$Input$UserSessionMetaParsedJsonValueInput<TRes>
    implements CopyWith$Input$UserSessionMetaParsedJsonValueInput<TRes> {
  _CopyWithStubImpl$Input$UserSessionMetaParsedJsonValueInput(this._res);

  TRes _res;

  call({String? none}) => _res;
}

class Input$UserSessionOrderByWithRelationInput {
  factory Input$UserSessionOrderByWithRelationInput({
    Enum$SortOrder? duration,
    Enum$SortOrder? endedAt,
    Enum$SortOrder? id,
    Enum$SortOrder? startedAt,
    Input$UserOrderByWithRelationInput? user,
    Enum$SortOrder? userId,
  }) =>
      Input$UserSessionOrderByWithRelationInput._({
        if (duration != null) r'duration': duration,
        if (endedAt != null) r'endedAt': endedAt,
        if (id != null) r'id': id,
        if (startedAt != null) r'startedAt': startedAt,
        if (user != null) r'user': user,
        if (userId != null) r'userId': userId,
      });

  Input$UserSessionOrderByWithRelationInput._(this._$data);

  factory Input$UserSessionOrderByWithRelationInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('duration')) {
      final l$duration = data['duration'];
      result$data['duration'] = l$duration == null
          ? null
          : fromJson$Enum$SortOrder((l$duration as String));
    }
    if (data.containsKey('endedAt')) {
      final l$endedAt = data['endedAt'];
      result$data['endedAt'] = l$endedAt == null
          ? null
          : fromJson$Enum$SortOrder((l$endedAt as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$SortOrder((l$id as String));
    }
    if (data.containsKey('startedAt')) {
      final l$startedAt = data['startedAt'];
      result$data['startedAt'] = l$startedAt == null
          ? null
          : fromJson$Enum$SortOrder((l$startedAt as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input$UserOrderByWithRelationInput.fromJson(
              (l$user as Map<String, dynamic>));
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : fromJson$Enum$SortOrder((l$userId as String));
    }
    return Input$UserSessionOrderByWithRelationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortOrder? get duration => (_$data['duration'] as Enum$SortOrder?);

  Enum$SortOrder? get endedAt => (_$data['endedAt'] as Enum$SortOrder?);

  Enum$SortOrder? get id => (_$data['id'] as Enum$SortOrder?);

  Enum$SortOrder? get startedAt => (_$data['startedAt'] as Enum$SortOrder?);

  Input$UserOrderByWithRelationInput? get user =>
      (_$data['user'] as Input$UserOrderByWithRelationInput?);

  Enum$SortOrder? get userId => (_$data['userId'] as Enum$SortOrder?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('duration')) {
      final l$duration = duration;
      result$data['duration'] =
          l$duration == null ? null : toJson$Enum$SortOrder(l$duration);
    }
    if (_$data.containsKey('endedAt')) {
      final l$endedAt = endedAt;
      result$data['endedAt'] =
          l$endedAt == null ? null : toJson$Enum$SortOrder(l$endedAt);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$SortOrder(l$id);
    }
    if (_$data.containsKey('startedAt')) {
      final l$startedAt = startedAt;
      result$data['startedAt'] =
          l$startedAt == null ? null : toJson$Enum$SortOrder(l$startedAt);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] =
          l$userId == null ? null : toJson$Enum$SortOrder(l$userId);
    }
    return result$data;
  }

  CopyWith$Input$UserSessionOrderByWithRelationInput<
          Input$UserSessionOrderByWithRelationInput>
      get copyWith => CopyWith$Input$UserSessionOrderByWithRelationInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSessionOrderByWithRelationInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (_$data.containsKey('duration') !=
        other._$data.containsKey('duration')) {
      return false;
    }
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$endedAt = endedAt;
    final lOther$endedAt = other.endedAt;
    if (_$data.containsKey('endedAt') != other._$data.containsKey('endedAt')) {
      return false;
    }
    if (l$endedAt != lOther$endedAt) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (_$data.containsKey('startedAt') !=
        other._$data.containsKey('startedAt')) {
      return false;
    }
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$duration = duration;
    final l$endedAt = endedAt;
    final l$id = id;
    final l$startedAt = startedAt;
    final l$user = user;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('duration') ? l$duration : const {},
      _$data.containsKey('endedAt') ? l$endedAt : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('startedAt') ? l$startedAt : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserSessionOrderByWithRelationInput<TRes> {
  factory CopyWith$Input$UserSessionOrderByWithRelationInput(
    Input$UserSessionOrderByWithRelationInput instance,
    TRes Function(Input$UserSessionOrderByWithRelationInput) then,
  ) = _CopyWithImpl$Input$UserSessionOrderByWithRelationInput;

  factory CopyWith$Input$UserSessionOrderByWithRelationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSessionOrderByWithRelationInput;

  TRes call({
    Enum$SortOrder? duration,
    Enum$SortOrder? endedAt,
    Enum$SortOrder? id,
    Enum$SortOrder? startedAt,
    Input$UserOrderByWithRelationInput? user,
    Enum$SortOrder? userId,
  });
  CopyWith$Input$UserOrderByWithRelationInput<TRes> get user;
}

class _CopyWithImpl$Input$UserSessionOrderByWithRelationInput<TRes>
    implements CopyWith$Input$UserSessionOrderByWithRelationInput<TRes> {
  _CopyWithImpl$Input$UserSessionOrderByWithRelationInput(
    this._instance,
    this._then,
  );

  final Input$UserSessionOrderByWithRelationInput _instance;

  final TRes Function(Input$UserSessionOrderByWithRelationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? duration = _undefined,
    Object? endedAt = _undefined,
    Object? id = _undefined,
    Object? startedAt = _undefined,
    Object? user = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$UserSessionOrderByWithRelationInput._({
        ..._instance._$data,
        if (duration != _undefined) 'duration': (duration as Enum$SortOrder?),
        if (endedAt != _undefined) 'endedAt': (endedAt as Enum$SortOrder?),
        if (id != _undefined) 'id': (id as Enum$SortOrder?),
        if (startedAt != _undefined)
          'startedAt': (startedAt as Enum$SortOrder?),
        if (user != _undefined)
          'user': (user as Input$UserOrderByWithRelationInput?),
        if (userId != _undefined) 'userId': (userId as Enum$SortOrder?),
      }));

  CopyWith$Input$UserOrderByWithRelationInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Input$UserOrderByWithRelationInput.stub(_then(_instance))
        : CopyWith$Input$UserOrderByWithRelationInput(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Input$UserSessionOrderByWithRelationInput<TRes>
    implements CopyWith$Input$UserSessionOrderByWithRelationInput<TRes> {
  _CopyWithStubImpl$Input$UserSessionOrderByWithRelationInput(this._res);

  TRes _res;

  call({
    Enum$SortOrder? duration,
    Enum$SortOrder? endedAt,
    Enum$SortOrder? id,
    Enum$SortOrder? startedAt,
    Input$UserOrderByWithRelationInput? user,
    Enum$SortOrder? userId,
  }) =>
      _res;

  CopyWith$Input$UserOrderByWithRelationInput<TRes> get user =>
      CopyWith$Input$UserOrderByWithRelationInput.stub(_res);
}

class Input$UserSessionWhereInput {
  factory Input$UserSessionWhereInput({
    Input$StringFilter? id,
    Input$UserWhereInput? user,
    Input$StringFilter? userId,
  }) =>
      Input$UserSessionWhereInput._({
        if (id != null) r'id': id,
        if (user != null) r'user': user,
        if (userId != null) r'userId': userId,
      });

  Input$UserSessionWhereInput._(this._$data);

  factory Input$UserSessionWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringFilter.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input$UserWhereInput.fromJson((l$user as Map<String, dynamic>));
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = l$userId == null
          ? null
          : Input$StringFilter.fromJson((l$userId as Map<String, dynamic>));
    }
    return Input$UserSessionWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFilter? get id => (_$data['id'] as Input$StringFilter?);

  Input$UserWhereInput? get user => (_$data['user'] as Input$UserWhereInput?);

  Input$StringFilter? get userId => (_$data['userId'] as Input$StringFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserSessionWhereInput<Input$UserSessionWhereInput>
      get copyWith => CopyWith$Input$UserSessionWhereInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSessionWhereInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserSessionWhereInput<TRes> {
  factory CopyWith$Input$UserSessionWhereInput(
    Input$UserSessionWhereInput instance,
    TRes Function(Input$UserSessionWhereInput) then,
  ) = _CopyWithImpl$Input$UserSessionWhereInput;

  factory CopyWith$Input$UserSessionWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSessionWhereInput;

  TRes call({
    Input$StringFilter? id,
    Input$UserWhereInput? user,
    Input$StringFilter? userId,
  });
  CopyWith$Input$StringFilter<TRes> get id;
  CopyWith$Input$UserWhereInput<TRes> get user;
  CopyWith$Input$StringFilter<TRes> get userId;
}

class _CopyWithImpl$Input$UserSessionWhereInput<TRes>
    implements CopyWith$Input$UserSessionWhereInput<TRes> {
  _CopyWithImpl$Input$UserSessionWhereInput(
    this._instance,
    this._then,
  );

  final Input$UserSessionWhereInput _instance;

  final TRes Function(Input$UserSessionWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$UserSessionWhereInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Input$StringFilter?),
        if (user != _undefined) 'user': (user as Input$UserWhereInput?),
        if (userId != _undefined) 'userId': (userId as Input$StringFilter?),
      }));

  CopyWith$Input$StringFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$UserWhereInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Input$UserWhereInput.stub(_then(_instance))
        : CopyWith$Input$UserWhereInput(local$user, (e) => call(user: e));
  }

  CopyWith$Input$StringFilter<TRes> get userId {
    final local$userId = _instance.userId;
    return local$userId == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$userId, (e) => call(userId: e));
  }
}

class _CopyWithStubImpl$Input$UserSessionWhereInput<TRes>
    implements CopyWith$Input$UserSessionWhereInput<TRes> {
  _CopyWithStubImpl$Input$UserSessionWhereInput(this._res);

  TRes _res;

  call({
    Input$StringFilter? id,
    Input$UserWhereInput? user,
    Input$StringFilter? userId,
  }) =>
      _res;

  CopyWith$Input$StringFilter<TRes> get id =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$UserWhereInput<TRes> get user =>
      CopyWith$Input$UserWhereInput.stub(_res);

  CopyWith$Input$StringFilter<TRes> get userId =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$UserSessionWhereUniqueInput {
  factory Input$UserSessionWhereUniqueInput({String? id}) =>
      Input$UserSessionWhereUniqueInput._({
        if (id != null) r'id': id,
      });

  Input$UserSessionWhereUniqueInput._(this._$data);

  factory Input$UserSessionWhereUniqueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$UserSessionWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$UserSessionWhereUniqueInput<Input$UserSessionWhereUniqueInput>
      get copyWith => CopyWith$Input$UserSessionWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserSessionWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$UserSessionWhereUniqueInput<TRes> {
  factory CopyWith$Input$UserSessionWhereUniqueInput(
    Input$UserSessionWhereUniqueInput instance,
    TRes Function(Input$UserSessionWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$UserSessionWhereUniqueInput;

  factory CopyWith$Input$UserSessionWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserSessionWhereUniqueInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$UserSessionWhereUniqueInput<TRes>
    implements CopyWith$Input$UserSessionWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$UserSessionWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$UserSessionWhereUniqueInput _instance;

  final TRes Function(Input$UserSessionWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$UserSessionWhereUniqueInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$UserSessionWhereUniqueInput<TRes>
    implements CopyWith$Input$UserSessionWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$UserSessionWhereUniqueInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$UserWhereInput {
  factory Input$UserWhereInput({
    Input$StringFilter? email,
    Input$StringFilter? id,
  }) =>
      Input$UserWhereInput._({
        if (email != null) r'email': email,
        if (id != null) r'id': id,
      });

  Input$UserWhereInput._(this._$data);

  factory Input$UserWhereInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input$StringFilter.fromJson((l$email as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$StringFilter.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$UserWhereInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StringFilter? get email => (_$data['email'] as Input$StringFilter?);

  Input$StringFilter? get id => (_$data['id'] as Input$StringFilter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserWhereInput<Input$UserWhereInput> get copyWith =>
      CopyWith$Input$UserWhereInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserWhereInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserWhereInput<TRes> {
  factory CopyWith$Input$UserWhereInput(
    Input$UserWhereInput instance,
    TRes Function(Input$UserWhereInput) then,
  ) = _CopyWithImpl$Input$UserWhereInput;

  factory CopyWith$Input$UserWhereInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserWhereInput;

  TRes call({
    Input$StringFilter? email,
    Input$StringFilter? id,
  });
  CopyWith$Input$StringFilter<TRes> get email;
  CopyWith$Input$StringFilter<TRes> get id;
}

class _CopyWithImpl$Input$UserWhereInput<TRes>
    implements CopyWith$Input$UserWhereInput<TRes> {
  _CopyWithImpl$Input$UserWhereInput(
    this._instance,
    this._then,
  );

  final Input$UserWhereInput _instance;

  final TRes Function(Input$UserWhereInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$UserWhereInput._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as Input$StringFilter?),
        if (id != _undefined) 'id': (id as Input$StringFilter?),
      }));

  CopyWith$Input$StringFilter<TRes> get email {
    final local$email = _instance.email;
    return local$email == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$email, (e) => call(email: e));
  }

  CopyWith$Input$StringFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$StringFilter.stub(_then(_instance))
        : CopyWith$Input$StringFilter(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$UserWhereInput<TRes>
    implements CopyWith$Input$UserWhereInput<TRes> {
  _CopyWithStubImpl$Input$UserWhereInput(this._res);

  TRes _res;

  call({
    Input$StringFilter? email,
    Input$StringFilter? id,
  }) =>
      _res;

  CopyWith$Input$StringFilter<TRes> get email =>
      CopyWith$Input$StringFilter.stub(_res);

  CopyWith$Input$StringFilter<TRes> get id =>
      CopyWith$Input$StringFilter.stub(_res);
}

class Input$UserWhereUniqueInput {
  factory Input$UserWhereUniqueInput({
    String? email,
    String? id,
  }) =>
      Input$UserWhereUniqueInput._({
        if (email != null) r'email': email,
        if (id != null) r'id': id,
      });

  Input$UserWhereUniqueInput._(this._$data);

  factory Input$UserWhereUniqueInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    return Input$UserWhereUniqueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  String? get id => (_$data['id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$UserWhereUniqueInput<Input$UserWhereUniqueInput>
      get copyWith => CopyWith$Input$UserWhereUniqueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserWhereUniqueInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserWhereUniqueInput<TRes> {
  factory CopyWith$Input$UserWhereUniqueInput(
    Input$UserWhereUniqueInput instance,
    TRes Function(Input$UserWhereUniqueInput) then,
  ) = _CopyWithImpl$Input$UserWhereUniqueInput;

  factory CopyWith$Input$UserWhereUniqueInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserWhereUniqueInput;

  TRes call({
    String? email,
    String? id,
  });
}

class _CopyWithImpl$Input$UserWhereUniqueInput<TRes>
    implements CopyWith$Input$UserWhereUniqueInput<TRes> {
  _CopyWithImpl$Input$UserWhereUniqueInput(
    this._instance,
    this._then,
  );

  final Input$UserWhereUniqueInput _instance;

  final TRes Function(Input$UserWhereUniqueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$UserWhereUniqueInput._({
        ..._instance._$data,
        if (email != _undefined) 'email': (email as String?),
        if (id != _undefined) 'id': (id as String?),
      }));
}

class _CopyWithStubImpl$Input$UserWhereUniqueInput<TRes>
    implements CopyWith$Input$UserWhereUniqueInput<TRes> {
  _CopyWithStubImpl$Input$UserWhereUniqueInput(this._res);

  TRes _res;

  call({
    String? email,
    String? id,
  }) =>
      _res;
}

enum Enum$GreWordStatus {
  ALMOST_LEARNT,
  FINISHED_LEARNING,
  MASTERED,
  MEMORY_MODE,
  STARTED_LEARNING,
  STILL_LEARNING,
  $unknown
}

String toJson$Enum$GreWordStatus(Enum$GreWordStatus e) {
  switch (e) {
    case Enum$GreWordStatus.ALMOST_LEARNT:
      return r'ALMOST_LEARNT';
    case Enum$GreWordStatus.FINISHED_LEARNING:
      return r'FINISHED_LEARNING';
    case Enum$GreWordStatus.MASTERED:
      return r'MASTERED';
    case Enum$GreWordStatus.MEMORY_MODE:
      return r'MEMORY_MODE';
    case Enum$GreWordStatus.STARTED_LEARNING:
      return r'STARTED_LEARNING';
    case Enum$GreWordStatus.STILL_LEARNING:
      return r'STILL_LEARNING';
    case Enum$GreWordStatus.$unknown:
      return r'$unknown';
  }
}

Enum$GreWordStatus fromJson$Enum$GreWordStatus(String value) {
  switch (value) {
    case r'ALMOST_LEARNT':
      return Enum$GreWordStatus.ALMOST_LEARNT;
    case r'FINISHED_LEARNING':
      return Enum$GreWordStatus.FINISHED_LEARNING;
    case r'MASTERED':
      return Enum$GreWordStatus.MASTERED;
    case r'MEMORY_MODE':
      return Enum$GreWordStatus.MEMORY_MODE;
    case r'STARTED_LEARNING':
      return Enum$GreWordStatus.STARTED_LEARNING;
    case r'STILL_LEARNING':
      return Enum$GreWordStatus.STILL_LEARNING;
    default:
      return Enum$GreWordStatus.$unknown;
  }
}

enum Enum$SortOrder { asc, desc, $unknown }

String toJson$Enum$SortOrder(Enum$SortOrder e) {
  switch (e) {
    case Enum$SortOrder.asc:
      return r'asc';
    case Enum$SortOrder.desc:
      return r'desc';
    case Enum$SortOrder.$unknown:
      return r'$unknown';
  }
}

Enum$SortOrder fromJson$Enum$SortOrder(String value) {
  switch (value) {
    case r'asc':
      return Enum$SortOrder.asc;
    case r'desc':
      return Enum$SortOrder.desc;
    default:
      return Enum$SortOrder.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
