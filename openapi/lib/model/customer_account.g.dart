// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomerAccount> _$customerAccountSerializer =
    new _$CustomerAccountSerializer();

class _$CustomerAccountSerializer
    implements StructuredSerializer<CustomerAccount> {
  @override
  final Iterable<Type> types = const [CustomerAccount, _$CustomerAccount];
  @override
  final String wireName = 'CustomerAccount';

  @override
  Iterable<Object> serialize(Serializers serializers, CustomerAccount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.officeAddress != null) {
      result
        ..add('officeAddress')
        ..add(serializers.serialize(object.officeAddress,
            specifiedType: const FullType(Address)));
    }
    return result;
  }

  @override
  CustomerAccount deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerAccountBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'officeAddress':
          result.officeAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
      }
    }

    return result.build();
  }
}

class _$CustomerAccount extends CustomerAccount {
  @override
  final int id;
  @override
  final String name;
  @override
  final Address officeAddress;

  factory _$CustomerAccount([void Function(CustomerAccountBuilder) updates]) =>
      (new CustomerAccountBuilder()..update(updates)).build();

  _$CustomerAccount._({this.id, this.name, this.officeAddress}) : super._();

  @override
  CustomerAccount rebuild(void Function(CustomerAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerAccountBuilder toBuilder() =>
      new CustomerAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerAccount &&
        id == other.id &&
        name == other.name &&
        officeAddress == other.officeAddress;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), officeAddress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomerAccount')
          ..add('id', id)
          ..add('name', name)
          ..add('officeAddress', officeAddress))
        .toString();
  }
}

class CustomerAccountBuilder
    implements Builder<CustomerAccount, CustomerAccountBuilder> {
  _$CustomerAccount _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  AddressBuilder _officeAddress;
  AddressBuilder get officeAddress =>
      _$this._officeAddress ??= new AddressBuilder();
  set officeAddress(AddressBuilder officeAddress) =>
      _$this._officeAddress = officeAddress;

  CustomerAccountBuilder();

  CustomerAccountBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _officeAddress = _$v.officeAddress?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerAccount other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CustomerAccount;
  }

  @override
  void update(void Function(CustomerAccountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomerAccount build() {
    _$CustomerAccount _$result;
    try {
      _$result = _$v ??
          new _$CustomerAccount._(
              id: id, name: name, officeAddress: _officeAddress?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'officeAddress';
        _officeAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CustomerAccount', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
