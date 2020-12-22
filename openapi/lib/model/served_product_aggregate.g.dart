// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'served_product_aggregate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServedProductAggregate> _$servedProductAggregateSerializer =
    new _$ServedProductAggregateSerializer();

class _$ServedProductAggregateSerializer
    implements StructuredSerializer<ServedProductAggregate> {
  @override
  final Iterable<Type> types = const [
    ServedProductAggregate,
    _$ServedProductAggregate
  ];
  @override
  final String wireName = 'ServedProductAggregate';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ServedProductAggregate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.productDetailAggregate != null) {
      result
        ..add('productDetailAggregate')
        ..add(serializers.serialize(object.productDetailAggregate,
            specifiedType: const FullType(ProductDetailAggregate)));
    }
    if (object.servedProductDTO != null) {
      result
        ..add('servedProductDTO')
        ..add(serializers.serialize(object.servedProductDTO,
            specifiedType: const FullType(ServedProductDTO)));
    }
    return result;
  }

  @override
  ServedProductAggregate deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServedProductAggregateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'productDetailAggregate':
          result.productDetailAggregate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProductDetailAggregate))
              as ProductDetailAggregate);
          break;
        case 'servedProductDTO':
          result.servedProductDTO.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ServedProductDTO))
              as ServedProductDTO);
          break;
      }
    }

    return result.build();
  }
}

class _$ServedProductAggregate extends ServedProductAggregate {
  @override
  final ProductDetailAggregate productDetailAggregate;
  @override
  final ServedProductDTO servedProductDTO;

  factory _$ServedProductAggregate(
          [void Function(ServedProductAggregateBuilder) updates]) =>
      (new ServedProductAggregateBuilder()..update(updates)).build();

  _$ServedProductAggregate._(
      {this.productDetailAggregate, this.servedProductDTO})
      : super._();

  @override
  ServedProductAggregate rebuild(
          void Function(ServedProductAggregateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServedProductAggregateBuilder toBuilder() =>
      new ServedProductAggregateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServedProductAggregate &&
        productDetailAggregate == other.productDetailAggregate &&
        servedProductDTO == other.servedProductDTO;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, productDetailAggregate.hashCode), servedProductDTO.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServedProductAggregate')
          ..add('productDetailAggregate', productDetailAggregate)
          ..add('servedProductDTO', servedProductDTO))
        .toString();
  }
}

class ServedProductAggregateBuilder
    implements Builder<ServedProductAggregate, ServedProductAggregateBuilder> {
  _$ServedProductAggregate _$v;

  ProductDetailAggregateBuilder _productDetailAggregate;
  ProductDetailAggregateBuilder get productDetailAggregate =>
      _$this._productDetailAggregate ??= new ProductDetailAggregateBuilder();
  set productDetailAggregate(
          ProductDetailAggregateBuilder productDetailAggregate) =>
      _$this._productDetailAggregate = productDetailAggregate;

  ServedProductDTOBuilder _servedProductDTO;
  ServedProductDTOBuilder get servedProductDTO =>
      _$this._servedProductDTO ??= new ServedProductDTOBuilder();
  set servedProductDTO(ServedProductDTOBuilder servedProductDTO) =>
      _$this._servedProductDTO = servedProductDTO;

  ServedProductAggregateBuilder();

  ServedProductAggregateBuilder get _$this {
    if (_$v != null) {
      _productDetailAggregate = _$v.productDetailAggregate?.toBuilder();
      _servedProductDTO = _$v.servedProductDTO?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServedProductAggregate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServedProductAggregate;
  }

  @override
  void update(void Function(ServedProductAggregateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServedProductAggregate build() {
    _$ServedProductAggregate _$result;
    try {
      _$result = _$v ??
          new _$ServedProductAggregate._(
              productDetailAggregate: _productDetailAggregate?.build(),
              servedProductDTO: _servedProductDTO?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'productDetailAggregate';
        _productDetailAggregate?.build();
        _$failedField = 'servedProductDTO';
        _servedProductDTO?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ServedProductAggregate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
