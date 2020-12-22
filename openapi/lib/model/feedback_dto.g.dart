// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackDTO> _$feedbackDTOSerializer = new _$FeedbackDTOSerializer();

class _$FeedbackDTOSerializer implements StructuredSerializer<FeedbackDTO> {
  @override
  final Iterable<Type> types = const [FeedbackDTO, _$FeedbackDTO];
  @override
  final String wireName = 'FeedbackDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedbackDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.branchId != null) {
      result
        ..add('branchId')
        ..add(serializers.serialize(object.branchId,
            specifiedType: const FullType(int)));
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
  FeedbackDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'branchId':
          result.branchId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$FeedbackDTO extends FeedbackDTO {
  @override
  final int branchId;
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

  factory _$FeedbackDTO([void Function(FeedbackDTOBuilder) updates]) =>
      (new FeedbackDTOBuilder()..update(updates)).build();

  _$FeedbackDTO._(
      {this.branchId,
      this.data,
      this.givenBy,
      this.id,
      this.score,
      this.suggestion})
      : super._();

  @override
  FeedbackDTO rebuild(void Function(FeedbackDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackDTOBuilder toBuilder() => new FeedbackDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackDTO &&
        branchId == other.branchId &&
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
                $jc($jc($jc(0, branchId.hashCode), data.hashCode),
                    givenBy.hashCode),
                id.hashCode),
            score.hashCode),
        suggestion.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedbackDTO')
          ..add('branchId', branchId)
          ..add('data', data)
          ..add('givenBy', givenBy)
          ..add('id', id)
          ..add('score', score)
          ..add('suggestion', suggestion))
        .toString();
  }
}

class FeedbackDTOBuilder implements Builder<FeedbackDTO, FeedbackDTOBuilder> {
  _$FeedbackDTO _$v;

  int _branchId;
  int get branchId => _$this._branchId;
  set branchId(int branchId) => _$this._branchId = branchId;

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

  FeedbackDTOBuilder();

  FeedbackDTOBuilder get _$this {
    if (_$v != null) {
      _branchId = _$v.branchId;
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
  void replace(FeedbackDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedbackDTO;
  }

  @override
  void update(void Function(FeedbackDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedbackDTO build() {
    final _$result = _$v ??
        new _$FeedbackDTO._(
            branchId: branchId,
            data: data,
            givenBy: givenBy,
            id: id,
            score: score,
            suggestion: suggestion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
