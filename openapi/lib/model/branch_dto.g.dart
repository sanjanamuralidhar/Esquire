// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchDTO> _$branchDTOSerializer = new _$BranchDTOSerializer();

class _$BranchDTOSerializer implements StructuredSerializer<BranchDTO> {
  @override
  final Iterable<Type> types = const [BranchDTO, _$BranchDTO];
  @override
  final String wireName = 'BranchDTO';

  @override
  Iterable<Object> serialize(Serializers serializers, BranchDTO object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressId != null) {
      result
        ..add('addressId')
        ..add(serializers.serialize(object.addressId,
            specifiedType: const FullType(int)));
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
    if (object.phoneNumber != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BranchDTO deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchDTOBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressId':
          result.addressId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'alternatePhoneNumber':
          result.alternatePhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branchLocation':
          result.branchLocation = serializers.deserialize(value,
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
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BranchDTO extends BranchDTO {
  @override
  final int addressId;
  @override
  final String alternatePhoneNumber;
  @override
  final String branchLocation;
  @override
  final String email;
  @override
  final int id;
  @override
  final String phoneNumber;

  factory _$BranchDTO([void Function(BranchDTOBuilder) updates]) =>
      (new BranchDTOBuilder()..update(updates)).build();

  _$BranchDTO._(
      {this.addressId,
      this.alternatePhoneNumber,
      this.branchLocation,
      this.email,
      this.id,
      this.phoneNumber})
      : super._();

  @override
  BranchDTO rebuild(void Function(BranchDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchDTOBuilder toBuilder() => new BranchDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchDTO &&
        addressId == other.addressId &&
        alternatePhoneNumber == other.alternatePhoneNumber &&
        branchLocation == other.branchLocation &&
        email == other.email &&
        id == other.id &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, addressId.hashCode),
                        alternatePhoneNumber.hashCode),
                    branchLocation.hashCode),
                email.hashCode),
            id.hashCode),
        phoneNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchDTO')
          ..add('addressId', addressId)
          ..add('alternatePhoneNumber', alternatePhoneNumber)
          ..add('branchLocation', branchLocation)
          ..add('email', email)
          ..add('id', id)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class BranchDTOBuilder implements Builder<BranchDTO, BranchDTOBuilder> {
  _$BranchDTO _$v;

  int _addressId;
  int get addressId => _$this._addressId;
  set addressId(int addressId) => _$this._addressId = addressId;

  String _alternatePhoneNumber;
  String get alternatePhoneNumber => _$this._alternatePhoneNumber;
  set alternatePhoneNumber(String alternatePhoneNumber) =>
      _$this._alternatePhoneNumber = alternatePhoneNumber;

  String _branchLocation;
  String get branchLocation => _$this._branchLocation;
  set branchLocation(String branchLocation) =>
      _$this._branchLocation = branchLocation;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  BranchDTOBuilder();

  BranchDTOBuilder get _$this {
    if (_$v != null) {
      _addressId = _$v.addressId;
      _alternatePhoneNumber = _$v.alternatePhoneNumber;
      _branchLocation = _$v.branchLocation;
      _email = _$v.email;
      _id = _$v.id;
      _phoneNumber = _$v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchDTO other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchDTO;
  }

  @override
  void update(void Function(BranchDTOBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchDTO build() {
    final _$result = _$v ??
        new _$BranchDTO._(
            addressId: addressId,
            alternatePhoneNumber: alternatePhoneNumber,
            branchLocation: branchLocation,
            email: email,
            id: id,
            phoneNumber: phoneNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
