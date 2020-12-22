// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Feedback> _$feedbackSerializer = new _$FeedbackSerializer();

class _$FeedbackSerializer implements StructuredSerializer<Feedback> {
  @override
  final Iterable<Type> types = const [Feedback, _$Feedback];
  @override
  final String wireName = 'Feedback';

  @override
  Iterable<Object> serialize(Serializers serializers, Feedback object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.branch != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(object.branch,
            specifiedType: const FullType(Branch)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(String)));
    }
    if (object.givenBy != null) {
      result
        ..add('givenBy')
        ..add(serializers.serialize(object.givenBy,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.score != null) {
      result
        ..add('score')
        ..add(serializers.serialize(object.score,
            specifiedType: const FullType(int)));
    }
    if (object.suggestion != null) {
      result
        ..add('suggestion')
        ..add(serializers.serialize(object.suggestion,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Feedback deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'branch':
          result.branch.replace(serializers.deserialize(value,
              specifiedType: const FullType(Branch)) as Branch);
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'givenBy':
          result.givenBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'suggestion':
          result.suggestion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Feedback extends Feedback {
  @override
  final Branch branch;
  @override
  final String data;
  @override
  final String givenBy;
  @override
  final int id;
  @override
  final int score;
  @override
  final String suggestion;

  factory _$Feedback([void Function(FeedbackBuilder) updates]) =>
      (new FeedbackBuilder()..update(updates)).build();

  _$Feedback._(
      {this.branch,
      this.data,
      this.givenBy,
      this.id,
      this.score,
      this.suggestion})
      : super._();

  @override
  Feedback rebuild(void Function(FeedbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackBuilder toBuilder() => new FeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feedback &&
        branch == other.branch &&
        data == other.data &&
        givenBy == other.givenBy &&
        id == other.id &&
        score == other.score &&
        suggestion == other.suggestion;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, branch.hashCode), data.hashCode),
                    givenBy.hashCode),
                id.hashCode),
            score.hashCode),
        suggestion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Feedback')
          ..add('branch', branch)
          ..add('data', data)
          ..add('givenBy', givenBy)
          ..add('id', id)
          ..add('score', score)
          ..add('suggestion', suggestion))
        .toString();
  }
}

class FeedbackBuilder implements Builder<Feedback, FeedbackBuilder> {
  _$Feedback _$v;

  BranchBuilder _branch;
  BranchBuilder get branch => _$this._branch ??= new BranchBuilder();
  set branch(BranchBuilder branch) => _$this._branch = branch;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  String _givenBy;
  String get givenBy => _$this._givenBy;
  set givenBy(String givenBy) => _$this._givenBy = givenBy;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _suggestion;
  String get suggestion => _$this._suggestion;
  set suggestion(String suggestion) => _$this._suggestion = suggestion;

  FeedbackBuilder();

  FeedbackBuilder get _$this {
    if (_$v != null) {
      _branch = _$v.branch?.toBuilder();
      _data = _$v.data;
      _givenBy = _$v.givenBy;
      _id = _$v.id;
      _score = _$v.score;
      _suggestion = _$v.suggestion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feedback other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Feedback;
  }

  @override
  void update(void Function(FeedbackBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Feedback build() {
    _$Feedback _$result;
    try {
      _$result = _$v ??
          new _$Feedback._(
              branch: _branch?.build(),
              data: data,
              givenBy: givenBy,
              id: id,
              score: score,
              suggestion: suggestion);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'branch';
        _branch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Feedback', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
