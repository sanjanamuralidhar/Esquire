// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Branch> _$branchSerializer = new _$BranchSerializer();

class _$BranchSerializer implements StructuredSerializer<Branch> {
  @override
  final Iterable<Type> types = const [Branch, _$Branch];
  @override
  final String wireName = 'Branch';

  @override
  Iterable<Object> serialize(Serializers serializers, Branch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(Address)));
    }
    if (object.alternatePhoneNumber != null) {
      result
        ..add('alternatePhoneNumber')
        ..add(serializers.serialize(object.alternatePhoneNumber,
            specifiedType: const FullType(String)));
    }
    if (object.branchLocation != null) {
      result
        ..add('branchLocation')
        ..add(serializers.serialize(object.branchLocation,
            specifiedType: const FullType(String)));
    }
    if (object.callCenterExecutives != null) {
      result
        ..add('callCenterExecutives')
        ..add(serializers.serialize(object.callCenterExecutives,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CallCenterExecutive)])));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.feedbacks != null) {
      result
        ..add('feedbacks')
        ..add(serializers.serialize(object.feedbacks,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Feedback)])));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(String)));
    }
    if (object.serviceSections != null) {
      result
        ..add('serviceSections')
        ..add(serializers.serialize(object.serviceSections,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ServiceSection)])));
    }
    return result;
  }

  @override
  Branch deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'alternatePhoneNumber':
          result.alternatePhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branchLocation':
          result.branchLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'callCenterExecutives':
          result.callCenterExecutives.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CallCenterExecutive)]))
              as BuiltList<Object>);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feedbacks':
          result.feedbacks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Feedback)]))
              as BuiltList<Object>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceSections':
          result.serviceSections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ServiceSection)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Branch extends Branch {
  @override
  final Address address;
  @override
  final String alternatePhoneNumber;
  @override
  final String branchLocation;
  @override
  final BuiltList<CallCenterExecutive> callCenterExecutives;
  @override
  final String email;
  @override
  final BuiltList<Feedback> feedbacks;
  @override
  final int id;
  @override
  final String phoneNumber;
  @override
  final BuiltList<ServiceSection> serviceSections;

  factory _$Branch([void Function(BranchBuilder) updates]) =>
      (new BranchBuilder()..update(updates)).build();

  _$Branch._(
      {this.address,
      this.alternatePhoneNumber,
      this.branchLocation,
      this.callCenterExecutives,
      this.email,
      this.feedbacks,
      this.id,
      this.phoneNumber,
      this.serviceSections})
      : super._();

  @override
  Branch rebuild(void Function(BranchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchBuilder toBuilder() => new BranchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Branch &&
        address == other.address &&
        alternatePhoneNumber == other.alternatePhoneNumber &&
        branchLocation == other.branchLocation &&
        callCenterExecutives == other.callCenterExecutives &&
        email == other.email &&
        feedbacks == other.feedbacks &&
        id == other.id &&
        phoneNumber == other.phoneNumber &&
        serviceSections == other.serviceSections;
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
                                $jc($jc(0, address.hashCode),
                                    alternatePhoneNumber.hashCode),
                                branchLocation.hashCode),
                            callCenterExecutives.hashCode),
                        email.hashCode),
                    feedbacks.hashCode),
                id.hashCode),
            phoneNumber.hashCode),
        serviceSections.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Branch')
          ..add('address', address)
          ..add('alternatePhoneNumber', alternatePhoneNumber)
          ..add('branchLocation', branchLocation)
          ..add('callCenterExecutives', callCenterExecutives)
          ..add('email', email)
          ..add('feedbacks', feedbacks)
          ..add('id', id)
          ..add('phoneNumber', phoneNumber)
          ..add('serviceSections', serviceSections))
        .toString();
  }
}

class BranchBuilder implements Builder<Branch, BranchBuilder> {
  _$Branch _$v;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  String _alternatePhoneNumber;
  String get alternatePhoneNumber => _$this._alternatePhoneNumber;
  set alternatePhoneNumber(String alternatePhoneNumber) =>
      _$this._alternatePhoneNumber = alternatePhoneNumber;

  String _branchLocation;
  String get branchLocation => _$this._branchLocation;
  set branchLocation(String branchLocation) =>
      _$this._branchLocation = branchLocation;

  ListBuilder<CallCenterExecutive> _callCenterExecutives;
  ListBuilder<CallCenterExecutive> get callCenterExecutives =>
      _$this._callCenterExecutives ??= new ListBuilder<CallCenterExecutive>();
  set callCenterExecutives(
          ListBuilder<CallCenterExecutive> callCenterExecutives) =>
      _$this._callCenterExecutives = callCenterExecutives;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  ListBuilder<Feedback> _feedbacks;
  ListBuilder<Feedback> get feedbacks =>
      _$this._feedbacks ??= new ListBuilder<Feedback>();
  set feedbacks(ListBuilder<Feedback> feedbacks) =>
      _$this._feedbacks = feedbacks;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  ListBuilder<ServiceSection> _serviceSections;
  ListBuilder<ServiceSection> get serviceSections =>
      _$this._serviceSections ??= new ListBuilder<ServiceSection>();
  set serviceSections(ListBuilder<ServiceSection> serviceSections) =>
      _$this._serviceSections = serviceSections;

  BranchBuilder();

  BranchBuilder get _$this {
    if (_$v != null) {
      _address = _$v.address?.toBuilder();
      _alternatePhoneNumber = _$v.alternatePhoneNumber;
      _branchLocation = _$v.branchLocation;
      _callCenterExecutives = _$v.callCenterExecutives?.toBuilder();
      _email = _$v.email;
      _feedbacks = _$v.feedbacks?.toBuilder();
      _id = _$v.id;
      _phoneNumber = _$v.phoneNumber;
      _serviceSections = _$v.serviceSections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Branch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Branch;
  }

  @override
  void update(void Function(BranchBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Branch build() {
    _$Branch _$result;
    try {
      _$result = _$v ??
          new _$Branch._(
              address: _address?.build(),
              alternatePhoneNumber: alternatePhoneNumber,
              branchLocation: branchLocation,
              callCenterExecutives: _callCenterExecutives?.build(),
              email: email,
              feedbacks: _feedbacks?.build(),
              id: id,
              phoneNumber: phoneNumber,
              serviceSections: _serviceSections?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();

        _$failedField = 'callCenterExecutives';
        _callCenterExecutives?.build();

        _$failedField = 'feedbacks';
        _feedbacks?.build();

        _$failedField = 'serviceSections';
        _serviceSections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Branch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
