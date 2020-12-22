// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_contact.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomerContact> _$customerContactSerializer =
    new _$CustomerContactSerializer();

class _$CustomerContactSerializer
    implements StructuredSerializer<CustomerContact> {
  @override
  final Iterable<Type> types = const [CustomerContact, _$CustomerContact];
  @override
  final String wireName = 'CustomerContact';

  @override
  Iterable<Object> serialize(Serializers serializers, CustomerContact object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.addressList != null) {
      result
        ..add('addressList')
        ..add(serializers.serialize(object.addressList,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AddressDTO)])));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CustomerContact deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerContactBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'addressList':
          result.addressList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AddressDTO)]))
              as BuiltList<Object>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CustomerContact extends CustomerContact {
  @override
  final BuiltList<AddressDTO> addressList;
  @override
  final String name;
  @override
  final String phone;

  factory _$CustomerContact([void Function(CustomerContactBuilder) updates]) =>
      (new CustomerContactBuilder()..update(updates)).build();

  _$CustomerContact._({this.addressList, this.name, this.phone}) : super._();

  @override
  CustomerContact rebuild(void Function(CustomerContactBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerContactBuilder toBuilder() =>
      new CustomerContactBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerContact &&
        addressList == other.addressList &&
        name == other.name &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, addressList.hashCode), name.hashCode), phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomerContact')
          ..add('addressList', addressList)
          ..add('name', name)
          ..add('phone', phone))
        .toString();
  }
}

class CustomerContactBuilder
    implements Builder<CustomerContact, CustomerContactBuilder> {
  _$CustomerContact _$v;

  ListBuilder<AddressDTO> _addressList;
  ListBuilder<AddressDTO> get addressList =>
      _$this._addressList ??= new ListBuilder<AddressDTO>();
  set addressList(ListBuilder<AddressDTO> addressList) =>
      _$this._addressList = addressList;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  CustomerContactBuilder();

  CustomerContactBuilder get _$this {
    if (_$v != null) {
      _addressList = _$v.addressList?.toBuilder();
      _name = _$v.name;
      _phone = _$v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerContact other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CustomerContact;
  }

  @override
  void update(void Function(CustomerContactBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomerContact build() {
    _$CustomerContact _$result;
    try {
      _$result = _$v ??
          new _$CustomerContact._(
              addressList: _addressList?.build(), name: name, phone: phone);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addressList';
        _addressList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CustomerContact', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
