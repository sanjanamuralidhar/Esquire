// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductDTO> _$productDTOSerializer = new _$ProductDTOSerializer();

class _$ProductDTOSerializer implements StructuredSerializer<ProductDTO> {
  @override
  final Iterable<Type> types = const [ProductDTO, _$ProductDTO];
  @override
  final String wireName = 'ProductDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.brandId != null) {
      result
        ..add('brandId')
        ..add(serializers.serialize(object.brandId,
            specifiedType: const FullType(int)));
    }
    if (object.categoryId != null) {
      result
        ..add('categoryId')
        ..add(serializers.serialize(object.categoryId,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.internalProductId != null) {
      result
        ..add('internalProductId')
        ..add(serializers.serialize(object.internalProductId,
            specifiedType: const FullType(String)));
    }
    if (object.model != null) {
      result
        ..add('model')
        ..add(serializers.serialize(object.model,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.otherDetails != null) {
      result
        ..add('otherDetails')
        ..add(serializers.serialize(object.otherDetails,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(num)));
    }
    if (object.specification != null) {
      result
        ..add('specification')
        ..add(serializers.serialize(object.specification,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'brandId':
          result.brandId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'categoryId':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'internalProductId':
          result.internalProductId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'otherDetails':
          result.otherDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'specification':
          result.specification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDTO extends ProductDTO {
  @override
  final int brandId;
  @override
  final int categoryId;
  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String internalProductId;
  @override
  final String model;
  @override
  final String name;
  @override
  final String otherDetails;
  @override
  final num price;
  @override
  final String specification;

  factory _$ProductDTO([void Function(ProductDTOBuilder) updates]) =>
      (new ProductDTOBuilder()..update(updates)).build();

  _$ProductDTO._(
      {this.brandId,
      this.categoryId,
      this.id,
      this.imageUrl,
      this.internalProductId,
      this.model,
      this.name,
      this.otherDetails,
      this.price,
      this.specification})
      : super._();

  @override
  ProductDTO rebuild(void Function(ProductDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDTOBuilder toBuilder() => new ProductDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDTO &&
        brandId == other.brandId &&
        categoryId == other.categoryId &&
        id == other.id &&
        imageUrl == other.imageUrl &&
        internalProductId == other.internalProductId &&
        model == other.model &&
        name == other.name &&
        otherDetails == other.otherDetails &&
        price == other.price &&
        specification == other.specification;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, brandId.hashCode),
                                        categoryId.hashCode),
                                    id.hashCode),
                                imageUrl.hashCode),
                            internalProductId.hashCode),
                        model.hashCode),
                    name.hashCode),
                otherDetails.hashCode),
            price.hashCode),
        specification.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDTO')
          ..add('brandId', brandId)
          ..add('categoryId', categoryId)
          ..add('id', id)
          ..add('imageUrl', imageUrl)
          ..add('internalProductId', internalProductId)
          ..add('model', model)
          ..add('name', name)
          ..add('otherDetails', otherDetails)
          ..add('price', price)
          ..add('specification', specification))
        .toString();
  }
}

class ProductDTOBuilder implements Builder<ProductDTO, ProductDTOBuilder> {
  _$ProductDTO _$v;

  int _brandId;
  int get brandId => _$this._brandId;
  set brandId(int brandId) => _$this._brandId = brandId;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _internalProductId;
  String get internalProductId => _$this._internalProductId;
  set internalProductId(String internalProductId) =>
      _$this._internalProductId = internalProductId;

  String _model;
  String get model => _$this._model;
  set model(String model) => _$this._model = model;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _otherDetails;
  String get otherDetails => _$this._otherDetails;
  set otherDetails(String otherDetails) => _$this._otherDetails = otherDetails;

  num _price;
  num get price => _$this._price;
  set price(num price) => _$this._price = price;

  String _specification;
  String get specification => _$this._specification;
  set specification(String specification) =>
      _$this._specification = specification;

  ProductDTOBuilder();

  ProductDTOBuilder get _$this {
    if (_$v != null) {
      _brandId = _$v.brandId;
      _categoryId = _$v.categoryId;
      _id = _$v.id;
      _imageUrl = _$v.imageUrl;
      _internalProductId = _$v.internalProductId;
      _model = _$v.model;
      _name = _$v.name;
      _otherDetails = _$v.otherDetails;
      _price = _$v.price;
      _specification = _$v.specification;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDTO;
  }

  @override
  void update(void Function(ProductDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDTO build() {
    final _$result = _$v ??
        new _$ProductDTO._(
            brandId: brandId,
            categoryId: categoryId,
            id: id,
            imageUrl: imageUrl,
            internalProductId: internalProductId,
            model: model,
            name: name,
            otherDetails: otherDetails,
            price: price,
            specification: specification);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
