// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_ticket_aggregate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceTicketAggregate> _$serviceTicketAggregateSerializer =
    new _$ServiceTicketAggregateSerializer();

class _$ServiceTicketAggregateSerializer
    implements StructuredSerializer<ServiceTicketAggregate> {
  @override
  final Iterable<Type> types = const [
    ServiceTicketAggregate,
    _$ServiceTicketAggregate
  ];
  @override
  final String wireName = 'ServiceTicketAggregate';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ServiceTicketAggregate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.branchId != null) {
      result
        ..add('branchId')
        ..add(serializers.serialize(object.branchId,
            specifiedType: const FullType(int)));
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
            specifiedType: const FullType(AddressAggregate)));
    }
    if (object.dateOfAppointment != null) {
      result
        ..add('dateOfAppointment')
        ..add(serializers.serialize(object.dateOfAppointment,
            specifiedType: const FullType(DateTime)));
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
    if (object.preferredTime != null) {
      result
        ..add('preferredTime')
        ..add(serializers.serialize(object.preferredTime,
            specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('productId')
        ..add(serializers.serialize(object.productId,
            specifiedType: const FullType(int)));
    }
    if (object.productName != null) {
      result
        ..add('productName')
        ..add(serializers.serialize(object.productName,
            specifiedType: const FullType(String)));
    }
    if (object.recordedAudio != null) {
      result
        ..add('recordedAudio')
        ..add(serializers.serialize(object.recordedAudio,
            specifiedType: const FullType(String)));
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
  ServiceTicketAggregate deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceTicketAggregateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'branchId':
          result.branchId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
                  specifiedType: const FullType(AddressAggregate))
              as AddressAggregate);
          break;
        case 'dateOfAppointment':
          result.dateOfAppointment = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues':
          result.issues = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'preferredTime':
          result.preferredTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'productId':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'productName':
          result.productName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recordedAudio':
          result.recordedAudio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ServiceTicketAggregate extends ServiceTicketAggregate {
  @override
  final int branchId;
  @override
  final String brand;
  @override
  final String category;
  @override
  final AddressAggregate customerAddress;
  @override
  final DateTime dateOfAppointment;
  @override
  final String description;
  @override
  final String issues;
  @override
  final String preferredTime;
  @override
  final int productId;
  @override
  final String productName;
  @override
  final String recordedAudio;
  @override
  final ServedProductDTO servedProductDTO;

  factory _$ServiceTicketAggregate(
          [void Function(ServiceTicketAggregateBuilder) updates]) =>
      (new ServiceTicketAggregateBuilder()..update(updates)).build();

  _$ServiceTicketAggregate._(
      {this.branchId,
      this.brand,
      this.category,
      this.customerAddress,
      this.dateOfAppointment,
      this.description,
      this.issues,
      this.preferredTime,
      this.productId,
      this.productName,
      this.recordedAudio,
      this.servedProductDTO})
      : super._();

  @override
  ServiceTicketAggregate rebuild(
          void Function(ServiceTicketAggregateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceTicketAggregateBuilder toBuilder() =>
      new ServiceTicketAggregateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceTicketAggregate &&
        branchId == other.branchId &&
        brand == other.brand &&
        category == other.category &&
        customerAddress == other.customerAddress &&
        dateOfAppointment == other.dateOfAppointment &&
        description == other.description &&
        issues == other.issues &&
        preferredTime == other.preferredTime &&
        productId == other.productId &&
        productName == other.productName &&
        recordedAudio == other.recordedAudio &&
        servedProductDTO == other.servedProductDTO;
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
                                            $jc($jc(0, branchId.hashCode),
                                                brand.hashCode),
                                            category.hashCode),
                                        customerAddress.hashCode),
                                    dateOfAppointment.hashCode),
                                description.hashCode),
                            issues.hashCode),
                        preferredTime.hashCode),
                    productId.hashCode),
                productName.hashCode),
            recordedAudio.hashCode),
        servedProductDTO.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceTicketAggregate')
          ..add('branchId', branchId)
          ..add('brand', brand)
          ..add('category', category)
          ..add('customerAddress', customerAddress)
          ..add('dateOfAppointment', dateOfAppointment)
          ..add('description', description)
          ..add('issues', issues)
          ..add('preferredTime', preferredTime)
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('recordedAudio', recordedAudio)
          ..add('servedProductDTO', servedProductDTO))
        .toString();
  }
}

class ServiceTicketAggregateBuilder
    implements Builder<ServiceTicketAggregate, ServiceTicketAggregateBuilder> {
  _$ServiceTicketAggregate _$v;

  int _branchId;
  int get branchId => _$this._branchId;
  set branchId(int branchId) => _$this._branchId = branchId;

  String _brand;
  String get brand => _$this._brand;
  set brand(String brand) => _$this._brand = brand;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  AddressAggregateBuilder _customerAddress;
  AddressAggregateBuilder get customerAddress =>
      _$this._customerAddress ??= new AddressAggregateBuilder();
  set customerAddress(AddressAggregateBuilder customerAddress) =>
      _$this._customerAddress = customerAddress;

  DateTime _dateOfAppointment;
  DateTime get dateOfAppointment => _$this._dateOfAppointment;
  set dateOfAppointment(DateTime dateOfAppointment) =>
      _$this._dateOfAppointment = dateOfAppointment;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _issues;
  String get issues => _$this._issues;
  set issues(String issues) => _$this._issues = issues;

  String _preferredTime;
  String get preferredTime => _$this._preferredTime;
  set preferredTime(String preferredTime) =>
      _$this._preferredTime = preferredTime;

  int _productId;
  int get productId => _$this._productId;
  set productId(int productId) => _$this._productId = productId;

  String _productName;
  String get productName => _$this._productName;
  set productName(String productName) => _$this._productName = productName;

  String _recordedAudio;
  String get recordedAudio => _$this._recordedAudio;
  set recordedAudio(String recordedAudio) =>
      _$this._recordedAudio = recordedAudio;

  ServedProductDTOBuilder _servedProductDTO;
  ServedProductDTOBuilder get servedProductDTO =>
      _$this._servedProductDTO ??= new ServedProductDTOBuilder();
  set servedProductDTO(ServedProductDTOBuilder servedProductDTO) =>
      _$this._servedProductDTO = servedProductDTO;

  ServiceTicketAggregateBuilder();

  ServiceTicketAggregateBuilder get _$this {
    if (_$v != null) {
      _branchId = _$v.branchId;
      _brand = _$v.brand;
      _category = _$v.category;
      _customerAddress = _$v.customerAddress?.toBuilder();
      _dateOfAppointment = _$v.dateOfAppointment;
      _description = _$v.description;
      _issues = _$v.issues;
      _preferredTime = _$v.preferredTime;
      _productId = _$v.productId;
      _productName = _$v.productName;
      _recordedAudio = _$v.recordedAudio;
      _servedProductDTO = _$v.servedProductDTO?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceTicketAggregate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceTicketAggregate;
  }

  @override
  void update(void Function(ServiceTicketAggregateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceTicketAggregate build() {
    _$ServiceTicketAggregate _$result;
    try {
      _$result = _$v ??
          new _$ServiceTicketAggregate._(
              branchId: branchId,
              brand: brand,
              category: category,
              customerAddress: _customerAddress?.build(),
              dateOfAppointment: dateOfAppointment,
              description: description,
              issues: issues,
              preferredTime: preferredTime,
              productId: productId,
              productName: productName,
              recordedAudio: recordedAudio,
              servedProductDTO: _servedProductDTO?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'customerAddress';
        _customerAddress?.build();

        _$failedField = 'servedProductDTO';
        _servedProductDTO?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ServiceTicketAggregate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
