// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Warranty> _$warrantySerializer = new _$WarrantySerializer();

class _$WarrantySerializer implements StructuredSerializer<Warranty> {
  @override
  final Iterable<Type> types = const [Warranty, _$Warranty];
  @override
  final String wireName = 'Warranty';

  @override
  Iterable<Object> serialize(Serializers serializers, Warranty object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.periodInMonths != null) {
      result
        ..add('periodInMonths')
        ..add(serializers.serialize(object.periodInMonths,
            specifiedType: const FullType(int)));
    }
    if (object.periodInYear != null) {
      result
        ..add('periodInYear')
        ..add(serializers.serialize(object.periodInYear,
            specifiedType: const FullType(int)));
    }
    if (object.warrantyHistories != null) {
      result
        ..add('warrantyHistories')
        ..add(serializers.serialize(object.warrantyHistories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(WarrantyHistory)])));
    }
    return result;
  }

  @override
  Warranty deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WarrantyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'periodInMonths':
          result.periodInMonths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'periodInYear':
          result.periodInYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'warrantyHistories':
          result.warrantyHistories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WarrantyHistory)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Warranty extends Warranty {
  @override
  final String description;
  @override
  final int id;
  @override
  final String name;
  @override
  final int periodInMonths;
  @override
  final int periodInYear;
  @override
  final BuiltList<WarrantyHistory> warrantyHistories;

  factory _$Warranty([void Function(WarrantyBuilder) updates]) =>
      (new WarrantyBuilder()..update(updates)).build();

  _$Warranty._(
      {this.description,
      this.id,
      this.name,
      this.periodInMonths,
      this.periodInYear,
      this.warrantyHistories})
      : super._();

  @override
  Warranty rebuild(void Function(WarrantyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WarrantyBuilder toBuilder() => new WarrantyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Warranty &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        periodInMonths == other.periodInMonths &&
        periodInYear == other.periodInYear &&
        warrantyHistories == other.warrantyHistories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, description.hashCode), id.hashCode),
                    name.hashCode),
                periodInMonths.hashCode),
            periodInYear.hashCode),
        warrantyHistories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Warranty')
          ..add('description', description)
          ..add('id', id)
          ..add('name', name)
          ..add('periodInMonths', periodInMonths)
          ..add('periodInYear', periodInYear)
          ..add('warrantyHistories', warrantyHistories))
        .toString();
  }
}

class WarrantyBuilder implements Builder<Warranty, WarrantyBuilder> {
  _$Warranty _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _periodInMonths;
  int get periodInMonths => _$this._periodInMonths;
  set periodInMonths(int periodInMonths) =>
      _$this._periodInMonths = periodInMonths;

  int _periodInYear;
  int get periodInYear => _$this._periodInYear;
  set periodInYear(int periodInYear) => _$this._periodInYear = periodInYear;

  ListBuilder<WarrantyHistory> _warrantyHistories;
  ListBuilder<WarrantyHistory> get warrantyHistories =>
      _$this._warrantyHistories ??= new ListBuilder<WarrantyHistory>();
  set warrantyHistories(ListBuilder<WarrantyHistory> warrantyHistories) =>
      _$this._warrantyHistories = warrantyHistories;

  WarrantyBuilder();

  WarrantyBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _name = _$v.name;
      _periodInMonths = _$v.periodInMonths;
      _periodInYear = _$v.periodInYear;
      _warrantyHistories = _$v.warrantyHistories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Warranty other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Warranty;
  }

  @override
  void update(void Function(WarrantyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Warranty build() {
    _$Warranty _$result;
    try {
      _$result = _$v ??
          new _$Warranty._(
              description: description,
              id: id,
              name: name,
              periodInMonths: periodInMonths,
              periodInYear: periodInYear,
              warrantyHistories: _warrantyHistories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'warrantyHistories';
        _warrantyHistories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Warranty', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
