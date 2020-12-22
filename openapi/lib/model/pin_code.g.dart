// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PinCode> _$pinCodeSerializer = new _$PinCodeSerializer();

class _$PinCodeSerializer implements StructuredSerializer<PinCode> {
  @override
  final Iterable<Type> types = const [PinCode, _$PinCode];
  @override
  final String wireName = 'PinCode';

  @override
  Iterable<Object> serialize(Serializers serializers, PinCode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.pinCode != null) {
      result
        ..add('pinCode')
        ..add(serializers.serialize(object.pinCode,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PinCode deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PinCodeBuilder();

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
        case 'pinCode':
          result.pinCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PinCode extends PinCode {
  @override
  final int id;
  @override
  final String pinCode;

  factory _$PinCode([void Function(PinCodeBuilder) updates]) =>
      (new PinCodeBuilder()..update(updates)).build();

  _$PinCode._({this.id, this.pinCode}) : super._();

  @override
  PinCode rebuild(void Function(PinCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PinCodeBuilder toBuilder() => new PinCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PinCode && id == other.id && pinCode == other.pinCode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), pinCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PinCode')
          ..add('id', id)
          ..add('pinCode', pinCode))
        .toString();
  }
}

class PinCodeBuilder implements Builder<PinCode, PinCodeBuilder> {
  _$PinCode _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _pinCode;
  String get pinCode => _$this._pinCode;
  set pinCode(String pinCode) => _$this._pinCode = pinCode;

  PinCodeBuilder();

  PinCodeBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _pinCode = _$v.pinCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PinCode other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PinCode;
  }

  @override
  void update(void Function(PinCodeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PinCode build() {
    final _$result = _$v ?? new _$PinCode._(id: id, pinCode: pinCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
