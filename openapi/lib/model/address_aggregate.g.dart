// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_aggregate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressAggregate> _$addressAggregateSerializer =
    new _$AddressAggregateSerializer();

class _$AddressAggregateSerializer
    implements StructuredSerializer<AddressAggregate> {
  @override
  final Iterable<Type> types = const [AddressAggregate, _$AddressAggregate];
  @override
  final String wireName = 'AddressAggregate';

  @override
  Iterable<Object> serialize(Serializers serializers, AddressAggregate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.city != null) {
      result
        ..add('city')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.customerName != null) {
      result
        ..add('customerName')
        ..add(serializers.serialize(object.customerName,
            specifiedType: const FullType(String)));
    }
    if (object.district != null) {
      result
        ..add('district')
        ..add(serializers.serialize(object.district,
            specifiedType: const FullType(String)));
    }
    if (object.geoLocation != null) {
      result
        ..add('geoLocation')
        ..add(serializers.serialize(object.geoLocation,
            specifiedType: const FullType(String)));
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
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.pinCode != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(object.pinCode,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AddressAggregate deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressAggregateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customerName':
          result.customerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'geoLocation':
          result.geoLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressAggregate extends AddressAggregate {
  @override
  final String city;
  @override
  final String customerName;
  @override
  final String district;
  @override
  final String geoLocation;
  @override
  final String landMark;
  @override
  final String locationAddressLineOne;
  @override
  final String locationAddressLineTwo;
  @override
  final String phone;
  @override
  final String pinCode;
  @override
  final String state;

  factory _$AddressAggregate(
          [void Function(AddressAggregateBuilder) updates]) =>
      (new AddressAggregateBuilder()..update(updates)).build();

  _$AddressAggregate._(
      {this.city,
      this.customerName,
      this.district,
      this.geoLocation,
      this.landMark,
      this.locationAddressLineOne,
      this.locationAddressLineTwo,
      this.phone,
      this.pinCode,
      this.state})
      : super._();

  @override
  AddressAggregate rebuild(void Function(AddressAggregateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressAggregateBuilder toBuilder() =>
      new AddressAggregateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressAggregate &&
        city == other.city &&
        customerName == other.customerName &&
        district == other.district &&
        geoLocation == other.geoLocation &&
        landMark == other.landMark &&
        locationAddressLineOne == other.locationAddressLineOne &&
        locationAddressLineTwo == other.locationAddressLineTwo &&
        phone == other.phone &&
        pinCode == other.pinCode &&
        state == other.state;
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
                                    $jc($jc(0, city.hashCode),
                                        customerName.hashCode),
                                    district.hashCode),
                                geoLocation.hashCode),
                            landMark.hashCode),
                        locationAddressLineOne.hashCode),
                    locationAddressLineTwo.hashCode),
                phone.hashCode),
            pinCode.hashCode),
        state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressAggregate')
          ..add('city', city)
          ..add('customerName', customerName)
          ..add('district', district)
          ..add('geoLocation', geoLocation)
          ..add('landMark', landMark)
          ..add('locationAddressLineOne', locationAddressLineOne)
          ..add('locationAddressLineTwo', locationAddressLineTwo)
          ..add('phone', phone)
          ..add('pinCode', pinCode)
          ..add('state', state))
        .toString();
  }
}

class AddressAggregateBuilder
    implements Builder<AddressAggregate, AddressAggregateBuilder> {
  _$AddressAggregate _$v;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _customerName;
  String get customerName => _$this._customerName;
  set customerName(String customerName) => _$this._customerName = customerName;

  String _district;
  String get district => _$this._district;
  set district(String district) => _$this._district = district;

  String _geoLocation;
  String get geoLocation => _$this._geoLocation;
  set geoLocation(String geoLocation) => _$this._geoLocation = geoLocation;

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

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _pinCode;
  String get pinCode => _$this._pinCode;
  set pinCode(String pinCode) => _$this._pinCode = pinCode;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  AddressAggregateBuilder();

  AddressAggregateBuilder get _$this {
    if (_$v != null) {
      _city = _$v.city;
      _customerName = _$v.customerName;
      _district = _$v.district;
      _geoLocation = _$v.geoLocation;
      _landMark = _$v.landMark;
      _locationAddressLineOne = _$v.locationAddressLineOne;
      _locationAddressLineTwo = _$v.locationAddressLineTwo;
      _phone = _$v.phone;
      _pinCode = _$v.pinCode;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressAggregate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddressAggregate;
  }

  @override
  void update(void Function(AddressAggregateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressAggregate build() {
    final _$result = _$v ??
        new _$AddressAggregate._(
            city: city,
            customerName: customerName,
            district: district,
            geoLocation: geoLocation,
            landMark: landMark,
            locationAddressLineOne: locationAddressLineOne,
            locationAddressLineTwo: locationAddressLineTwo,
            phone: phone,
            pinCode: pinCode,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
