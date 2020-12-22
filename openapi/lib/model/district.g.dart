// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<District> _$districtSerializer = new _$DistrictSerializer();

class _$DistrictSerializer implements StructuredSerializer<District> {
  @override
  final Iterable<Type> types = const [District, _$District];
  @override
  final String wireName = 'District';

  @override
  Iterable<Object> serialize(Serializers serializers, District object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.district != null) {
      result
        ..add('district')
        ..add(serializers.serialize(object.district,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  District deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DistrictBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$District extends District {
  @override
  final String district;
  @override
  final int id;

  factory _$District([void Function(DistrictBuilder) updates]) =>
      (new DistrictBuilder()..update(updates)).build();

  _$District._({this.district, this.id}) : super._();

  @override
  District rebuild(void Function(DistrictBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DistrictBuilder toBuilder() => new DistrictBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is District && district == other.district && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, district.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('District')
          ..add('district', district)
          ..add('id', id))
        .toString();
  }
}

class DistrictBuilder implements Builder<District, DistrictBuilder> {
  _$District _$v;

  String _district;
  String get district => _$this._district;
  set district(String district) => _$this._district = district;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DistrictBuilder();

  DistrictBuilder get _$this {
    if (_$v != null) {
      _district = _$v.district;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(District other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$District;
  }

  @override
  void update(void Function(DistrictBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$District build() {
    final _$result = _$v ?? new _$District._(district: district, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
