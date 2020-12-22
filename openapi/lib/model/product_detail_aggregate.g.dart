// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_aggregate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductDetailAggregate> _$productDetailAggregateSerializer =
    new _$ProductDetailAggregateSerializer();

class _$ProductDetailAggregateSerializer
    implements StructuredSerializer<ProductDetailAggregate> {
  @override
  final Iterable<Type> types = const [
    ProductDetailAggregate,
    _$ProductDetailAggregate
  ];
  @override
  final String wireName = 'ProductDetailAggregate';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductDetailAggregate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.brandName != null) {
      result
        ..add('brandName')
        ..add(serializers.serialize(object.brandName,
            specifiedType: const FullType(String)));
    }
    if (object.categoryName != null) {
      result
        ..add('categoryName')
        ..add(serializers.serialize(object.categoryName,
            specifiedType: const FullType(String)));
    }
    if (object.productDTO != null) {
      result
        ..add('productDTO')
        ..add(serializers.serialize(object.productDTO,
            specifiedType: const FullType(ProductDTO)));
    }
    return result;
  }

  @override
  ProductDetailAggregate deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDetailAggregateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'brandName':
          result.brandName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categoryName':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productDTO':
          result.productDTO.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductDTO)) as ProductDTO);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDetailAggregate extends ProductDetailAggregate {
  @override
  final String brandName;
  @override
  final String categoryName;
  @override
  final ProductDTO productDTO;

  factory _$ProductDetailAggregate(
          [void Function(ProductDetailAggregateBuilder) updates]) =>
      (new ProductDetailAggregateBuilder()..update(updates)).build();

  _$ProductDetailAggregate._(
      {this.brandName, this.categoryName, this.productDTO})
      : super._();

  @override
  ProductDetailAggregate rebuild(
          void Function(ProductDetailAggregateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailAggregateBuilder toBuilder() =>
      new ProductDetailAggregateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailAggregate &&
        brandName == other.brandName &&
        categoryName == other.categoryName &&
        productDTO == other.productDTO;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, brandName.hashCode), categoryName.hashCode),
        productDTO.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDetailAggregate')
          ..add('brandName', brandName)
          ..add('categoryName', categoryName)
          ..add('productDTO', productDTO))
        .toString();
  }
}

class ProductDetailAggregateBuilder
    implements Builder<ProductDetailAggregate, ProductDetailAggregateBuilder> {
  _$ProductDetailAggregate _$v;

  String _brandName;
  String get brandName => _$this._brandName;
  set brandName(String brandName) => _$this._brandName = brandName;

  String _categoryName;
  String get categoryName => _$this._categoryName;
  set categoryName(String categoryName) => _$this._categoryName = categoryName;

  ProductDTOBuilder _productDTO;
  ProductDTOBuilder get productDTO =>
      _$this._productDTO ??= new ProductDTOBuilder();
  set productDTO(ProductDTOBuilder productDTO) =>
      _$this._productDTO = productDTO;

  ProductDetailAggregateBuilder();

  ProductDetailAggregateBuilder get _$this {
    if (_$v != null) {
      _brandName = _$v.brandName;
      _categoryName = _$v.categoryName;
      _productDTO = _$v.productDTO?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailAggregate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDetailAggregate;
  }

  @override
  void update(void Function(ProductDetailAggregateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDetailAggregate build() {
    _$ProductDetailAggregate _$result;
    try {
      _$result = _$v ??
          new _$ProductDetailAggregate._(
              brandName: brandName,
              categoryName: categoryName,
              productDTO: _productDTO?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'productDTO';
        _productDTO?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductDetailAggregate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
