// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_center_executive.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CallCenterExecutive> _$callCenterExecutiveSerializer =
    new _$CallCenterExecutiveSerializer();

class _$CallCenterExecutiveSerializer
    implements StructuredSerializer<CallCenterExecutive> {
  @override
  final Iterable<Type> types = const [
    CallCenterExecutive,
    _$CallCenterExecutive
  ];
  @override
  final String wireName = 'CallCenterExecutive';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CallCenterExecutive object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.branch != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(object.branch,
            specifiedType: const FullType(Branch)));
    }
    if (object.callCenterExecutiveId != null) {
      result
        ..add('callCenterExecutiveId')
        ..add(serializers.serialize(object.callCenterExecutiveId,
            specifiedType: const FullType(String)));
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
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    return result;
  }

  @override
  CallCenterExecutive deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CallCenterExecutiveBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'branch':
          result.branch.replace(serializers.deserialize(value,
              specifiedType: const FullType(Branch)) as Branch);
          break;
        case 'callCenterExecutiveId':
          result.callCenterExecutiveId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$CallCenterExecutive extends CallCenterExecutive {
  @override
  final Branch branch;
  @override
  final String callCenterExecutiveId;
  @override
  final String email;
  @override
  final int id;
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
  final User user;

  factory _$CallCenterExecutive(
          [void Function(CallCenterExecutiveBuilder) updates]) =>
      (new CallCenterExecutiveBuilder()..update(updates)).build();

  _$CallCenterExecutive._(
      {this.branch,
      this.callCenterExecutiveId,
      this.email,
      this.id,
      this.name,
      this.overallRating,
      this.phone,
      this.phoneVerified,
      this.ratings,
      this.user})
      : super._();

  @override
  CallCenterExecutive rebuild(
          void Function(CallCenterExecutiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CallCenterExecutiveBuilder toBuilder() =>
      new CallCenterExecutiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CallCenterExecutive &&
        branch == other.branch &&
        callCenterExecutiveId == other.callCenterExecutiveId &&
        email == other.email &&
        id == other.id &&
        name == other.name &&
        overallRating == other.overallRating &&
        phone == other.phone &&
        phoneVerified == other.phoneVerified &&
        ratings == other.ratings &&
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
                                    $jc($jc(0, branch.hashCode),
                                        callCenterExecutiveId.hashCode),
                                    email.hashCode),
                                id.hashCode),
                            name.hashCode),
                        overallRating.hashCode),
                    phone.hashCode),
                phoneVerified.hashCode),
            ratings.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CallCenterExecutive')
          ..add('branch', branch)
          ..add('callCenterExecutiveId', callCenterExecutiveId)
          ..add('email', email)
          ..add('id', id)
          ..add('name', name)
          ..add('overallRating', overallRating)
          ..add('phone', phone)
          ..add('phoneVerified', phoneVerified)
          ..add('ratings', ratings)
          ..add('user', user))
        .toString();
  }
}

class CallCenterExecutiveBuilder
    implements Builder<CallCenterExecutive, CallCenterExecutiveBuilder> {
  _$CallCenterExecutive _$v;

  BranchBuilder _branch;
  BranchBuilder get branch => _$this._branch ??= new BranchBuilder();
  set branch(BranchBuilder branch) => _$this._branch = branch;

  String _callCenterExecutiveId;
  String get callCenterExecutiveId => _$this._callCenterExecutiveId;
  set callCenterExecutiveId(String callCenterExecutiveId) =>
      _$this._callCenterExecutiveId = callCenterExecutiveId;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

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

  bool _phoneVerified;
  bool get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  ListBuilder<Rating> _ratings;
  ListBuilder<Rating> get ratings =>
      _$this._ratings ??= new ListBuilder<Rating>();
  set ratings(ListBuilder<Rating> ratings) => _$this._ratings = ratings;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  CallCenterExecutiveBuilder();

  CallCenterExecutiveBuilder get _$this {
    if (_$v != null) {
      _branch = _$v.branch?.toBuilder();
      _callCenterExecutiveId = _$v.callCenterExecutiveId;
      _email = _$v.email;
      _id = _$v.id;
      _name = _$v.name;
      _overallRating = _$v.overallRating?.toBuilder();
      _phone = _$v.phone;
      _phoneVerified = _$v.phoneVerified;
      _ratings = _$v.ratings?.toBuilder();
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CallCenterExecutive other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CallCenterExecutive;
  }

  @override
  void update(void Function(CallCenterExecutiveBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CallCenterExecutive build() {
    _$CallCenterExecutive _$result;
    try {
      _$result = _$v ??
          new _$CallCenterExecutive._(
              branch: _branch?.build(),
              callCenterExecutiveId: callCenterExecutiveId,
              email: email,
              id: id,
              name: name,
              overallRating: _overallRating?.build(),
              phone: phone,
              phoneVerified: phoneVerified,
              ratings: _ratings?.build(),
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'branch';
        _branch?.build();

        _$failedField = 'overallRating';
        _overallRating?.build();

        _$failedField = 'ratings';
        _ratings?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CallCenterExecutive', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
