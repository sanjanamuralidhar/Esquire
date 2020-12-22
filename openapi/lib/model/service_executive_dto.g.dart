// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_executive_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceExecutiveDTO> _$serviceExecutiveDTOSerializer =
    new _$ServiceExecutiveDTOSerializer();

class _$ServiceExecutiveDTOSerializer
    implements StructuredSerializer<ServiceExecutiveDTO> {
  @override
  final Iterable<Type> types = const [
    ServiceExecutiveDTO,
    _$ServiceExecutiveDTO
  ];
  @override
  final String wireName = 'ServiceExecutiveDTO';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ServiceExecutiveDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
    }
    if (object.alternatePhoneNumberOne != null) {
      result
        ..add('alternatePhoneNumberOne')
        ..add(serializers.serialize(object.alternatePhoneNumberOne,
            specifiedType: const FullType(String)));
    }
    if (object.alternatePhoneNumberTwo != null) {
      result
        ..add('alternatePhoneNumberTwo')
        ..add(serializers.serialize(object.alternatePhoneNumberTwo,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.overallRatingId != null) {
      result
        ..add('overallRatingId')
        ..add(serializers.serialize(object.overallRatingId,
            specifiedType: const FullType(int)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumbersVerified != null) {
      result
        ..add('phoneNumbersVerified')
        ..add(serializers.serialize(object.phoneNumbersVerified,
            specifiedType: const FullType(bool)));
    }
    if (object.serviceEngineerId != null) {
      result
        ..add('serviceEngineerId')
        ..add(serializers.serialize(object.serviceEngineerId,
            specifiedType: const FullType(String)));
    }
    if (object.serviceSectionId != null) {
      result
        ..add('serviceSectionId')
        ..add(serializers.serialize(object.serviceSectionId,
            specifiedType: const FullType(int)));
    }
    if (object.userId != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    if (object.userLogin != null) {
      result
        ..add('userLogin')
        ..add(serializers.serialize(object.userLogin,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ServiceExecutiveDTO deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceExecutiveDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'alternatePhoneNumberOne':
          result.alternatePhoneNumberOne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alternatePhoneNumberTwo':
          result.alternatePhoneNumberTwo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'geoLocation':
          result.geoLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overallRatingId':
          result.overallRatingId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumbersVerified':
          result.phoneNumbersVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'serviceEngineerId':
          result.serviceEngineerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceSectionId':
          result.serviceSectionId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'userLogin':
          result.userLogin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ServiceExecutiveDTO extends ServiceExecutiveDTO {
  @override
  final bool active;
  @override
  final String alternatePhoneNumberOne;
  @override
  final String alternatePhoneNumberTwo;
  @override
  final String email;
  @override
  final String geoLocation;
  @override
  final int id;
  @override
  final String name;
  @override
  final int overallRatingId;
  @override
  final String phone;
  @override
  final bool phoneNumbersVerified;
  @override
  final String serviceEngineerId;
  @override
  final int serviceSectionId;
  @override
  final int userId;
  @override
  final String userLogin;

  factory _$ServiceExecutiveDTO(
          [void Function(ServiceExecutiveDTOBuilder) updates]) =>
      (new ServiceExecutiveDTOBuilder()..update(updates)).build();

  _$ServiceExecutiveDTO._(
      {this.active,
      this.alternatePhoneNumberOne,
      this.alternatePhoneNumberTwo,
      this.email,
      this.geoLocation,
      this.id,
      this.name,
      this.overallRatingId,
      this.phone,
      this.phoneNumbersVerified,
      this.serviceEngineerId,
      this.serviceSectionId,
      this.userId,
      this.userLogin})
      : super._();

  @override
  ServiceExecutiveDTO rebuild(
          void Function(ServiceExecutiveDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceExecutiveDTOBuilder toBuilder() =>
      new ServiceExecutiveDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceExecutiveDTO &&
        active == other.active &&
        alternatePhoneNumberOne == other.alternatePhoneNumberOne &&
        alternatePhoneNumberTwo == other.alternatePhoneNumberTwo &&
        email == other.email &&
        geoLocation == other.geoLocation &&
        id == other.id &&
        name == other.name &&
        overallRatingId == other.overallRatingId &&
        phone == other.phone &&
        phoneNumbersVerified == other.phoneNumbersVerified &&
        serviceEngineerId == other.serviceEngineerId &&
        serviceSectionId == other.serviceSectionId &&
        userId == other.userId &&
        userLogin == other.userLogin;
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
                                                        $jc(0, active.hashCode),
                                                        alternatePhoneNumberOne
                                                            .hashCode),
                                                    alternatePhoneNumberTwo
                                                        .hashCode),
                                                email.hashCode),
                                            geoLocation.hashCode),
                                        id.hashCode),
                                    name.hashCode),
                                overallRatingId.hashCode),
                            phone.hashCode),
                        phoneNumbersVerified.hashCode),
                    serviceEngineerId.hashCode),
                serviceSectionId.hashCode),
            userId.hashCode),
        userLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceExecutiveDTO')
          ..add('active', active)
          ..add('alternatePhoneNumberOne', alternatePhoneNumberOne)
          ..add('alternatePhoneNumberTwo', alternatePhoneNumberTwo)
          ..add('email', email)
          ..add('geoLocation', geoLocation)
          ..add('id', id)
          ..add('name', name)
          ..add('overallRatingId', overallRatingId)
          ..add('phone', phone)
          ..add('phoneNumbersVerified', phoneNumbersVerified)
          ..add('serviceEngineerId', serviceEngineerId)
          ..add('serviceSectionId', serviceSectionId)
          ..add('userId', userId)
          ..add('userLogin', userLogin))
        .toString();
  }
}

class ServiceExecutiveDTOBuilder
    implements Builder<ServiceExecutiveDTO, ServiceExecutiveDTOBuilder> {
  _$ServiceExecutiveDTO _$v;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  String _alternatePhoneNumberOne;
  String get alternatePhoneNumberOne => _$this._alternatePhoneNumberOne;
  set alternatePhoneNumberOne(String alternatePhoneNumberOne) =>
      _$this._alternatePhoneNumberOne = alternatePhoneNumberOne;

  String _alternatePhoneNumberTwo;
  String get alternatePhoneNumberTwo => _$this._alternatePhoneNumberTwo;
  set alternatePhoneNumberTwo(String alternatePhoneNumberTwo) =>
      _$this._alternatePhoneNumberTwo = alternatePhoneNumberTwo;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _geoLocation;
  String get geoLocation => _$this._geoLocation;
  set geoLocation(String geoLocation) => _$this._geoLocation = geoLocation;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _overallRatingId;
  int get overallRatingId => _$this._overallRatingId;
  set overallRatingId(int overallRatingId) =>
      _$this._overallRatingId = overallRatingId;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  bool _phoneNumbersVerified;
  bool get phoneNumbersVerified => _$this._phoneNumbersVerified;
  set phoneNumbersVerified(bool phoneNumbersVerified) =>
      _$this._phoneNumbersVerified = phoneNumbersVerified;

  String _serviceEngineerId;
  String get serviceEngineerId => _$this._serviceEngineerId;
  set serviceEngineerId(String serviceEngineerId) =>
      _$this._serviceEngineerId = serviceEngineerId;

  int _serviceSectionId;
  int get serviceSectionId => _$this._serviceSectionId;
  set serviceSectionId(int serviceSectionId) =>
      _$this._serviceSectionId = serviceSectionId;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _userLogin;
  String get userLogin => _$this._userLogin;
  set userLogin(String userLogin) => _$this._userLogin = userLogin;

  ServiceExecutiveDTOBuilder();

  ServiceExecutiveDTOBuilder get _$this {
    if (_$v != null) {
      _active = _$v.active;
      _alternatePhoneNumberOne = _$v.alternatePhoneNumberOne;
      _alternatePhoneNumberTwo = _$v.alternatePhoneNumberTwo;
      _email = _$v.email;
      _geoLocation = _$v.geoLocation;
      _id = _$v.id;
      _name = _$v.name;
      _overallRatingId = _$v.overallRatingId;
      _phone = _$v.phone;
      _phoneNumbersVerified = _$v.phoneNumbersVerified;
      _serviceEngineerId = _$v.serviceEngineerId;
      _serviceSectionId = _$v.serviceSectionId;
      _userId = _$v.userId;
      _userLogin = _$v.userLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceExecutiveDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceExecutiveDTO;
  }

  @override
  void update(void Function(ServiceExecutiveDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceExecutiveDTO build() {
    final _$result = _$v ??
        new _$ServiceExecutiveDTO._(
            active: active,
            alternatePhoneNumberOne: alternatePhoneNumberOne,
            alternatePhoneNumberTwo: alternatePhoneNumberTwo,
            email: email,
            geoLocation: geoLocation,
            id: id,
            name: name,
            overallRatingId: overallRatingId,
            phone: phone,
            phoneNumbersVerified: phoneNumbersVerified,
            serviceEngineerId: serviceEngineerId,
            serviceSectionId: serviceSectionId,
            userId: userId,
            userLogin: userLogin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
