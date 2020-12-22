// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RatingDTO> _$ratingDTOSerializer = new _$RatingDTOSerializer();

class _$RatingDTOSerializer implements StructuredSerializer<RatingDTO> {
  @override
  final Iterable<Type> types = const [RatingDTO, _$RatingDTO];
  @override
  final String wireName = 'RatingDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, RatingDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.callCenterExectiveId != null) {
      result
        ..add('callCenterExectiveId')
        ..add(serializers.serialize(object.callCenterExectiveId,
            specifiedType: const FullType(int)));
    }
    if (object.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(int)));
    }
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
    if (object.ratedBy != null) {
      result
        ..add('ratedBy')
        ..add(serializers.serialize(object.ratedBy,
            specifiedType: const FullType(String)));
    }
    if (object.serviceExecutiveId != null) {
      result
        ..add('serviceExecutiveId')
        ..add(serializers.serialize(object.serviceExecutiveId,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  RatingDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatingDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'callCenterExectiveId':
          result.callCenterExectiveId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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
        case 'ratedBy':
          result.ratedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceExecutiveId':
          result.serviceExecutiveId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RatingDTO extends RatingDTO {
  @override
  final int callCenterExectiveId;
  @override
  final int customerId;
  @override
  final String data;
  @override
  final int id;
  @override
  final int overallRating;
  @override
  final String ratedBy;
  @override
  final int serviceExecutiveId;

  factory _$RatingDTO([void Function(RatingDTOBuilder) updates]) =>
      (new RatingDTOBuilder()..update(updates)).build();

  _$RatingDTO._(
      {this.callCenterExectiveId,
      this.customerId,
      this.data,
      this.id,
      this.overallRating,
      this.ratedBy,
      this.serviceExecutiveId})
      : super._();

  @override
  RatingDTO rebuild(void Function(RatingDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingDTOBuilder toBuilder() => new RatingDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingDTO &&
        callCenterExectiveId == other.callCenterExectiveId &&
        customerId == other.customerId &&
        data == other.data &&
        id == other.id &&
        overallRating == other.overallRating &&
        ratedBy == other.ratedBy &&
        serviceExecutiveId == other.serviceExecutiveId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, callCenterExectiveId.hashCode),
                            customerId.hashCode),
                        data.hashCode),
                    id.hashCode),
                overallRating.hashCode),
            ratedBy.hashCode),
        serviceExecutiveId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RatingDTO')
          ..add('callCenterExectiveId', callCenterExectiveId)
          ..add('customerId', customerId)
          ..add('data', data)
          ..add('id', id)
          ..add('overallRating', overallRating)
          ..add('ratedBy', ratedBy)
          ..add('serviceExecutiveId', serviceExecutiveId))
        .toString();
  }
}

class RatingDTOBuilder implements Builder<RatingDTO, RatingDTOBuilder> {
  _$RatingDTO _$v;

  int _callCenterExectiveId;
  int get callCenterExectiveId => _$this._callCenterExectiveId;
  set callCenterExectiveId(int callCenterExectiveId) =>
      _$this._callCenterExectiveId = callCenterExectiveId;

  int _customerId;
  int get customerId => _$this._customerId;
  set customerId(int customerId) => _$this._customerId = customerId;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _overallRating;
  int get overallRating => _$this._overallRating;
  set overallRating(int overallRating) => _$this._overallRating = overallRating;

  String _ratedBy;
  String get ratedBy => _$this._ratedBy;
  set ratedBy(String ratedBy) => _$this._ratedBy = ratedBy;

  int _serviceExecutiveId;
  int get serviceExecutiveId => _$this._serviceExecutiveId;
  set serviceExecutiveId(int serviceExecutiveId) =>
      _$this._serviceExecutiveId = serviceExecutiveId;

  RatingDTOBuilder();

  RatingDTOBuilder get _$this {
    if (_$v != null) {
      _callCenterExectiveId = _$v.callCenterExectiveId;
      _customerId = _$v.customerId;
      _data = _$v.data;
      _id = _$v.id;
      _overallRating = _$v.overallRating;
      _ratedBy = _$v.ratedBy;
      _serviceExecutiveId = _$v.serviceExecutiveId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RatingDTO;
  }

  @override
  void update(void Function(RatingDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RatingDTO build() {
    final _$result = _$v ??
        new _$RatingDTO._(
            callCenterExectiveId: callCenterExectiveId,
            customerId: customerId,
            data: data,
            id: id,
            overallRating: overallRating,
            ratedBy: ratedBy,
            serviceExecutiveId: serviceExecutiveId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
