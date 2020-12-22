// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Customer> _$customerSerializer = new _$CustomerSerializer();

class _$CustomerSerializer implements StructuredSerializer<Customer> {
  @override
  final Iterable<Type> types = const [Customer, _$Customer];
  @override
  final String wireName = 'Customer';

  @override
  Iterable<Object> serialize(Serializers serializers, Customer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addresses != null) {
      result
        ..add('addresses')
        ..add(serializers.serialize(object.addresses,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Address)])));
    }
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
    if (object.linkedAccount != null) {
      result
        ..add('linkedAccount')
        ..add(serializers.serialize(object.linkedAccount,
            specifiedType: const FullType(CustomerAccount)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.overallRating != null) {
      result
        ..add('overallRating')
        ..add(serializers.serialize(object.overallRating,
            specifiedType: const FullType(OverallRating)));
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
    if (object.ratings != null) {
      result
        ..add('ratings')
        ..add(serializers.serialize(object.ratings,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Rating)])));
    }
    if (object.systemId != null) {
      result
        ..add('systemId')
        ..add(serializers.serialize(object.systemId,
            specifiedType: const FullType(String)));
    }
    if (object.tickets != null) {
      result
        ..add('tickets')
        ..add(serializers.serialize(object.tickets,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Ticket)])));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    return result;
  }

  @override
  Customer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Address)]))
              as BuiltList<Object>);
          break;
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
        case 'linkedAccount':
          result.linkedAccount.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CustomerAccount))
              as CustomerAccount);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overallRating':
          result.overallRating.replace(serializers.deserialize(value,
              specifiedType: const FullType(OverallRating)) as OverallRating);
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneVerified':
          result.phoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ratings':
          result.ratings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Rating)]))
              as BuiltList<Object>);
          break;
        case 'systemId':
          result.systemId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tickets':
          result.tickets.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Ticket)]))
              as BuiltList<Object>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$Customer extends Customer {
  @override
  final BuiltList<Address> addresses;
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
  final CustomerAccount linkedAccount;
  @override
  final String name;
  @override
  final OverallRating overallRating;
  @override
  final String phone;
  @override
  final bool phoneVerified;
  @override
  final BuiltList<Rating> ratings;
  @override
  final String systemId;
  @override
  final BuiltList<Ticket> tickets;
  @override
  final User user;

  factory _$Customer([void Function(CustomerBuilder) updates]) =>
      (new CustomerBuilder()..update(updates)).build();

  _$Customer._(
      {this.addresses,
      this.customerRank,
      this.customerSince,
      this.email,
      this.id,
      this.internalId,
      this.linkedAccount,
      this.name,
      this.overallRating,
      this.phone,
      this.phoneVerified,
      this.ratings,
      this.systemId,
      this.tickets,
      this.user})
      : super._();

  @override
  Customer rebuild(void Function(CustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBuilder toBuilder() => new CustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
        addresses == other.addresses &&
        customerRank == other.customerRank &&
        customerSince == other.customerSince &&
        email == other.email &&
        id == other.id &&
        internalId == other.internalId &&
        linkedAccount == other.linkedAccount &&
        name == other.name &&
        overallRating == other.overallRating &&
        phone == other.phone &&
        phoneVerified == other.phoneVerified &&
        ratings == other.ratings &&
        systemId == other.systemId &&
        tickets == other.tickets &&
        user == other.user;
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
                                                                addresses
                                                                    .hashCode),
                                                            customerRank
                                                                .hashCode),
                                                        customerSince.hashCode),
                                                    email.hashCode),
                                                id.hashCode),
                                            internalId.hashCode),
                                        linkedAccount.hashCode),
                                    name.hashCode),
                                overallRating.hashCode),
                            phone.hashCode),
                        phoneVerified.hashCode),
                    ratings.hashCode),
                systemId.hashCode),
            tickets.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Customer')
          ..add('addresses', addresses)
          ..add('customerRank', customerRank)
          ..add('customerSince', customerSince)
          ..add('email', email)
          ..add('id', id)
          ..add('internalId', internalId)
          ..add('linkedAccount', linkedAccount)
          ..add('name', name)
          ..add('overallRating', overallRating)
          ..add('phone', phone)
          ..add('phoneVerified', phoneVerified)
          ..add('ratings', ratings)
          ..add('systemId', systemId)
          ..add('tickets', tickets)
          ..add('user', user))
        .toString();
  }
}

class CustomerBuilder implements Builder<Customer, CustomerBuilder> {
  _$Customer _$v;

  ListBuilder<Address> _addresses;
  ListBuilder<Address> get addresses =>
      _$this._addresses ??= new ListBuilder<Address>();
  set addresses(ListBuilder<Address> addresses) =>
      _$this._addresses = addresses;

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

  CustomerAccountBuilder _linkedAccount;
  CustomerAccountBuilder get linkedAccount =>
      _$this._linkedAccount ??= new CustomerAccountBuilder();
  set linkedAccount(CustomerAccountBuilder linkedAccount) =>
      _$this._linkedAccount = linkedAccount;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  OverallRatingBuilder _overallRating;
  OverallRatingBuilder get overallRating =>
      _$this._overallRating ??= new OverallRatingBuilder();
  set overallRating(OverallRatingBuilder overallRating) =>
      _$this._overallRating = overallRating;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  bool _phoneVerified;
  bool get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  ListBuilder<Rating> _ratings;
  ListBuilder<Rating> get ratings =>
      _$this._ratings ??= new ListBuilder<Rating>();
  set ratings(ListBuilder<Rating> ratings) => _$this._ratings = ratings;

  String _systemId;
  String get systemId => _$this._systemId;
  set systemId(String systemId) => _$this._systemId = systemId;

  ListBuilder<Ticket> _tickets;
  ListBuilder<Ticket> get tickets =>
      _$this._tickets ??= new ListBuilder<Ticket>();
  set tickets(ListBuilder<Ticket> tickets) => _$this._tickets = tickets;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  CustomerBuilder();

  CustomerBuilder get _$this {
    if (_$v != null) {
      _addresses = _$v.addresses?.toBuilder();
      _customerRank = _$v.customerRank;
      _customerSince = _$v.customerSince;
      _email = _$v.email;
      _id = _$v.id;
      _internalId = _$v.internalId;
      _linkedAccount = _$v.linkedAccount?.toBuilder();
      _name = _$v.name;
      _overallRating = _$v.overallRating?.toBuilder();
      _phone = _$v.phone;
      _phoneVerified = _$v.phoneVerified;
      _ratings = _$v.ratings?.toBuilder();
      _systemId = _$v.systemId;
      _tickets = _$v.tickets?.toBuilder();
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Customer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Customer;
  }

  @override
  void update(void Function(CustomerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Customer build() {
    _$Customer _$result;
    try {
      _$result = _$v ??
          new _$Customer._(
              addresses: _addresses?.build(),
              customerRank: customerRank,
              customerSince: customerSince,
              email: email,
              id: id,
              internalId: internalId,
              linkedAccount: _linkedAccount?.build(),
              name: name,
              overallRating: _overallRating?.build(),
              phone: phone,
              phoneVerified: phoneVerified,
              ratings: _ratings?.build(),
              systemId: systemId,
              tickets: _tickets?.build(),
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addresses';
        _addresses?.build();

        _$failedField = 'linkedAccount';
        _linkedAccount?.build();

        _$failedField = 'overallRating';
        _overallRating?.build();

        _$failedField = 'ratings';
        _ratings?.build();

        _$failedField = 'tickets';
        _tickets?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Customer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
