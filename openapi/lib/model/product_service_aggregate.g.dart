// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_service_aggregate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductServiceAggregate> _$productServiceAggregateSerializer =
    new _$ProductServiceAggregateSerializer();

class _$ProductServiceAggregateSerializer
    implements StructuredSerializer<ProductServiceAggregate> {
  @override
  final Iterable<Type> types = const [
    ProductServiceAggregate,
    _$ProductServiceAggregate
  ];
  @override
  final String wireName = 'ProductServiceAggregate';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductServiceAggregate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressList != null) {
      result
        ..add('addressList')
        ..add(serializers.serialize(object.addressList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AddressAggregate)])));
    }
    if (object.amcExpires != null) {
      result
        ..add('amcExpires')
        ..add(serializers.serialize(object.amcExpires,
            specifiedType: const FullType(bool)));
    }
    if (object.asc != null) {
      result
        ..add('asc')
        ..add(serializers.serialize(object.asc,
            specifiedType: const FullType(DateTime)));
    }
    if (object.branches != null) {
      result
        ..add('branches')
        ..add(serializers.serialize(object.branches,
            specifiedType:
                const FullType(BuiltList, const [const FullType(BranchDTO)])));
    }
    if (object.brand != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(object.brand,
            specifiedType: const FullType(String)));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(String)));
    }
    if (object.customerAddress != null) {
      result
        ..add('customerAddress')
        ..add(serializers.serialize(object.customerAddress,
            specifiedType: const FullType(Address)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.issues != null) {
      result
        ..add('issues')
        ..add(serializers.serialize(object.issues,
            specifiedType: const FullType(String)));
    }
    if (object.productDTO != null) {
      result
        ..add('productDTO')
        ..add(serializers.serialize(object.productDTO,
            specifiedType: const FullType(ProductDTO)));
    }
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    if (object.recordedAudio != null) {
      result
        ..add('recordedAudio')
        ..add(serializers.serialize(object.recordedAudio,
            specifiedType: const FullType(String)));
    }
    if (object.serialNo != null) {
      result
        ..add('serialNo')
        ..add(serializers.serialize(object.serialNo,
            specifiedType: const FullType(String)));
    }
    if (object.timeSlots != null) {
      result
        ..add('timeSlots')
        ..add(serializers.serialize(object.timeSlots,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.warranty != null) {
      result
        ..add('warranty')
        ..add(serializers.serialize(object.warranty,
            specifiedType: const FullType(DateTime)));
    }
    if (object.warrantyExpires != null) {
      result
        ..add('warrantyExpires')
        ..add(serializers.serialize(object.warrantyExpires,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ProductServiceAggregate deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductServiceAggregateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressList':
          result.addressList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AddressAggregate)]))
              as BuiltList<Object>);
          break;
        case 'amcExpires':
          result.amcExpires = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'asc':
          result.asc = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'branches':
          result.branches.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BranchDTO)]))
              as BuiltList<Object>);
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customerAddress':
          result.customerAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues':
          result.issues = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productDTO':
          result.productDTO.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductDTO)) as ProductDTO);
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'recordedAudio':
          result.recordedAudio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serialNo':
          result.serialNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeSlots':
          result.timeSlots.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'warranty':
          result.warranty = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'warrantyExpires':
          result.warrantyExpires = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductServiceAggregate extends ProductServiceAggregate {
  @override
  final BuiltList<AddressAggregate> addressList;
  @override
  final bool amcExpires;
  @override
  final DateTime asc;
  @override
  final BuiltList<BranchDTO> branches;
  @override
  final String brand;
  @override
  final String category;
  @override
  final Address customerAddress;
  @override
  final String description;
  @override
  final String issues;
  @override
  final ProductDTO productDTO;
  @override
  final int productId;
  @override
  final String recordedAudio;
  @override
  final String serialNo;
  @override
  final BuiltList<String> timeSlots;
  @override
  final DateTime warranty;
  @override
  final bool warrantyExpires;

  factory _$ProductServiceAggregate(
          [void Function(ProductServiceAggregateBuilder) updates]) =>
      (new ProductServiceAggregateBuilder()..update(updates)).build();

  _$ProductServiceAggregate._(
      {this.addressList,
      this.amcExpires,
      this.asc,
      this.branches,
      this.brand,
      this.category,
      this.customerAddress,
      this.description,
      this.issues,
      this.productDTO,
      this.productId,
      this.recordedAudio,
      this.serialNo,
      this.timeSlots,
      this.warranty,
      this.warrantyExpires})
      : super._();

  @override
  ProductServiceAggregate rebuild(
          void Function(ProductServiceAggregateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductServiceAggregateBuilder toBuilder() =>
      new ProductServiceAggregateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductServiceAggregate &&
        addressList == other.addressList &&
        amcExpires == other.amcExpires &&
        asc == other.asc &&
        branches == other.branches &&
        brand == other.brand &&
        category == other.category &&
        customerAddress == other.customerAddress &&
        description == other.description &&
        issues == other.issues &&
        productDTO == other.productDTO &&
        productId == other.productId &&
        recordedAudio == other.recordedAudio &&
        serialNo == other.serialNo &&
        timeSlots == other.timeSlots &&
        warranty == other.warranty &&
        warrantyExpires == other.warrantyExpires;
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
                                                                $jc(
                                                                    0,
                                                                    addressList
                                                                        .hashCode),
                                                                amcExpires
                                                                    .hashCode),
                                                            asc.hashCode),
                                                        branches.hashCode),
                                                    brand.hashCode),
                                                category.hashCode),
                                            customerAddress.hashCode),
                                        description.hashCode),
                                    issues.hashCode),
                                productDTO.hashCode),
                            productId.hashCode),
                        recordedAudio.hashCode),
                    serialNo.hashCode),
                timeSlots.hashCode),
            warranty.hashCode),
        warrantyExpires.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductServiceAggregate')
          ..add('addressList', addressList)
          ..add('amcExpires', amcExpires)
          ..add('asc', asc)
          ..add('branches', branches)
          ..add('brand', brand)
          ..add('category', category)
          ..add('customerAddress', customerAddress)
          ..add('description', description)
          ..add('issues', issues)
          ..add('productDTO', productDTO)
          ..add('productId', productId)
          ..add('recordedAudio', recordedAudio)
          ..add('serialNo', serialNo)
          ..add('timeSlots', timeSlots)
          ..add('warranty', warranty)
          ..add('warrantyExpires', warrantyExpires))
        .toString();
  }
}

class ProductServiceAggregateBuilder
    implements
        Builder<ProductServiceAggregate, ProductServiceAggregateBuilder> {
  _$ProductServiceAggregate _$v;

  ListBuilder<AddressAggregate> _addressList;
  ListBuilder<AddressAggregate> get addressList =>
      _$this._addressList ??= new ListBuilder<AddressAggregate>();
  set addressList(ListBuilder<AddressAggregate> addressList) =>
      _$this._addressList = addressList;

  bool _amcExpires;
  bool get amcExpires => _$this._amcExpires;
  set amcExpires(bool amcExpires) => _$this._amcExpires = amcExpires;

  DateTime _asc;
  DateTime get asc => _$this._asc;
  set asc(DateTime asc) => _$this._asc = asc;

  ListBuilder<BranchDTO> _branches;
  ListBuilder<BranchDTO> get branches =>
      _$this._branches ??= new ListBuilder<BranchDTO>();
  set branches(ListBuilder<BranchDTO> branches) => _$this._branches = branches;

  String _brand;
  String get brand => _$this._brand;
  set brand(String brand) => _$this._brand = brand;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  AddressBuilder _customerAddress;
  AddressBuilder get customerAddress =>
      _$this._customerAddress ??= new AddressBuilder();
  set customerAddress(AddressBuilder customerAddress) =>
      _$this._customerAddress = customerAddress;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _issues;
  String get issues => _$this._issues;
  set issues(String issues) => _$this._issues = issues;

  ProductDTOBuilder _productDTO;
  ProductDTOBuilder get productDTO =>
      _$this._productDTO ??= new ProductDTOBuilder();
  set productDTO(ProductDTOBuilder productDTO) =>
      _$this._productDTO = productDTO;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  String _recordedAudio;
  String get recordedAudio => _$this._recordedAudio;
  set recordedAudio(String recordedAudio) =>
      _$this._recordedAudio = recordedAudio;

  String _serialNo;
  String get serialNo => _$this._serialNo;
  set serialNo(String serialNo) => _$this._serialNo = serialNo;

  ListBuilder<String> _timeSlots;
  ListBuilder<String> get timeSlots =>
      _$this._timeSlots ??= new ListBuilder<String>();
  set timeSlots(ListBuilder<String> timeSlots) => _$this._timeSlots = timeSlots;

  DateTime _warranty;
  DateTime get warranty => _$this._warranty;
  set warranty(DateTime warranty) => _$this._warranty = warranty;

  bool _warrantyExpires;
  bool get warrantyExpires => _$this._warrantyExpires;
  set warrantyExpires(bool warrantyExpires) =>
      _$this._warrantyExpires = warrantyExpires;

  ProductServiceAggregateBuilder();

  ProductServiceAggregateBuilder get _$this {
    if (_$v != null) {
      _addressList = _$v.addressList?.toBuilder();
      _amcExpires = _$v.amcExpires;
      _asc = _$v.asc;
      _branches = _$v.branches?.toBuilder();
      _brand = _$v.brand;
      _category = _$v.category;
      _customerAddress = _$v.customerAddress?.toBuilder();
      _description = _$v.description;
      _issues = _$v.issues;
      _productDTO = _$v.productDTO?.toBuilder();
      _productId = _$v.productId;
      _recordedAudio = _$v.recordedAudio;
      _serialNo = _$v.serialNo;
      _timeSlots = _$v.timeSlots?.toBuilder();
      _warranty = _$v.warranty;
      _warrantyExpires = _$v.warrantyExpires;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductServiceAggregate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductServiceAggregate;
  }

  @override
  void update(void Function(ProductServiceAggregateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductServiceAggregate build() {
    _$ProductServiceAggregate _$result;
    try {
      _$result = _$v ??
          new _$ProductServiceAggregate._(
              addressList: _addressList?.build(),
              amcExpires: amcExpires,
              asc: asc,
              branches: _branches?.build(),
              brand: brand,
              category: category,
              customerAddress: _customerAddress?.build(),
              description: description,
              issues: issues,
              productDTO: _productDTO?.build(),
              productId: productId,
              recordedAudio: recordedAudio,
              serialNo: serialNo,
              timeSlots: _timeSlots?.build(),
              warranty: warranty,
              warrantyExpires: warrantyExpires);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addressList';
        _addressList?.build();

        _$failedField = 'branches';
        _branches?.build();

        _$failedField = 'customerAddress';
        _customerAddress?.build();

        _$failedField = 'productDTO';
        _productDTO?.build();

        _$failedField = 'timeSlots';
        _timeSlots?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductServiceAggregate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
