// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overall_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OverallRating> _$overallRatingSerializer =
    new _$OverallRatingSerializer();

class _$OverallRatingSerializer implements StructuredSerializer<OverallRating> {
  @override
  final Iterable<Type> types = const [OverallRating, _$OverallRating];
  @override
  final String wireName = 'OverallRating';

  @override
  Iterable<Object> serialize(Serializers serializers, OverallRating object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.overallRating != null) {
      result
        ..add('overallRating')
        ..add(serializers.serialize(object.overallRating,
            specifiedType: const FullType(int)));
    }
    if (object.totalFeedbacks != null) {
      result
        ..add('totalFeedbacks')
        ..add(serializers.serialize(object.totalFeedbacks,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  OverallRating deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OverallRatingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'overallRating':
          result.overallRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'totalFeedbacks':
          result.totalFeedbacks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$OverallRating extends OverallRating {
  @override
  final String data;
  @override
  final int id;
  @override
  final int overallRating;
  @override
  final int totalFeedbacks;

  factory _$OverallRating([void Function(OverallRatingBuilder) updates]) =>
      (new OverallRatingBuilder()..update(updates)).build();

  _$OverallRating._(
      {this.data, this.id, this.overallRating, this.totalFeedbacks})
      : super._();

  @override
  OverallRating rebuild(void Function(OverallRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OverallRatingBuilder toBuilder() => new OverallRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OverallRating &&
        data == other.data &&
        id == other.id &&
        overallRating == other.overallRating &&
        totalFeedbacks == other.totalFeedbacks;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, data.hashCode), id.hashCode), overallRating.hashCode),
        totalFeedbacks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OverallRating')
          ..add('data', data)
          ..add('id', id)
          ..add('overallRating', overallRating)
          ..add('totalFeedbacks', totalFeedbacks))
        .toString();
  }
}

class OverallRatingBuilder
    implements Builder<OverallRating, OverallRatingBuilder> {
  _$OverallRating _$v;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _overallRating;
  int get overallRating => _$this._overallRating;
  set overallRating(int overallRating) => _$this._overallRating = overallRating;

  int _totalFeedbacks;
  int get totalFeedbacks => _$this._totalFeedbacks;
  set totalFeedbacks(int totalFeedbacks) =>
      _$this._totalFeedbacks = totalFeedbacks;

  OverallRatingBuilder();

  OverallRatingBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data;
      _id = _$v.id;
      _overallRating = _$v.overallRating;
      _totalFeedbacks = _$v.totalFeedbacks;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OverallRating other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OverallRating;
  }

  @override
  void update(void Function(OverallRatingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OverallRating build() {
    final _$result = _$v ??
        new _$OverallRating._(
            data: data,
            id: id,
            overallRating: overallRating,
            totalFeedbacks: totalFeedbacks);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
