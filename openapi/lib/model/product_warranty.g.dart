// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_warranty.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductWarranty> _$productWarrantySerializer =
    new _$ProductWarrantySerializer();

class _$ProductWarrantySerializer
    implements StructuredSerializer<ProductWarranty> {
  @override
  final Iterable<Type> types = const [ProductWarranty, _$ProductWarranty];
  @override
  final String wireName = 'ProductWarranty';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductWarranty object,
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
    if (object.warrantyType != null) {
      result
        ..add('warrantyType')
        ..add(serializers.serialize(object.warrantyType,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductWarranty deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductWarrantyBuilder();

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
        case 'warrantyType':
          result.warrantyType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductWarranty extends ProductWarranty {
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
  final String warrantyType;

  factory _$ProductWarranty([void Function(ProductWarrantyBuilder) updates]) =>
      (new ProductWarrantyBuilder()..update(updates)).build();

  _$ProductWarranty._(
      {this.description,
      this.id,
      this.name,
      this.periodInMonths,
      this.periodInYear,
      this.warrantyType})
      : super._();

  @override
  ProductWarranty rebuild(void Function(ProductWarrantyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductWarrantyBuilder toBuilder() =>
      new ProductWarrantyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductWarranty &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        periodInMonths == other.periodInMonths &&
        periodInYear == other.periodInYear &&
        warrantyType == other.warrantyType;
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
        warrantyType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductWarranty')
          ..add('description', description)
          ..add('id', id)
          ..add('name', name)
          ..add('periodInMonths', periodInMonths)
          ..add('periodInYear', periodInYear)
          ..add('warrantyType', warrantyType))
        .toString();
  }
}

class ProductWarrantyBuilder
    implements Builder<ProductWarranty, ProductWarrantyBuilder> {
  _$ProductWarranty _$v;

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

  String _warrantyType;
  String get warrantyType => _$this._warrantyType;
  set warrantyType(String warrantyType) => _$this._warrantyType = warrantyType;

  ProductWarrantyBuilder();

  ProductWarrantyBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _id = _$v.id;
      _name = _$v.name;
      _periodInMonths = _$v.periodInMonths;
      _periodInYear = _$v.periodInYear;
      _warrantyType = _$v.warrantyType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductWarranty other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductWarranty;
  }

  @override
  void update(void Function(ProductWarrantyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductWarranty build() {
    final _$result = _$v ??
        new _$ProductWarranty._(
            description: description,
            id: id,
            name: name,
            periodInMonths: periodInMonths,
            periodInYear: periodInYear,
            warrantyType: warrantyType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
