// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomerDTO> _$customerDTOSerializer = new _$CustomerDTOSerializer();

class _$CustomerDTOSerializer implements StructuredSerializer<CustomerDTO> {
  @override
  final Iterable<Type> types = const [CustomerDTO, _$CustomerDTO];
  @override
  final String wireName = 'CustomerDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, CustomerDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.customerRank != null) {
      result
        ..add('customerRank')
        ..add(serializers.serialize(object.customerRank,
            specifiedType: const FullType(String)));
    }
    if (object.customerSince != null) {
      result
        ..add('customerSince')
        ..add(serializers.serialize(object.customerSince,
            specifiedType: const FullType(DateTime)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.internalId != null) {
      result
        ..add('internalId')
        ..add(serializers.serialize(object.internalId,
            specifiedType: const FullType(String)));
    }
    if (object.linkedAccountId != null) {
      result
        ..add('linkedAccountId')
        ..add(serializers.serialize(object.linkedAccountId,
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
    if (object.phoneVerified != null) {
      result
        ..add('phoneVerified')
        ..add(serializers.serialize(object.phoneVerified,
            specifiedType: const FullType(bool)));
    }
    if (object.systemId != null) {
      result
        ..add('systemId')
        ..add(serializers.serialize(object.systemId,
            specifiedType: const FullType(String)));
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
  CustomerDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'customerRank':
          result.customerRank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'customerSince':
          result.customerSince = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'internalId':
          result.internalId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'linkedAccountId':
          result.linkedAccountId = serializers.deserialize(value,
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
        case 'phoneVerified':
          result.phoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'systemId':
          result.systemId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$CustomerDTO extends CustomerDTO {
  @override
  final String customerRank;
  @override
  final DateTime customerSince;
  @override
  final String email;
  @override
  final int id;
  @override
  final String internalId;
  @override
  final int linkedAccountId;
  @override
  final String name;
  @override
  final int overallRatingId;
  @override
  final String phone;
  @override
  final bool phoneVerified;
  @override
  final String systemId;
  @override
  final int userId;
  @override
  final String userLogin;

  factory _$CustomerDTO([void Function(CustomerDTOBuilder) updates]) =>
      (new CustomerDTOBuilder()..update(updates)).build();

  _$CustomerDTO._(
      {this.customerRank,
      this.customerSince,
      this.email,
      this.id,
      this.internalId,
      this.linkedAccountId,
      this.name,
      this.overallRatingId,
      this.phone,
      this.phoneVerified,
      this.systemId,
      this.userId,
      this.userLogin})
      : super._();

  @override
  CustomerDTO rebuild(void Function(CustomerDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerDTOBuilder toBuilder() => new CustomerDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerDTO &&
        customerRank == other.customerRank &&
        customerSince == other.customerSince &&
        email == other.email &&
        id == other.id &&
        internalId == other.internalId &&
        linkedAccountId == other.linkedAccountId &&
        name == other.name &&
        overallRatingId == other.overallRatingId &&
        phone == other.phone &&
        phoneVerified == other.phoneVerified &&
        systemId == other.systemId &&
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
                                                    $jc(0,
                                                        customerRank.hashCode),
                                                    customerSince.hashCode),
                                                email.hashCode),
                                            id.hashCode),
                                        internalId.hashCode),
                                    linkedAccountId.hashCode),
                                name.hashCode),
                            overallRatingId.hashCode),
                        phone.hashCode),
                    phoneVerified.hashCode),
                systemId.hashCode),
            userId.hashCode),
        userLogin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomerDTO')
          ..add('customerRank', customerRank)
          ..add('customerSince', customerSince)
          ..add('email', email)
          ..add('id', id)
          ..add('internalId', internalId)
          ..add('linkedAccountId', linkedAccountId)
          ..add('name', name)
          ..add('overallRatingId', overallRatingId)
          ..add('phone', phone)
          ..add('phoneVerified', phoneVerified)
          ..add('systemId', systemId)
          ..add('userId', userId)
          ..add('userLogin', userLogin))
        .toString();
  }
}

class CustomerDTOBuilder implements Builder<CustomerDTO, CustomerDTOBuilder> {
  _$CustomerDTO _$v;

  String _customerRank;
  String get customerRank => _$this._customerRank;
  set customerRank(String customerRank) => _$this._customerRank = customerRank;

  DateTime _customerSince;
  DateTime get customerSince => _$this._customerSince;
  set customerSince(DateTime customerSince) =>
      _$this._customerSince = customerSince;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _internalId;
  String get internalId => _$this._internalId;
  set internalId(String internalId) => _$this._internalId = internalId;

  int _linkedAccountId;
  int get linkedAccountId => _$this._linkedAccountId;
  set linkedAccountId(int linkedAccountId) =>
      _$this._linkedAccountId = linkedAccountId;

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

  bool _phoneVerified;
  bool get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  String _systemId;
  String get systemId => _$this._systemId;
  set systemId(String systemId) => _$this._systemId = systemId;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _userLogin;
  String get userLogin => _$this._userLogin;
  set userLogin(String userLogin) => _$this._userLogin = userLogin;

  CustomerDTOBuilder();

  CustomerDTOBuilder get _$this {
    if (_$v != null) {
      _customerRank = _$v.customerRank;
      _customerSince = _$v.customerSince;
      _email = _$v.email;
      _id = _$v.id;
      _internalId = _$v.internalId;
      _linkedAccountId = _$v.linkedAccountId;
      _name = _$v.name;
      _overallRatingId = _$v.overallRatingId;
      _phone = _$v.phone;
      _phoneVerified = _$v.phoneVerified;
      _systemId = _$v.systemId;
      _userId = _$v.userId;
      _userLogin = _$v.userLogin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CustomerDTO;
  }

  @override
  void update(void Function(CustomerDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomerDTO build() {
    final _$result = _$v ??
        new _$CustomerDTO._(
            customerRank: customerRank,
            customerSince: customerSince,
            email: email,
            id: id,
            internalId: internalId,
            linkedAccountId: linkedAccountId,
            name: name,
            overallRatingId: overallRatingId,
            phone: phone,
            phoneVerified: phoneVerified,
            systemId: systemId,
            userId: userId,
            userLogin: userLogin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
