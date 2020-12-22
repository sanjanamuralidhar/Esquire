// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'served_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServedProduct> _$servedProductSerializer =
    new _$ServedProductSerializer();

class _$ServedProductSerializer implements StructuredSerializer<ServedProduct> {
  @override
  final Iterable<Type> types = const [ServedProduct, _$ServedProduct];
  @override
  final String wireName = 'ServedProduct';

  @override
  Iterable<Object> serialize(Serializers serializers, ServedProduct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.customSerialNumber != null) {
      result
        ..add('customSerialNumber')
        ..add(serializers.serialize(object.customSerialNumber,
            specifiedType: const FullType(String)));
    }
    if (object.customer != null) {
      result
        ..add('customer')
        ..add(serializers.serialize(object.customer,
            specifiedType: const FullType(Customer)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.invoiceNo != null) {
      result
        ..add('invoiceNo')
        ..add(serializers.serialize(object.invoiceNo,
            specifiedType: const FullType(String)));
    }
    if (object.mainProduct != null) {
      result
        ..add('mainProduct')
        ..add(serializers.serialize(object.mainProduct,
            specifiedType: const FullType(ServedProduct)));
    }
    if (object.product != null) {
      result
        ..add('product')
        ..add(serializers.serialize(object.product,
            specifiedType: const FullType(Product)));
    }
    if (object.productLocation != null) {
      result
        ..add('productLocation')
        ..add(serializers.serialize(object.productLocation,
            specifiedType: const FullType(Address)));
    }
    if (object.purchasedDate != null) {
      result
        ..add('purchasedDate')
        ..add(serializers.serialize(object.purchasedDate,
            specifiedType: const FullType(DateTime)));
    }
    if (object.purchasedFromHere != null) {
      result
        ..add('purchasedFromHere')
        ..add(serializers.serialize(object.purchasedFromHere,
            specifiedType: const FullType(bool)));
    }
    if (object.purchasedPrice != null) {
      result
        ..add('purchasedPrice')
        ..add(serializers.serialize(object.purchasedPrice,
            specifiedType: const FullType(num)));
    }
    if (object.serialNumber != null) {
      result
        ..add('serialNumber')
        ..add(serializers.serialize(object.serialNumber,
            specifiedType: const FullType(String)));
    }
    if (object.serviceType != null) {
      result
        ..add('serviceType')
        ..add(serializers.serialize(object.serviceType,
            specifiedType: const FullType(String)));
    }
    if (object.specification != null) {
      result
        ..add('specification')
        ..add(serializers.serialize(object.specification,
            specifiedType: const FullType(String)));
    }
    if (object.subProducts != null) {
      result
        ..add('subProducts')
        ..add(serializers.serialize(object.subProducts,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ServedProduct)])));
    }
    if (object.warranties != null) {
      result
        ..add('warranties')
        ..add(serializers.serialize(object.warranties,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ServedProductWarranty)])));
    }
    return result;
  }

  @override
  ServedProduct deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServedProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'customSerialNumber':
          result.customSerialNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customer':
          result.customer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Customer)) as Customer);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'invoiceNo':
          result.invoiceNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainProduct':
          result.mainProduct.replace(serializers.deserialize(value,
              specifiedType: const FullType(ServedProduct)) as ServedProduct);
          break;
        case 'product':
          result.product.replace(serializers.deserialize(value,
              specifiedType: const FullType(Product)) as Product);
          break;
        case 'productLocation':
          result.productLocation.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'purchasedDate':
          result.purchasedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'purchasedFromHere':
          result.purchasedFromHere = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'purchasedPrice':
          result.purchasedPrice = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'serialNumber':
          result.serialNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceType':
          result.serviceType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'specification':
          result.specification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subProducts':
          result.subProducts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ServedProduct)]))
              as BuiltList<Object>);
          break;
        case 'warranties':
          result.warranties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ServedProductWarranty)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ServedProduct extends ServedProduct {
  @override
  final String customSerialNumber;
  @override
  final Customer customer;
  @override
  final int id;
  @override
  final String invoiceNo;
  @override
  final ServedProduct mainProduct;
  @override
  final Product product;
  @override
  final Address productLocation;
  @override
  final DateTime purchasedDate;
  @override
  final bool purchasedFromHere;
  @override
  final num purchasedPrice;
  @override
  final String serialNumber;
  @override
  final String serviceType;
  @override
  final String specification;
  @override
  final BuiltList<ServedProduct> subProducts;
  @override
  final BuiltList<ServedProductWarranty> warranties;

  factory _$ServedProduct([void Function(ServedProductBuilder) updates]) =>
      (new ServedProductBuilder()..update(updates)).build();

  _$ServedProduct._(
      {this.customSerialNumber,
      this.customer,
      this.id,
      this.invoiceNo,
      this.mainProduct,
      this.product,
      this.productLocation,
      this.purchasedDate,
      this.purchasedFromHere,
      this.purchasedPrice,
      this.serialNumber,
      this.serviceType,
      this.specification,
      this.subProducts,
      this.warranties})
      : super._();

  @override
  ServedProduct rebuild(void Function(ServedProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServedProductBuilder toBuilder() => new ServedProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServedProduct &&
        customSerialNumber == other.customSerialNumber &&
        customer == other.customer &&
        id == other.id &&
        invoiceNo == other.invoiceNo &&
        mainProduct == other.mainProduct &&
        product == other.product &&
        productLocation == other.productLocation &&
        purchasedDate == other.purchasedDate &&
        purchasedFromHere == other.purchasedFromHere &&
        purchasedPrice == other.purchasedPrice &&
        serialNumber == other.serialNumber &&
        serviceType == other.serviceType &&
        specification == other.specification &&
        subProducts == other.subProducts &&
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                customSerialNumber
                                                                    .hashCode),
                                                            customer.hashCode),
                                                        id.hashCode),
                                                    invoiceNo.hashCode),
                                                mainProduct.hashCode),
                                            product.hashCode),
                                        productLocation.hashCode),
                                    purchasedDate.hashCode),
                                purchasedFromHere.hashCode),
                            purchasedPrice.hashCode),
                        serialNumber.hashCode),
                    serviceType.hashCode),
                specification.hashCode),
            subProducts.hashCode),
        warranties.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServedProduct')
          ..add('customSerialNumber', customSerialNumber)
          ..add('customer', customer)
          ..add('id', id)
          ..add('invoiceNo', invoiceNo)
          ..add('mainProduct', mainProduct)
          ..add('product', product)
          ..add('productLocation', productLocation)
          ..add('purchasedDate', purchasedDate)
          ..add('purchasedFromHere', purchasedFromHere)
          ..add('purchasedPrice', purchasedPrice)
          ..add('serialNumber', serialNumber)
          ..add('serviceType', serviceType)
          ..add('specification', specification)
          ..add('subProducts', subProducts)
          ..add('warranties', warranties))
        .toString();
  }
}

class ServedProductBuilder
    implements Builder<ServedProduct, ServedProductBuilder> {
  _$ServedProduct _$v;

  String _customSerialNumber;
  String get customSerialNumber => _$this._customSerialNumber;
  set customSerialNumber(String customSerialNumber) =>
      _$this._customSerialNumber = customSerialNumber;

  CustomerBuilder _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder customer) => _$this._customer = customer;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _invoiceNo;
  String get invoiceNo => _$this._invoiceNo;
  set invoiceNo(String invoiceNo) => _$this._invoiceNo = invoiceNo;

  ServedProductBuilder _mainProduct;
  ServedProductBuilder get mainProduct =>
      _$this._mainProduct ??= new ServedProductBuilder();
  set mainProduct(ServedProductBuilder mainProduct) =>
      _$this._mainProduct = mainProduct;

  ProductBuilder _product;
  ProductBuilder get product => _$this._product ??= new ProductBuilder();
  set product(ProductBuilder product) => _$this._product = product;

  AddressBuilder _productLocation;
  AddressBuilder get productLocation =>
      _$this._productLocation ??= new AddressBuilder();
  set productLocation(AddressBuilder productLocation) =>
      _$this._productLocation = productLocation;

  DateTime _purchasedDate;
  DateTime get purchasedDate => _$this._purchasedDate;
  set purchasedDate(DateTime purchasedDate) =>
      _$this._purchasedDate = purchasedDate;

  bool _purchasedFromHere;
  bool get purchasedFromHere => _$this._purchasedFromHere;
  set purchasedFromHere(bool purchasedFromHere) =>
      _$this._purchasedFromHere = purchasedFromHere;

  num _purchasedPrice;
  num get purchasedPrice => _$this._purchasedPrice;
  set purchasedPrice(num purchasedPrice) =>
      _$this._purchasedPrice = purchasedPrice;

  String _serialNumber;
  String get serialNumber => _$this._serialNumber;
  set serialNumber(String serialNumber) => _$this._serialNumber = serialNumber;

  String _serviceType;
  String get serviceType => _$this._serviceType;
  set serviceType(String serviceType) => _$this._serviceType = serviceType;

  String _specification;
  String get specification => _$this._specification;
  set specification(String specification) =>
      _$this._specification = specification;

  ListBuilder<ServedProduct> _subProducts;
  ListBuilder<ServedProduct> get subProducts =>
      _$this._subProducts ??= new ListBuilder<ServedProduct>();
  set subProducts(ListBuilder<ServedProduct> subProducts) =>
      _$this._subProducts = subProducts;

  ListBuilder<ServedProductWarranty> _warranties;
  ListBuilder<ServedProductWarranty> get warranties =>
      _$this._warranties ??= new ListBuilder<ServedProductWarranty>();
  set warranties(ListBuilder<ServedProductWarranty> warranties) =>
      _$this._warranties = warranties;

  ServedProductBuilder();

  ServedProductBuilder get _$this {
    if (_$v != null) {
      _customSerialNumber = _$v.customSerialNumber;
      _customer = _$v.customer?.toBuilder();
      _id = _$v.id;
      _invoiceNo = _$v.invoiceNo;
      _mainProduct = _$v.mainProduct?.toBuilder();
      _product = _$v.product?.toBuilder();
      _productLocation = _$v.productLocation?.toBuilder();
      _purchasedDate = _$v.purchasedDate;
      _purchasedFromHere = _$v.purchasedFromHere;
      _purchasedPrice = _$v.purchasedPrice;
      _serialNumber = _$v.serialNumber;
      _serviceType = _$v.serviceType;
      _specification = _$v.specification;
      _subProducts = _$v.subProducts?.toBuilder();
      _warranties = _$v.warranties?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServedProduct other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServedProduct;
  }

  @override
  void update(void Function(ServedProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServedProduct build() {
    _$ServedProduct _$result;
    try {
      _$result = _$v ??
          new _$ServedProduct._(
              customSerialNumber: customSerialNumber,
              customer: _customer?.build(),
              id: id,
              invoiceNo: invoiceNo,
              mainProduct: _mainProduct?.build(),
              product: _product?.build(),
              productLocation: _productLocation?.build(),
              purchasedDate: purchasedDate,
              purchasedFromHere: purchasedFromHere,
              purchasedPrice: purchasedPrice,
              serialNumber: serialNumber,
              serviceType: serviceType,
              specification: specification,
              subProducts: _subProducts?.build(),
              warranties: _warranties?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'mainProduct';
        _mainProduct?.build();
        _$failedField = 'product';
        _product?.build();
        _$failedField = 'productLocation';
        _productLocation?.build();

        _$failedField = 'subProducts';
        _subProducts?.build();
        _$failedField = 'warranties';
        _warranties?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ServedProduct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
