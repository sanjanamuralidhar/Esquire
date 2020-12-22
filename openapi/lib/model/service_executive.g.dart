// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_executive.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceExecutive> _$serviceExecutiveSerializer =
    new _$ServiceExecutiveSerializer();

class _$ServiceExecutiveSerializer
    implements StructuredSerializer<ServiceExecutive> {
  @override
  final Iterable<Type> types = const [ServiceExecutive, _$ServiceExecutive];
  @override
  final String wireName = 'ServiceExecutive';

  @override
  Iterable<Object> serialize(Serializers serializers, ServiceExecutive object,
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
    if (object.phoneNumbersVerified != null) {
      result
        ..add('phoneNumbersVerified')
        ..add(serializers.serialize(object.phoneNumbersVerified,
            specifiedType: const FullType(bool)));
    }
    if (object.ratings != null) {
      result
        ..add('ratings')
        ..add(serializers.serialize(object.ratings,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Rating)])));
    }
    if (object.serviceEngineerId != null) {
      result
        ..add('serviceEngineerId')
        ..add(serializers.serialize(object.serviceEngineerId,
            specifiedType: const FullType(String)));
    }
    if (object.serviceSection != null) {
      result
        ..add('serviceSection')
        ..add(serializers.serialize(object.serviceSection,
            specifiedType: const FullType(ServiceSection)));
    }
    if (object.ticketHistories != null) {
      result
        ..add('ticketHistories')
        ..add(serializers.serialize(object.ticketHistories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TicketHistory)])));
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
  ServiceExecutive deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceExecutiveBuilder();

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
        case 'overallRating':
          result.overallRating.replace(serializers.deserialize(value,
              specifiedType: const FullType(OverallRating)) as OverallRating);
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumbersVerified':
          result.phoneNumbersVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ratings':
          result.ratings.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Rating)]))
              as BuiltList<Object>);
          break;
        case 'serviceEngineerId':
          result.serviceEngineerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceSection':
          result.serviceSection.replace(serializers.deserialize(value,
              specifiedType: const FullType(ServiceSection)) as ServiceSection);
          break;
        case 'ticketHistories':
          result.ticketHistories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TicketHistory)]))
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

class _$ServiceExecutive extends ServiceExecutive {
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
  final OverallRating overallRating;
  @override
  final String phone;
  @override
  final bool phoneNumbersVerified;
  @override
  final BuiltList<Rating> ratings;
  @override
  final String serviceEngineerId;
  @override
  final ServiceSection serviceSection;
  @override
  final BuiltList<TicketHistory> ticketHistories;
  @override
  final User user;

  factory _$ServiceExecutive(
          [void Function(ServiceExecutiveBuilder) updates]) =>
      (new ServiceExecutiveBuilder()..update(updates)).build();

  _$ServiceExecutive._(
      {this.active,
      this.alternatePhoneNumberOne,
      this.alternatePhoneNumberTwo,
      this.email,
      this.geoLocation,
      this.id,
      this.name,
      this.overallRating,
      this.phone,
      this.phoneNumbersVerified,
      this.ratings,
      this.serviceEngineerId,
      this.serviceSection,
      this.ticketHistories,
      this.user})
      : super._();

  @override
  ServiceExecutive rebuild(void Function(ServiceExecutiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceExecutiveBuilder toBuilder() =>
      new ServiceExecutiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceExecutive &&
        active == other.active &&
        alternatePhoneNumberOne == other.alternatePhoneNumberOne &&
        alternatePhoneNumberTwo == other.alternatePhoneNumberTwo &&
        email == other.email &&
        geoLocation == other.geoLocation &&
        id == other.id &&
        name == other.name &&
        overallRating == other.overallRating &&
        phone == other.phone &&
        phoneNumbersVerified == other.phoneNumbersVerified &&
        ratings == other.ratings &&
        serviceEngineerId == other.serviceEngineerId &&
        serviceSection == other.serviceSection &&
        ticketHistories == other.ticketHistories &&
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
                                                                active
                                                                    .hashCode),
                                                            alternatePhoneNumberOne
                                                                .hashCode),
                                                        alternatePhoneNumberTwo
                                                            .hashCode),
                                                    email.hashCode),
                                                geoLocation.hashCode),
                                            id.hashCode),
                                        name.hashCode),
                                    overallRating.hashCode),
                                phone.hashCode),
                            phoneNumbersVerified.hashCode),
                        ratings.hashCode),
                    serviceEngineerId.hashCode),
                serviceSection.hashCode),
            ticketHistories.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServiceExecutive')
          ..add('active', active)
          ..add('alternatePhoneNumberOne', alternatePhoneNumberOne)
          ..add('alternatePhoneNumberTwo', alternatePhoneNumberTwo)
          ..add('email', email)
          ..add('geoLocation', geoLocation)
          ..add('id', id)
          ..add('name', name)
          ..add('overallRating', overallRating)
          ..add('phone', phone)
          ..add('phoneNumbersVerified', phoneNumbersVerified)
          ..add('ratings', ratings)
          ..add('serviceEngineerId', serviceEngineerId)
          ..add('serviceSection', serviceSection)
          ..add('ticketHistories', ticketHistories)
          ..add('user', user))
        .toString();
  }
}

class ServiceExecutiveBuilder
    implements Builder<ServiceExecutive, ServiceExecutiveBuilder> {
  _$ServiceExecutive _$v;

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

  OverallRatingBuilder _overallRating;
  OverallRatingBuilder get overallRating =>
      _$this._overallRating ??= new OverallRatingBuilder();
  set overallRating(OverallRatingBuilder overallRating) =>
      _$this._overallRating = overallRating;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  bool _phoneNumbersVerified;
  bool get phoneNumbersVerified => _$this._phoneNumbersVerified;
  set phoneNumbersVerified(bool phoneNumbersVerified) =>
      _$this._phoneNumbersVerified = phoneNumbersVerified;

  ListBuilder<Rating> _ratings;
  ListBuilder<Rating> get ratings =>
      _$this._ratings ??= new ListBuilder<Rating>();
  set ratings(ListBuilder<Rating> ratings) => _$this._ratings = ratings;

  String _serviceEngineerId;
  String get serviceEngineerId => _$this._serviceEngineerId;
  set serviceEngineerId(String serviceEngineerId) =>
      _$this._serviceEngineerId = serviceEngineerId;

  ServiceSectionBuilder _serviceSection;
  ServiceSectionBuilder get serviceSection =>
      _$this._serviceSection ??= new ServiceSectionBuilder();
  set serviceSection(ServiceSectionBuilder serviceSection) =>
      _$this._serviceSection = serviceSection;

  ListBuilder<TicketHistory> _ticketHistories;
  ListBuilder<TicketHistory> get ticketHistories =>
      _$this._ticketHistories ??= new ListBuilder<TicketHistory>();
  set ticketHistories(ListBuilder<TicketHistory> ticketHistories) =>
      _$this._ticketHistories = ticketHistories;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  ServiceExecutiveBuilder();

  ServiceExecutiveBuilder get _$this {
    if (_$v != null) {
      _active = _$v.active;
      _alternatePhoneNumberOne = _$v.alternatePhoneNumberOne;
      _alternatePhoneNumberTwo = _$v.alternatePhoneNumberTwo;
      _email = _$v.email;
      _geoLocation = _$v.geoLocation;
      _id = _$v.id;
      _name = _$v.name;
      _overallRating = _$v.overallRating?.toBuilder();
      _phone = _$v.phone;
      _phoneNumbersVerified = _$v.phoneNumbersVerified;
      _ratings = _$v.ratings?.toBuilder();
      _serviceEngineerId = _$v.serviceEngineerId;
      _serviceSection = _$v.serviceSection?.toBuilder();
      _ticketHistories = _$v.ticketHistories?.toBuilder();
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceExecutive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ServiceExecutive;
  }

  @override
  void update(void Function(ServiceExecutiveBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServiceExecutive build() {
    _$ServiceExecutive _$result;
    try {
      _$result = _$v ??
          new _$ServiceExecutive._(
              active: active,
              alternatePhoneNumberOne: alternatePhoneNumberOne,
              alternatePhoneNumberTwo: alternatePhoneNumberTwo,
              email: email,
              geoLocation: geoLocation,
              id: id,
              name: name,
              overallRating: _overallRating?.build(),
              phone: phone,
              phoneNumbersVerified: phoneNumbersVerified,
              ratings: _ratings?.build(),
              serviceEngineerId: serviceEngineerId,
              serviceSection: _serviceSection?.build(),
              ticketHistories: _ticketHistories?.build(),
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'overallRating';
        _overallRating?.build();

        _$failedField = 'ratings';
        _ratings?.build();

        _$failedField = 'serviceSection';
        _serviceSection?.build();
        _$failedField = 'ticketHistories';
        _ticketHistories?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ServiceExecutive', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
