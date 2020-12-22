// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Address> _$addressSerializer = new _$AddressSerializer();

class _$AddressSerializer implements StructuredSerializer<Address> {
  @override
  final Iterable<Type> types = const [Address, _$Address];
  @override
  final String wireName = 'Address';

  @override
  Iterable<Object> serialize(Serializers serializers, Address object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.billingAddress != null) {
      result
        ..add('billingAddress')
        ..add(serializers.serialize(object.billingAddress,
            specifiedType: const FullType(bool)));
    }
    if (object.cityName != null) {
      result
        ..add('cityName')
        ..add(serializers.serialize(object.cityName,
            specifiedType: const FullType(City)));
    }
    if (object.customer != null) {
      result
        ..add('customer')
        ..add(serializers.serialize(object.customer,
            specifiedType: const FullType(Customer)));
    }
    if (object.districtName != null) {
      result
        ..add('districtName')
        ..add(serializers.serialize(object.districtName,
            specifiedType: const FullType(District)));
    }
    if (object.geoLocation != null) {
      result
        ..add('geoLocation')
        ..add(serializers.serialize(object.geoLocation,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.landMark != null) {
      result
        ..add('landMark')
        ..add(serializers.serialize(object.landMark,
            specifiedType: const FullType(String)));
    }
    if (object.locationAddressLineOne != null) {
      result
        ..add('locationAddressLineOne')
        ..add(serializers.serialize(object.locationAddressLineOne,
            specifiedType: const FullType(String)));
    }
    if (object.locationAddressLineTwo != null) {
      result
        ..add('locationAddressLineTwo')
        ..add(serializers.serialize(object.locationAddressLineTwo,
            specifiedType: const FullType(String)));
    }
    if (object.pinCode != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(object.pinCode,
            specifiedType: const FullType(PinCode)));
    }
    if (object.stateName != null) {
      result
        ..add('stateName')
        ..add(serializers.serialize(object.stateName,
            specifiedType: const FullType(State)));
    }
    return result;
  }

  @override
  Address deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'billingAddress':
          result.billingAddress = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cityName':
          result.cityName.replace(serializers.deserialize(value,
              specifiedType: const FullType(City)) as City);
          break;
        case 'customer':
          result.customer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Customer)) as Customer);
          break;
        case 'districtName':
          result.districtName.replace(serializers.deserialize(value,
              specifiedType: const FullType(District)) as District);
          break;
        case 'geoLocation':
          result.geoLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'landMark':
          result.landMark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locationAddressLineOne':
          result.locationAddressLineOne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locationAddressLineTwo':
          result.locationAddressLineTwo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pinCode':
          result.pinCode.replace(serializers.deserialize(value,
              specifiedType: const FullType(PinCode)) as PinCode);
          break;
        case 'stateName':
          result.stateName.replace(serializers.deserialize(value,
              specifiedType: const FullType(State)) as State);
          break;
      }
    }

    return result.build();
  }
}

class _$Address extends Address {
  @override
  final bool billingAddress;
  @override
  final City cityName;
  @override
  final Customer customer;
  @override
  final District districtName;
  @override
  final String geoLocation;
  @override
  final int id;
  @override
  final String landMark;
  @override
  final String locationAddressLineOne;
  @override
  final String locationAddressLineTwo;
  @override
  final PinCode pinCode;
  @override
  final State stateName;

  factory _$Address([void Function(AddressBuilder) updates]) =>
      (new AddressBuilder()..update(updates)).build();

  _$Address._(
      {this.billingAddress,
      this.cityName,
      this.customer,
      this.districtName,
      this.geoLocation,
      this.id,
      this.landMark,
      this.locationAddressLineOne,
      this.locationAddressLineTwo,
      this.pinCode,
      this.stateName})
      : super._();

  @override
  Address rebuild(void Function(AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => new AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        billingAddress == other.billingAddress &&
        cityName == other.cityName &&
        customer == other.customer &&
        districtName == other.districtName &&
        geoLocation == other.geoLocation &&
        id == other.id &&
        landMark == other.landMark &&
        locationAddressLineOne == other.locationAddressLineOne &&
        locationAddressLineTwo == other.locationAddressLineTwo &&
        pinCode == other.pinCode &&
        stateName == other.stateName;
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
                                        $jc($jc(0, billingAddress.hashCode),
                                            cityName.hashCode),
                                        customer.hashCode),
                                    districtName.hashCode),
                                geoLocation.hashCode),
                            id.hashCode),
                        landMark.hashCode),
                    locationAddressLineOne.hashCode),
                locationAddressLineTwo.hashCode),
            pinCode.hashCode),
        stateName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Address')
          ..add('billingAddress', billingAddress)
          ..add('cityName', cityName)
          ..add('customer', customer)
          ..add('districtName', districtName)
          ..add('geoLocation', geoLocation)
          ..add('id', id)
          ..add('landMark', landMark)
          ..add('locationAddressLineOne', locationAddressLineOne)
          ..add('locationAddressLineTwo', locationAddressLineTwo)
          ..add('pinCode', pinCode)
          ..add('stateName', stateName))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address _$v;

  bool _billingAddress;
  bool get billingAddress => _$this._billingAddress;
  set billingAddress(bool billingAddress) =>
      _$this._billingAddress = billingAddress;

  CityBuilder _cityName;
  CityBuilder get cityName => _$this._cityName ??= new CityBuilder();
  set cityName(CityBuilder cityName) => _$this._cityName = cityName;

  CustomerBuilder _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder customer) => _$this._customer = customer;

  DistrictBuilder _districtName;
  DistrictBuilder get districtName =>
      _$this._districtName ??= new DistrictBuilder();
  set districtName(DistrictBuilder districtName) =>
      _$this._districtName = districtName;

  String _geoLocation;
  String get geoLocation => _$this._geoLocation;
  set geoLocation(String geoLocation) => _$this._geoLocation = geoLocation;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _landMark;
  String get landMark => _$this._landMark;
  set landMark(String landMark) => _$this._landMark = landMark;

  String _locationAddressLineOne;
  String get locationAddressLineOne => _$this._locationAddressLineOne;
  set locationAddressLineOne(String locationAddressLineOne) =>
      _$this._locationAddressLineOne = locationAddressLineOne;

  String _locationAddressLineTwo;
  String get locationAddressLineTwo => _$this._locationAddressLineTwo;
  set locationAddressLineTwo(String locationAddressLineTwo) =>
      _$this._locationAddressLineTwo = locationAddressLineTwo;

  PinCodeBuilder _pinCode;
  PinCodeBuilder get pinCode => _$this._pinCode ??= new PinCodeBuilder();
  set pinCode(PinCodeBuilder pinCode) => _$this._pinCode = pinCode;

  StateBuilder _stateName;
  StateBuilder get stateName => _$this._stateName ??= new StateBuilder();
  set stateName(StateBuilder stateName) => _$this._stateName = stateName;

  AddressBuilder();

  AddressBuilder get _$this {
    if (_$v != null) {
      _billingAddress = _$v.billingAddress;
      _cityName = _$v.cityName?.toBuilder();
      _customer = _$v.customer?.toBuilder();
      _districtName = _$v.districtName?.toBuilder();
      _geoLocation = _$v.geoLocation;
      _id = _$v.id;
      _landMark = _$v.landMark;
      _locationAddressLineOne = _$v.locationAddressLineOne;
      _locationAddressLineTwo = _$v.locationAddressLineTwo;
      _pinCode = _$v.pinCode?.toBuilder();
      _stateName = _$v.stateName?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Address;
  }

  @override
  void update(void Function(AddressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Address build() {
    _$Address _$result;
    try {
      _$result = _$v ??
          new _$Address._(
              billingAddress: billingAddress,
              cityName: _cityName?.build(),
              customer: _customer?.build(),
              districtName: _districtName?.build(),
              geoLocation: geoLocation,
              id: id,
              landMark: landMark,
              locationAddressLineOne: locationAddressLineOne,
              locationAddressLineTwo: locationAddressLineTwo,
              pinCode: _pinCode?.build(),
              stateName: _stateName?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cityName';
        _cityName?.build();
        _$failedField = 'customer';
        _customer?.build();
        _$failedField = 'districtName';
        _districtName?.build();

        _$failedField = 'pinCode';
        _pinCode?.build();
        _$failedField = 'stateName';
        _stateName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Address', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
