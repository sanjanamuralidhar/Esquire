// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'served_product_warranty.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServedProductWarranty> _$servedProductWarrantySerializer =
    new _$ServedProductWarrantySerializer();

class _$ServedProductWarrantySerializer
    implements StructuredSerializer<ServedProductWarranty> {
  @override
  final Iterable<Type> types = const [
    ServedProductWarranty,
    _$ServedProductWarranty
  ];
  @override
  final String wireName = 'ServedProductWarranty';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ServedProductWarranty object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.endDate != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(object.endDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.internalWarrantyNumber != null) {
      result
        ..add('internalWarrantyNumber')
        ..add(serializers.serialize(object.internalWarrantyNumber,
            specifiedType: const FullType(String)));
    }
    if (object.productWarranty != null) {
      result
        ..add('productWarranty')
        ..add(serializers.serialize(object.productWarranty,
            specifiedType: const FullType(ProductWarranty)));
    }
    if (object.remarks != null) {
      result
        ..add('remarks')
        ..add(serializers.serialize(object.remarks,
            specifiedType: const FullType(String)));
    }
    if (object.startDate != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(object.startDate,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  ServedProductWarranty deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServedProductWarrantyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'internalWarrantyNumber':
          result.internalWarrantyNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productWarranty':
          result.productWarranty.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProductWarranty))
              as ProductWarranty);
          break;
        case 'remarks':
          result.remarks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$ServedProductWarranty extends ServedProductWarranty {
  @override
  final DateTime endDate;
  @override
  final int id;
  @override
  final String internalWarrantyNumber;
  @override
  final ProductWarranty productWarranty;
  @override
  final String remarks;
  @override
  final DateTime startDate;

  factory _$ServedProductWarranty(
          [void Function(ServedProductWarrantyBuilder) updates]) =>
      (new ServedProductWarrantyBuilder()..update(updates)).build();

  _$ServedProductWarranty._(
      {this.endDate,
      this.id,
      this.internalWarrantyNumber,
      this.productWarranty,
      this.remarks,
      this.startDate})
      : super._();

  @override
  ServedProductWarranty rebuild(
          void Function(ServedProductWarrantyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServedProductWarrantyBuilder toBuilder() =>
      new ServedProductWarrantyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServedProductWarranty &&
        endDate == other.endDate &&
        id == other.id &&
        internalWarrantyNumber == other.internalWarrantyNumber &&
        productWarranty == other.productWarranty &&
        remarks == other.remarks &&
        startDate == other.startDate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, endDate.hashCode), id.hashCode),
                    internalWarrantyNumber.hashCode),
                productWarranty.hashCode),
            remarks.hashCode),
        startDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServedProductWarranty')
          ..add('endDate', endDate)
          ..add('id', id)
          ..add('internalWarrantyNumber', internalWarrantyNumber)
          ..add('productWarranty', productWarranty)
          ..add('remarks', remarks)
          ..add('startDate', startDate))
        .toString();
  }
}

class ServedProductWarrantyBuilder
    implements Builder<ServedProductWarranty, ServedProductWarrantyBuilder> {
  _$ServedProductWarranty _$v;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _internalWarrantyNumber;
  String get internalWarrantyNumber => _$this._internalWarrantyNumber;
  set internalWarrantyNumber(String internalWarrantyNumber) =>
      _$this._internalWarrantyNumber = internalWarrantyNumber;

  ProductWarrantyBuilder _productWarranty;
  ProductWarrantyBuilder get productWarranty =>
      _$this._productWarranty ??= new ProductWarrantyBuilder();
  set productWarranty(ProductWarrantyBuilder productWarranty) =>
      _$this._productWarranty = productWarranty;

  String _remarks;
  String get remarks => _$this._remarks;
  set remarks(String remarks) => _$this._remarks = remarks;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  ServedProductWarrantyBuilder();

  ServedProductWarrantyBuilder get _$this {
    if (_$v != null) {
      _endDate = _$v.endDate;
      _id = _$v.id;
      _internalWarrantyNumber = _$v.internalWarrantyNumber;
      _productWarranty = _$v.productWarranty?.toBuilder();
      _remarks = _$v.remarks;
      _startDate = _$v.startDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServedProductWarranty other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServedProductWarranty;
  }

  @override
  void update(void Function(ServedProductWarrantyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServedProductWarranty build() {
    _$ServedProductWarranty _$result;
    try {
      _$result = _$v ??
          new _$ServedProductWarranty._(
              endDate: endDate,
              id: id,
              internalWarrantyNumber: internalWarrantyNumber,
              productWarranty: _productWarranty?.build(),
              remarks: remarks,
              startDate: startDate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'productWarranty';
        _productWarranty?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ServedProductWarranty', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
