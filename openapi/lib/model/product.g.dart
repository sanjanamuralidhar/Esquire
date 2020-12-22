// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Product> _$productSerializer = new _$ProductSerializer();

class _$ProductSerializer implements StructuredSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];
  @override
  final String wireName = 'Product';

  @override
  Iterable<Object> serialize(Serializers serializers, Product object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.brand != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(object.brand,
            specifiedType: const FullType(Brand)));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(Category)));
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
    if (object.warranties != null) {
      result
        ..add('warranties')
        ..add(serializers.serialize(object.warranties,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductWarranty)])));
    }
    return result;
  }

  @override
  Product deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'brand':
          result.brand.replace(serializers.deserialize(value,
              specifiedType: const FullType(Brand)) as Brand);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
              specifiedType: const FullType(Category)) as Category);
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
        case 'warranties':
          result.warranties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductWarranty)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Product extends Product {
  @override
  final Brand brand;
  @override
  final Category category;
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
  @override
  final BuiltList<ProductWarranty> warranties;

  factory _$Product([void Function(ProductBuilder) updates]) =>
      (new ProductBuilder()..update(updates)).build();

  _$Product._(
      {this.brand,
      this.category,
      this.id,
      this.imageUrl,
      this.internalProductId,
      this.model,
      this.name,
      this.otherDetails,
      this.price,
      this.specification,
      this.warranties})
      : super._();

  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        brand == other.brand &&
        category == other.category &&
        id == other.id &&
        imageUrl == other.imageUrl &&
        internalProductId == other.internalProductId &&
        model == other.model &&
        name == other.name &&
        otherDetails == other.otherDetails &&
        price == other.price &&
        specification == other.specification &&
        warranties == other.warranties;
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
                                    $jc(
                                        $jc($jc(0, brand.hashCode),
                                            category.hashCode),
                                        id.hashCode),
                                    imageUrl.hashCode),
                                internalProductId.hashCode),
                            model.hashCode),
                        name.hashCode),
                    otherDetails.hashCode),
                price.hashCode),
            specification.hashCode),
        warranties.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('brand', brand)
          ..add('category', category)
          ..add('id', id)
          ..add('imageUrl', imageUrl)
          ..add('internalProductId', internalProductId)
          ..add('model', model)
          ..add('name', name)
          ..add('otherDetails', otherDetails)
          ..add('price', price)
          ..add('specification', specification)
          ..add('warranties', warranties))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product _$v;

  BrandBuilder _brand;
  BrandBuilder get brand => _$this._brand ??= new BrandBuilder();
  set brand(BrandBuilder brand) => _$this._brand = brand;

  CategoryBuilder _category;
  CategoryBuilder get category => _$this._category ??= new CategoryBuilder();
  set category(CategoryBuilder category) => _$this._category = category;

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

  ListBuilder<ProductWarranty> _warranties;
  ListBuilder<ProductWarranty> get warranties =>
      _$this._warranties ??= new ListBuilder<ProductWarranty>();
  set warranties(ListBuilder<ProductWarranty> warranties) =>
      _$this._warranties = warranties;

  ProductBuilder();

  ProductBuilder get _$this {
    if (_$v != null) {
      _brand = _$v.brand?.toBuilder();
      _category = _$v.category?.toBuilder();
      _id = _$v.id;
      _imageUrl = _$v.imageUrl;
      _internalProductId = _$v.internalProductId;
      _model = _$v.model;
      _name = _$v.name;
      _otherDetails = _$v.otherDetails;
      _price = _$v.price;
      _specification = _$v.specification;
      _warranties = _$v.warranties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    _$Product _$result;
    try {
      _$result = _$v ??
          new _$Product._(
              brand: _brand?.build(),
              category: _category?.build(),
              id: id,
              imageUrl: imageUrl,
              internalProductId: internalProductId,
              model: model,
              name: name,
              otherDetails: otherDetails,
              price: price,
              specification: specification,
              warranties: _warranties?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'brand';
        _brand?.build();
        _$failedField = 'category';
        _category?.build();

        _$failedField = 'warranties';
        _warranties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Product', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
