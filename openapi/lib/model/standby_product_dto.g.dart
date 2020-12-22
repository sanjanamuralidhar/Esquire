// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standby_product_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StandbyProductDTO> _$standbyProductDTOSerializer =
    new _$StandbyProductDTOSerializer();

class _$StandbyProductDTOSerializer
    implements StructuredSerializer<StandbyProductDTO> {
  @override
  final Iterable<Type> types = const [StandbyProductDTO, _$StandbyProductDTO];
  @override
  final String wireName = 'StandbyProductDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, StandbyProductDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.brand != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(object.brand,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.model != null) {
      result
        ..add('model')
        ..add(serializers.serialize(object.model,
            specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(String)));
    }
    if (object.serialNumber != null) {
      result
        ..add('serialNumber')
        ..add(serializers.serialize(object.serialNumber,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StandbyProductDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StandbyProductDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serialNumber':
          result.serialNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StandbyProductDTO extends StandbyProductDTO {
  @override
  final String brand;
  @override
  final int id;
  @override
  final String model;
  @override
  final String productId;
  @override
  final String serialNumber;

  factory _$StandbyProductDTO(
          [void Function(StandbyProductDTOBuilder) updates]) =>
      (new StandbyProductDTOBuilder()..update(updates)).build();

  _$StandbyProductDTO._(
      {this.brand, this.id, this.model, this.productId, this.serialNumber})
      : super._();

  @override
  StandbyProductDTO rebuild(void Function(StandbyProductDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StandbyProductDTOBuilder toBuilder() =>
      new StandbyProductDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StandbyProductDTO &&
        brand == other.brand &&
        id == other.id &&
        model == other.model &&
        productId == other.productId &&
        serialNumber == other.serialNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, brand.hashCode), id.hashCode), model.hashCode),
            productId.hashCode),
        serialNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StandbyProductDTO')
          ..add('brand', brand)
          ..add('id', id)
          ..add('model', model)
          ..add('productId', productId)
          ..add('serialNumber', serialNumber))
        .toString();
  }
}

class StandbyProductDTOBuilder
    implements Builder<StandbyProductDTO, StandbyProductDTOBuilder> {
  _$StandbyProductDTO _$v;

  String _brand;
  String get brand => _$this._brand;
  set brand(String brand) => _$this._brand = brand;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _model;
  String get model => _$this._model;
  set model(String model) => _$this._model = model;

  String _productId;
  String get productId => _$this._productId;
  set productId(String productId) => _$this._productId = productId;

  String _serialNumber;
  String get serialNumber => _$this._serialNumber;
  set serialNumber(String serialNumber) => _$this._serialNumber = serialNumber;

  StandbyProductDTOBuilder();

  StandbyProductDTOBuilder get _$this {
    if (_$v != null) {
      _brand = _$v.brand;
      _id = _$v.id;
      _model = _$v.model;
      _productId = _$v.productId;
      _serialNumber = _$v.serialNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StandbyProductDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StandbyProductDTO;
  }

  @override
  void update(void Function(StandbyProductDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StandbyProductDTO build() {
    final _$result = _$v ??
        new _$StandbyProductDTO._(
            brand: brand,
            id: id,
            model: model,
            productId: productId,
            serialNumber: serialNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
