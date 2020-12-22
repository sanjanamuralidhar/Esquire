// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'served_product_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServedProductDTO> _$servedProductDTOSerializer =
    new _$ServedProductDTOSerializer();

class _$ServedProductDTOSerializer
    implements StructuredSerializer<ServedProductDTO> {
  @override
  final Iterable<Type> types = const [ServedProductDTO, _$ServedProductDTO];
  @override
  final String wireName = 'ServedProductDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, ServedProductDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.customSerialNumber != null) {
      result
        ..add('customSerialNumber')
        ..add(serializers.serialize(object.customSerialNumber,
            specifiedType: const FullType(String)));
    }
    if (object.customerId != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(object.customerId,
            specifiedType: const FullType(int)));
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
    if (object.mainProductId != null) {
      result
        ..add('mainProductId')
        ..add(serializers.serialize(object.mainProductId,
            specifiedType: const FullType(int)));
    }
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    if (object.productLocationId != null) {
      result
        ..add('productLocationId')
        ..add(serializers.serialize(object.productLocationId,
            specifiedType: const FullType(int)));
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
    return result;
  }

  @override
  ServedProductDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServedProductDTOBuilder();

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
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'invoiceNo':
          result.invoiceNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainProductId':
          result.mainProductId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'productLocationId':
          result.productLocationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
      }
    }

    return result.build();
  }
}

class _$ServedProductDTO extends ServedProductDTO {
  @override
  final String customSerialNumber;
  @override
  final int customerId;
  @override
  final int id;
  @override
  final String invoiceNo;
  @override
  final int mainProductId;
  @override
  final int productId;
  @override
  final int productLocationId;
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

  factory _$ServedProductDTO(
          [void Function(ServedProductDTOBuilder) updates]) =>
      (new ServedProductDTOBuilder()..update(updates)).build();

  _$ServedProductDTO._(
      {this.customSerialNumber,
      this.customerId,
      this.id,
      this.invoiceNo,
      this.mainProductId,
      this.productId,
      this.productLocationId,
      this.purchasedDate,
      this.purchasedFromHere,
      this.purchasedPrice,
      this.serialNumber,
      this.serviceType,
      this.specification})
      : super._();

  @override
  ServedProductDTO rebuild(void Function(ServedProductDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServedProductDTOBuilder toBuilder() =>
      new ServedProductDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServedProductDTO &&
        customSerialNumber == other.customSerialNumber &&
        customerId == other.customerId &&
        id == other.id &&
        invoiceNo == other.invoiceNo &&
        mainProductId == other.mainProductId &&
        productId == other.productId &&
        productLocationId == other.productLocationId &&
        purchasedDate == other.purchasedDate &&
        purchasedFromHere == other.purchasedFromHere &&
        purchasedPrice == other.purchasedPrice &&
        serialNumber == other.serialNumber &&
        serviceType == other.serviceType &&
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        0,
                                                        customSerialNumber
                                                            .hashCode),
                                                    customerId.hashCode),
                                                id.hashCode),
                                            invoiceNo.hashCode),
                                        mainProductId.hashCode),
                                    productId.hashCode),
                                productLocationId.hashCode),
                            purchasedDate.hashCode),
                        purchasedFromHere.hashCode),
                    purchasedPrice.hashCode),
                serialNumber.hashCode),
            serviceType.hashCode),
        specification.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServedProductDTO')
          ..add('customSerialNumber', customSerialNumber)
          ..add('customerId', customerId)
          ..add('id', id)
          ..add('invoiceNo', invoiceNo)
          ..add('mainProductId', mainProductId)
          ..add('productId', productId)
          ..add('productLocationId', productLocationId)
          ..add('purchasedDate', purchasedDate)
          ..add('purchasedFromHere', purchasedFromHere)
          ..add('purchasedPrice', purchasedPrice)
          ..add('serialNumber', serialNumber)
          ..add('serviceType', serviceType)
          ..add('specification', specification))
        .toString();
  }
}

class ServedProductDTOBuilder
    implements Builder<ServedProductDTO, ServedProductDTOBuilder> {
  _$ServedProductDTO _$v;

  String _customSerialNumber;
  String get customSerialNumber => _$this._customSerialNumber;
  set customSerialNumber(String customSerialNumber) =>
      _$this._customSerialNumber = customSerialNumber;

  int _customerId;
  int get customerId => _$this._customerId;
  set customerId(int customerId) => _$this._customerId = customerId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _invoiceNo;
  String get invoiceNo => _$this._invoiceNo;
  set invoiceNo(String invoiceNo) => _$this._invoiceNo = invoiceNo;

  int _mainProductId;
  int get mainProductId => _$this._mainProductId;
  set mainProductId(int mainProductId) => _$this._mainProductId = mainProductId;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  int _productLocationId;
  int get productLocationId => _$this._productLocationId;
  set productLocationId(int productLocationId) =>
      _$this._productLocationId = productLocationId;

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

  ServedProductDTOBuilder();

  ServedProductDTOBuilder get _$this {
    if (_$v != null) {
      _customSerialNumber = _$v.customSerialNumber;
      _customerId = _$v.customerId;
      _id = _$v.id;
      _invoiceNo = _$v.invoiceNo;
      _mainProductId = _$v.mainProductId;
      _productId = _$v.productId;
      _productLocationId = _$v.productLocationId;
      _purchasedDate = _$v.purchasedDate;
      _purchasedFromHere = _$v.purchasedFromHere;
      _purchasedPrice = _$v.purchasedPrice;
      _serialNumber = _$v.serialNumber;
      _serviceType = _$v.serviceType;
      _specification = _$v.specification;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServedProductDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServedProductDTO;
  }

  @override
  void update(void Function(ServedProductDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServedProductDTO build() {
    final _$result = _$v ??
        new _$ServedProductDTO._(
            customSerialNumber: customSerialNumber,
            customerId: customerId,
            id: id,
            invoiceNo: invoiceNo,
            mainProductId: mainProductId,
            productId: productId,
            productLocationId: productLocationId,
            purchasedDate: purchasedDate,
            purchasedFromHere: purchasedFromHere,
            purchasedPrice: purchasedPrice,
            serialNumber: serialNumber,
            serviceType: serviceType,
            specification: specification);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
